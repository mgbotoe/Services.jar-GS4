.class final Lcom/android/server/power/DisplayPowerController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;,
        Lcom/android/server/power/DisplayPowerController$Callbacks;
    }
.end annotation


# static fields
.field private static final BRIGHTENING_LIGHT_DEBOUNCE:J = 0xbb8L

.field private static final BRIGHTENING_LIGHT_HYSTERESIS:F = 0.1f

.field private static final BRIGHTNESS_RAMP_RATE_FAST:I = 0x7d0

.field private static final BRIGHTNESS_RAMP_RATE_SLOW:I = 0x1f4

.field private static final DARKENING_LIGHT_DEBOUNCE:J = 0xbb8L

.field private static final DARKENING_LIGHT_HYSTERESIS:F = 0.2f

.field private static DEBUG:Z = false

.field private static final DEBUG_PRETEND_LIGHT_SENSOR_ABSENT:Z = false

.field private static final DEBUG_PRETEND_PROXIMITY_SENSOR_ABSENT:Z = false

.field private static final LIGHT_SENSOR_RATE_MILLIS:I = 0xc8

.field private static final LONG_TERM_AVERAGE_LIGHT_TIME_CONSTANT:J = 0x1388L

.field private static final MSG_LIGHT_SENSOR_DEBOUNCED:I = 0x3

.field private static final MSG_PRINT_LAST_LIGHT_SENSOR_EVENT:I = 0x4

.field private static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x2

.field private static final MSG_UPDATE_POWER_STATE:I = 0x1

.field static final POWERSAVEMODE_BRIGHTNESS_OFFSET:I = 0x14

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0x32

.field private static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT_MAX_GAMMA:F = 3.0f

.field private static final SCREEN_DIM_MINIMUM_REDUCTION:I = 0xa

.field private static final SHORT_TERM_AVERAGE_LIGHT_TIME_CONSTANT:J = 0x3e8L

.field private static final SYNTHETIC_LIGHT_SENSOR_RATE_MILLIS:I = 0x190

.field private static final TAG:Ljava/lang/String; = "DisplayPowerController"

.field private static final TWILIGHT_ADJUSTMENT_MAX_GAMMA:F = 1.5f

.field private static final TWILIGHT_ADJUSTMENT_TIME:J = 0x6ddd00L

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final USE_ELECTRON_BEAM_ON_ANIMATION:Z

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

.field private static final USE_TWILIGHT_ADJUSTMENT:Z


# instance fields
.field private final TAG_DAB:Ljava/lang/String;

.field private final TAG_SENSOR:Ljava/lang/String;

.field private lastLightSensorEventTime:J

.field private lastLightSensorValue:F

.field private lastRawBrightnessValue:F

.field private mAmbientLux:F

.field private mAmbientLuxValid:Z

.field private mAutoBrightnessEnabled:Z

.field private mBrightnessLevels:[I

.field private mBrightnessLevelsForEbookOnly:[I

.field private mBrightnessValueSlope:[D

.field private mBrightnessValueSlopeForEbookOnly:[D

.field private mBrightnessValues:[I

.field private mBrightnessValuesForEbookOnly:[I

.field private mButtonAutoBrightnessEnabled:Z

.field private mButtonBacklightValues:[I

.field private mButtonLastValue:I

.field private final mButtonLedBrightness:I

.field private mButtonLedHandler:Landroid/os/Handler;

.field private mButtonLedState:Z

.field private final mButtonLedUpdateRunnable:Ljava/lang/Runnable;

.field private mButtonLight:Lcom/android/server/LightsService$Light;

.field private mCablRequest:Lcom/android/server/power/CABLControl;

.field private mCallbackHandler:Landroid/os/Handler;

.field private final mCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

.field private final mCleanListener:Ljava/lang/Runnable;

.field private mDebounceLuxDirection:I

.field private mDebounceLuxTime:J

.field private final mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

.field private final mDisplayManager:Lcom/android/server/display/DisplayManagerService;

.field private mDisplayReadyLocked:Z

.field private mDynamicAutoBrightnessEnabled:Z

.field private mElectronBeamFadesConfig:Z

.field private final mEnablePrintDynamicAutoBrightnessSpecTable:Z

.field private final mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

.field private mHighHysteresis:F

.field private mHighHysteresisLevels:[I

.field private mHighHysteresisLevelsForEbookOnly:[I

.field private mHighHysteresisSlope:[D

.field private mHighHysteresisSlopeForEbookOnly:[D

.field private mHighHysteresisValues:[I

.field private mHighHysteresisValuesForEbookOnly:[I

.field private mIsEnabledTcon:Z

.field private mIsLockZone:Z

.field private mIsPrintedDynamicAutoBrightnessSpecTable:Z

.field private mIsTablet:Z

.field private mLastHBM:Z

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private mLastScreenAutoBrightnessGamma:F

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightSensorWarmUpTimeConfig:I

.field private final mLights:Lcom/android/server/LightsService;

.field private final mLock:Ljava/lang/Object;

.field private mLowHysteresis:F

.field private mLowHysteresisLevels:[I

.field private mLowHysteresisLevelsForEbookOnly:[I

.field private mLowHysteresisSlope:[D

.field private mLowHysteresisSlopeForEbookOnly:[D

.field private mLowHysteresisValues:[I

.field private mLowHysteresisValuesForEbookOnly:[I

.field private mLowLimitAtHighestAutoBrightnessLevel:I

.field private mMinimumBrightnessStepValue:I

.field private mMinimumExpressiveBrightnessValues:[I

.field private final mNotifier:Lcom/android/server/power/Notifier;

.field private final mOnProximityNegativeRunnable:Ljava/lang/Runnable;

.field private final mOnProximityPositiveRunnable:Ljava/lang/Runnable;

.field private final mOnStateChangedRunnable:Ljava/lang/Runnable;

.field private mPendingProximity:I

.field private mPendingProximityDebounceTime:J

.field private mPendingRequestChangedLocked:Z

.field private mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

.field private mPendingScreenOnEvenThoughProximityPositiveLocked:Z

.field private mPendingUpdatePowerStateLocked:Z

.field private mPendingWaitForNegativeProximityLocked:Z

.field private mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

.field private mPowerState:Lcom/android/server/power/DisplayPowerState;

.field private mPrevLuxLevel:I

.field private mPrevLuxRange:I

.field private mProximity:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private mRecentLightSamples:I

.field private mRecentLongTermAverageLux:F

.field private mRecentShortTermAverageLux:F

.field private mSECAverageLux:F

.field private mScreenAutoBrightness:I

.field private mScreenAutoBrightnessSpline:Landroid/util/Spline;

.field private final mScreenBrightnessDimConfig:I

.field private mScreenBrightnessOnCover:I

.field private mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/power/RampAnimator",
            "<",
            "Lcom/android/server/power/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private mScreenOffBecauseOfProximity:Z

.field private mScreenOnBlockStartRealTime:J

.field private mScreenOnEvenThoughProximityPositive:Z

.field private mScreenOnWasBlocked:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mTiltAngle:F

.field private final mTiltListener:Landroid/hardware/SensorEventListener;

.field private mTiltSensor:Landroid/hardware/Sensor;

.field private mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

.field private final mTwilight:Lcom/android/server/TwilightService;

.field private mTwilightChanged:Z

.field private final mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

.field private mUseButtonAutoBrightnessConfig:Z

.field private mUseButtonLedBrightnessConfig:Z

.field private final mUseDefaultResources:Z

.field private mUseSoftwareAutoBrightnessConfig:Z

.field private mUsingScreenAutoBrightness:Z

.field private mValueOfVirtualZeroCandela:I

.field private mWaitProximityToggled:Z

.field private mWaitingForNegativeProximity:Z

.field private mWasTconMaxLevel:Z

.field private prevIsAutoBrightnessEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    invoke-static {}, Landroid/os/PowerManager;->useScreenAutoBrightnessAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    invoke-static {}, Landroid/os/PowerManager;->useTwilightAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->USE_TWILIGHT_ADJUSTMENT:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/power/Notifier;Lcom/android/server/LightsService;Lcom/android/server/TwilightService;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/power/DisplayBlanker;Lcom/android/server/power/DisplayPowerController$Callbacks;Landroid/os/Handler;)V
    .registers 20

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Ljava/lang/Object;

    invoke-direct/range {v6 .. v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mButtonLedState:Z

    const/16 v6, 0x87

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mButtonLedBrightness:I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mWaitProximityToggled:Z

    const-string v6, "[DAB] "

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->TAG_DAB:Ljava/lang/String;

    const-string v6, "[sensor] "

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->TAG_SENSOR:Ljava/lang/String;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mCablRequest:Lcom/android/server/power/CABLControl;

    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessOnCover:I

    new-instance v6, Lcom/android/server/power/DisplayPowerController$1;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$1;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mButtonLedUpdateRunnable:Ljava/lang/Runnable;

    new-instance v6, Lcom/android/server/power/DisplayPowerController$2;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$2;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresis:F

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresis:F

    const/high16 v6, 0x437f

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->lastRawBrightnessValue:F

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mLastHBM:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mWasTconMaxLevel:Z

    new-instance v6, Lcom/android/server/power/DisplayPowerController$3;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$3;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    new-instance v6, Lcom/android/server/power/DisplayPowerController$4;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$4;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    new-instance v6, Lcom/android/server/power/DisplayPowerController$5;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$5;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    new-instance v6, Lcom/android/server/power/DisplayPowerController$7;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$7;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    new-instance v6, Lcom/android/server/power/DisplayPowerController$8;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$8;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    new-instance v6, Lcom/android/server/power/DisplayPowerController$9;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$9;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

    const/high16 v6, -0x4080

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mTiltAngle:F

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mIsLockZone:Z

    new-instance v6, Lcom/android/server/power/DisplayPowerController$10;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$10;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mTiltListener:Landroid/hardware/SensorEventListener;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mIsTablet:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    const/16 v6, 0xfa

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mLowLimitAtHighestAutoBrightnessLevel:I

    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mPrevLuxLevel:I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->prevIsAutoBrightnessEnabled:Z

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mIsEnabledTcon:Z

    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mPrevLuxRange:I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mEnablePrintDynamicAutoBrightnessSpecTable:Z

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseDefaultResources:Z

    new-instance v6, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v6, p0, p1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/power/DisplayPowerController;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    iput-object p3, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/server/power/DisplayPowerController;->mLights:Lcom/android/server/LightsService;

    iput-object p5, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    iput-object p6, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    new-instance v6, Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Z)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mButtonLedHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10e002b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/server/power/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    const v6, 0x10e0028

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    const v6, 0x1110017

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->isTablet()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mIsTablet:Z

    invoke-static {p2}, Lcom/android/server/power/CABLControl;->getInstance(Landroid/content/Context;)Lcom/android/server/power/CABLControl;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mCablRequest:Lcom/android/server/power/CABLControl;

    new-instance v6, Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    invoke-direct {v6}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;-><init>()V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v6, :cond_1e6

    const v6, 0x111002b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    if-eqz v6, :cond_273

    const-string v6, "DisplayPowerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DAB] Dynamic AutoBrightness is Enabled. mDynamicAutoBrightnessEnabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v6, 0x10e002d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mLowLimitAtHighestAutoBrightnessLevel:I

    const v6, 0x10e002e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mValueOfVirtualZeroCandela:I

    const v6, 0x1070034

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevels:[I

    const v6, 0x1070035

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValues:[I

    const v6, 0x1070036

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevels:[I

    const v6, 0x1070037

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    const v6, 0x1070038

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevels:[I

    const v6, 0x1070039

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValues:[I

    const v6, 0x107003a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevelsForEbookOnly:[I

    const v6, 0x107003b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValuesForEbookOnly:[I

    const v6, 0x107003c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevelsForEbookOnly:[I

    const v6, 0x107003d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    const v6, 0x107003e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevelsForEbookOnly:[I

    const v6, 0x107003f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValuesForEbookOnly:[I

    const v6, 0x1070033

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mMinimumExpressiveBrightnessValues:[I

    const v6, 0x10e002c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mMinimumBrightnessStepValue:I

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->initDynamicAutoBrightnessSlopeTables()V

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mMinimumExpressiveBrightnessValues:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v2, v5, :cond_1dd

    move v5, v2

    :cond_1dd
    :goto_1dd
    const v6, 0x10e002f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    :cond_1e6
    const v6, 0x111005f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseButtonAutoBrightnessConfig:Z

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseButtonAutoBrightnessConfig:Z

    if-eqz v6, :cond_202

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mButtonAutoBrightnessEnabled:Z

    const v6, 0x1070031

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mButtonBacklightValues:[I

    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mButtonLastValue:I

    :cond_202
    const v6, 0x1110060

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseButtonLedBrightnessConfig:Z

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseButtonAutoBrightnessConfig:Z

    if-nez v6, :cond_213

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseButtonLedBrightnessConfig:Z

    if-eqz v6, :cond_21c

    :cond_213
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLights:Lcom/android/server/LightsService;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mButtonLight:Lcom/android/server/LightsService$Light;

    :cond_21c
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    const/16 v6, 0xff

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    const v6, 0x111001b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamFadesConfig:Z

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v6, :cond_24b

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v6

    const/high16 v7, 0x40a0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F

    :cond_24b
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v6, :cond_261

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mTiltSensor:Landroid/hardware/Sensor;

    :cond_261
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v6, :cond_272

    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v6, :cond_272

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/TwilightService;->registerListener(Lcom/android/server/TwilightService$TwilightListener;Landroid/os/Handler;)V

    :cond_272
    return-void

    :cond_273
    const v6, 0x107002e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    const v6, 0x1070030

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/DisplayPowerController;->createAutoBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    if-nez v6, :cond_2d2

    const-string v6, "DisplayPowerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in config.xml.  config_autoBrightnessLcdBacklightValues (size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "must be monotic and have exactly one more entry than "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "config_autoBrightnessLevels (size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "which must be strictly increasing.  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Auto-brightness will be disabled."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    goto/16 :goto_1dd

    :cond_2d2
    const/4 v6, 0x0

    aget v6, v4, v6

    if-ge v6, v5, :cond_1dd

    const/4 v6, 0x0

    aget v5, v4, v6

    goto/16 :goto_1dd
.end method

.method static synthetic access$000(Lcom/android/server/power/DisplayPowerController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mButtonLedState:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/power/DisplayPowerController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerController;->mButtonLedState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/LightsService$Light;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mButtonLight:Lcom/android/server/LightsService$Light;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/DisplayPowerController;)F
    .registers 2

    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/power/DisplayPowerController;JZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/power/DisplayPowerController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/power/DisplayPowerController;)I
    .registers 2

    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/power/DisplayPowerController;JF)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/power/DisplayPowerController;J)J
    .registers 3

    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->lastLightSensorEventTime:J

    return-wide p1
.end method

.method static synthetic access$1702(Lcom/android/server/power/DisplayPowerController;F)F
    .registers 2

    iput p1, p0, Lcom/android/server/power/DisplayPowerController;->lastLightSensorValue:F

    return p1
.end method

.method static synthetic access$1802(Lcom/android/server/power/DisplayPowerController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightChanged:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/power/DisplayPowerController;)F
    .registers 2

    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mTiltAngle:F

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/power/DisplayPowerController;F)F
    .registers 2

    iput p1, p0, Lcom/android/server/power/DisplayPowerController;->mTiltAngle:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/power/DisplayPowerController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$Callbacks;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/power/DisplayPowerController;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/power/DisplayPowerController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/power/DisplayPowerController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceProximitySensor()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/power/DisplayPowerController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceLightSensor()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/power/DisplayPowerController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->printLastLightSensorEvent()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/power/DisplayPowerController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    return v0
.end method

.method private animateScreenBrightness(II)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v0, v0, Lcom/android/server/power/DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    if-eqz v0, :cond_e

    const-string v0, "DisplayPowerController"

    const-string v1, "forceLcdBacklightOff!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :cond_e
    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animation target = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (PSM:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v2, v2, Lcom/android/server/power/DisplayPowerRequest;->useSystemPowerSaveMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", AB limit:("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessLowerLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ~ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessUpperLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") MB Limit:("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->minBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ~ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->maxBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") MAdj:("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustment:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/RampAnimator;->animateTo(II)Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0, p1}, Lcom/android/server/power/Notifier;->onScreenBrightness(I)V

    :cond_af
    return-void
.end method

.method private applyLightSensorMeasurement(JF)V
    .registers 10

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    :goto_f
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    return-void

    :cond_14
    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    sub-long v0, p1, v2

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    sub-float v3, p3, v3

    long-to-float v4, v0

    mul-float/2addr v3, v4

    const-wide/16 v4, 0x3e8

    add-long/2addr v4, v0

    long-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    sub-float v3, p3, v3

    long-to-float v4, v0

    mul-float/2addr v3, v4

    const-wide/16 v4, 0x1388

    add-long/2addr v4, v0

    long-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    goto :goto_f
.end method

.method private applyLightSensorMeasurementSEC(JF)V
    .registers 10

    const/4 v5, 0x1

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    if-ne v3, v5, :cond_12

    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mSECAverageLux:F

    :goto_d
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    return-void

    :cond_12
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mIsLockZone:Z

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mTiltAngle:F

    const/high16 v4, 0x428c

    cmpg-float v3, v3, v4

    if-gez v3, :cond_55

    iput-boolean v5, p0, Lcom/android/server/power/DisplayPowerController;->mIsLockZone:Z

    :goto_1e
    iget-boolean v3, p0, Lcom/android/server/power/DisplayPowerController;->mIsLockZone:Z

    if-eqz v3, :cond_2a

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    cmpg-float v3, p3, v3

    if-gez v3, :cond_2a

    iget p3, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    :cond_2a
    iget-boolean v3, p0, Lcom/android/server/power/DisplayPowerController;->mIsLockZone:Z

    if-eq v0, v3, :cond_48

    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSTEMP : mIsLockZone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/power/DisplayPowerController;->mIsLockZone:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    iget-wide v3, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    sub-long v1, p1, v3

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    add-float/2addr v3, p3

    const/high16 v4, 0x3f00

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/power/DisplayPowerController;->mSECAverageLux:F

    goto :goto_d

    :cond_55
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/power/DisplayPowerController;->mIsLockZone:Z

    goto :goto_1e
.end method

.method private blockScreenOn()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    if-nez v0, :cond_18

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_18

    const-string v0, "DisplayPowerController"

    const-string v1, "Blocked screen on."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    :cond_18
    return-void
.end method

.method private static clamp(III)I
    .registers 3

    if-gt p0, p1, :cond_3

    :goto_2
    return p1

    :cond_3
    if-lt p0, p2, :cond_7

    move p1, p2

    goto :goto_2

    :cond_7
    move p1, p0

    goto :goto_2
.end method

.method private static clampAbsoluteBrightness(I)I
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->clamp(III)I

    move-result v0

    return v0
.end method

.method private clampScreenBrightness(I)I
    .registers 4

    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Lcom/android/server/power/DisplayPowerController;->clamp(III)I

    move-result v0

    return v0
.end method

.method private static createAutoBrightnessSpline([I[I)Landroid/util/Spline;
    .registers 15

    const/high16 v12, 0x3fa0

    :try_start_2
    array-length v2, p1

    new-array v5, v2, [F

    new-array v6, v2, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, p1, v8

    invoke-static {v8}, Lcom/android/server/power/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    move-result v8

    aput v8, v6, v7

    const/4 v1, 0x1

    :goto_12
    if-ge v1, v2, :cond_26

    add-int/lit8 v7, v1, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    aput v7, v5, v1

    aget v7, p1, v1

    invoke-static {v7}, Lcom/android/server/power/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    move-result v7

    aput v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_26
    invoke-static {v5, v6}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object v3

    sget-boolean v7, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v7, :cond_7e

    const-string v7, "DisplayPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Auto-brightness spline: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v4, 0x3f80

    :goto_48
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    mul-float/2addr v7, v12

    cmpg-float v7, v4, v7

    if-gez v7, :cond_7e

    const-string v7, "DisplayPowerController"

    const-string v8, "  %7.1f: %7.1f"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_73} :catch_75

    mul-float/2addr v4, v12

    goto :goto_48

    :catch_75
    move-exception v0

    const-string v7, "DisplayPowerController"

    const-string v8, "Could not create auto-brightness spline."

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    :cond_7e
    return-object v3
.end method

.method private debounceLightSensor()V
    .registers 7

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v2, :cond_47

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    const-wide/16 v4, 0x190

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_40

    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_37

    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "debounceLightSensor: Synthesizing light sensor measurement after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    if-eqz v2, :cond_48

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/power/DisplayPowerController;->applyLightSensorMeasurementSEC(JF)V

    :cond_40
    :goto_40
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    if-eqz v2, :cond_4e

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->updateAmbientLuxSEC(J)V

    :cond_47
    :goto_47
    return-void

    :cond_48
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/power/DisplayPowerController;->applyLightSensorMeasurement(JF)V

    goto :goto_40

    :cond_4e
    invoke-direct {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->updateAmbientLux(J)V

    goto :goto_47
.end method

.method private debounceProximitySensor()V
    .registers 7

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_16

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    cmp-long v3, v3, v1

    if-gtz v3, :cond_17

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    iput v3, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState()V

    :cond_16
    :goto_16
    return-void

    :cond_17
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_16
.end method

.method private dumpAutoBrightnessTables(Ljava/io/PrintWriter;)V
    .registers 13

    :try_start_0
    iget-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    if-eqz v9, :cond_272

    const-string v6, ""

    const-string v2, ""

    const-string v4, ""

    const-string v8, ""

    const-string v9, "[DAB] Dynamic Auto Brightness Tables :"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mValueOfVirtualZeroCandela = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mValueOfVirtualZeroCandela:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mLowLimitAtHighestAutoBrightnessLevel = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mLowLimitAtHighestAutoBrightnessLevel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mMinimumBrightnessStepValue = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mMinimumBrightnessStepValue:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_5a
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevels:[I

    array-length v9, v9

    if-ge v1, v9, :cond_91

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevels:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValues:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    :cond_91
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrLowHysteresisPoints = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_a8
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevels:[I

    array-length v9, v9

    if-ge v1, v9, :cond_df

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevels:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_a8

    :cond_df
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrBrightnessValuePoints = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_f6
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevels:[I

    array-length v9, v9

    if-ge v1, v9, :cond_12d

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevels:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValues:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_f6

    :cond_12d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrHighHysteresisPoints = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_144
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mMinimumExpressiveBrightnessValues:[I

    array-length v9, v9

    if-ge v1, v9, :cond_167

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mMinimumExpressiveBrightnessValues:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_144

    :cond_167
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrMinimumExpressiveBrightnessValues = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, ""

    const-string v3, ""

    const-string v5, ""

    const-string v9, "[DAB] "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_189
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevelsForEbookOnly:[I

    array-length v9, v9

    if-ge v1, v9, :cond_1c0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevelsForEbookOnly:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValuesForEbookOnly:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_189

    :cond_1c0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrLowHysteresisPointsForEbookOnly = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1d7
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevelsForEbookOnly:[I

    array-length v9, v9

    if-ge v1, v9, :cond_20e

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevelsForEbookOnly:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d7

    :cond_20e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrBrightnessValuePointsForEbookOnly = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_225
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevelsForEbookOnly:[I

    array-length v9, v9

    if-ge v1, v9, :cond_25c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevelsForEbookOnly:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValuesForEbookOnly:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_225

    :cond_25c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DAB]   mStrHighHysteresisPointsForEbookOnly = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_272
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_272} :catch_273

    :cond_272
    :goto_272
    return-void

    :catch_273
    move-exception v0

    const-string v9, "DisplayPowerController"

    const-string v10, "[DAB] dumpAutoBrightnessTables"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_272
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .registers 5

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Display Controller Thread State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWaitingForNegativeProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximityDebounceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBecauseOfProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnableTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLuxValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLightSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentShortTermAverageLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLongTermAverageLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDebounceLuxDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDebounceLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUsingScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastScreenAutoBrightnessGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTwilight.getCurrentState()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    invoke-virtual {v1}, Lcom/android/server/TwilightService;->getCurrentState()Lcom/android/server/TwilightService$TwilightState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    if-eqz v0, :cond_285

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    :cond_285
    const-string v0, "SEC concepts:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController;->dumpAutoBrightnessTables(Ljava/io/PrintWriter;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTiltSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mTiltSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private fileWriteInt(Ljava/lang/String;I)V
    .registers 10

    const/4 v2, 0x0

    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DAB] fileWriteInt : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_23
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_2d} :catch_3d
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2d} :catch_63

    :try_start_2d
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_3b} :catch_70

    move-object v2, v3

    :cond_3c
    :goto_3c
    return-void

    :catch_3d
    move-exception v0

    :try_start_3e
    const-string v4, "/sys/class/tcon/tcon/auto_br"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    const-string v4, "DisplayPowerController"

    const-string v5, "[DAB] /sys/class/tcon/tcon/auto_br file not found."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/power/DisplayPowerController;->mIsEnabledTcon:Z

    :cond_50
    const-string v4, "/sys/class/tcon/tcon/lux"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    const-string v4, "DisplayPowerController"

    const-string v5, "[DAB] /sys/class/tcon/tcon/lux file not found."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/power/DisplayPowerController;->mIsEnabledTcon:Z
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_62} :catch_63

    goto :goto_3c

    :catch_63
    move-exception v0

    :goto_64
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :try_start_67
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_3c

    :catch_6b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c

    :catch_70
    move-exception v0

    move-object v2, v3

    goto :goto_64
.end method

.method private getDynamicAutoBrightnessHighHysteresis(F)F
    .registers 13

    const-wide v9, 0x3f847ae147ae147bL

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_9
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v3, v3, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    if-nez v3, :cond_6a

    const/4 v1, 0x1

    :goto_10
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValues:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1e

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValues:[I

    aget v3, v3, v1

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2e

    :cond_1e
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevels:[I

    array-length v3, v3

    if-lt v1, v3, :cond_31

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevels:[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevels:[I

    aget v3, v3, v1

    int-to-float v2, v3

    :goto_2d
    return v2

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_31
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisSlope:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v3, v3, v4

    cmpl-double v3, v3, v5

    if-lez v3, :cond_62

    const-wide/high16 v3, 0x4024

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisSlope:[D

    add-int/lit8 v6, v1, -0x1

    aget-wide v5, v5, v6

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValues:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    int-to-float v7, v7

    sub-float v7, p1, v7

    float-to-double v7, v7

    mul-double/2addr v5, v7

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevels:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    int-to-double v7, v7

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->log10(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v2, v3

    goto :goto_2d

    :cond_62
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevels:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    int-to-float v2, v3

    goto :goto_2d

    :cond_6a
    const/4 v1, 0x1

    :goto_6b
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValuesForEbookOnly:[I

    array-length v3, v3

    if-ge v1, v3, :cond_79

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValuesForEbookOnly:[I

    aget v3, v3, v1

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_89

    :cond_79
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevelsForEbookOnly:[I

    array-length v3, v3

    if-lt v1, v3, :cond_8c

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevelsForEbookOnly:[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevelsForEbookOnly:[I

    aget v3, v3, v1

    int-to-float v2, v3

    goto :goto_2d

    :cond_89
    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    :cond_8c
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisSlopeForEbookOnly:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v3, v3, v4

    cmpl-double v3, v3, v5

    if-lez v3, :cond_be

    const-wide/high16 v3, 0x4024

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisSlopeForEbookOnly:[D

    add-int/lit8 v6, v1, -0x1

    aget-wide v5, v5, v6

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValuesForEbookOnly:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    int-to-float v7, v7

    sub-float v7, p1, v7

    float-to-double v7, v7

    mul-double/2addr v5, v7

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevelsForEbookOnly:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    int-to-double v7, v7

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->log10(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v2, v3

    goto/16 :goto_2d

    :cond_be
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevelsForEbookOnly:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c4} :catch_c7

    int-to-float v2, v3

    goto/16 :goto_2d

    :catch_c7
    move-exception v0

    const-string v3, "DisplayPowerController"

    const-string v4, "[DAB] getDynamicAutoBrightnessHighHysteresis"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v2, 0x459c4000

    goto/16 :goto_2d
.end method

.method private getDynamicAutoBrightnessLowHysteresis(F)F
    .registers 13

    const-wide v9, 0x3f847ae147ae147bL

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_9
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v3, v3, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    if-nez v3, :cond_6a

    const/4 v1, 0x1

    :goto_10
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValues:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1e

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValues:[I

    aget v3, v3, v1

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_2e

    :cond_1e
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevels:[I

    array-length v3, v3

    if-lt v1, v3, :cond_31

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevels:[I

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevels:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    int-to-float v2, v3

    :goto_2d
    return v2

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_31
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisSlope:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v3, v3, v4

    cmpl-double v3, v3, v5

    if-lez v3, :cond_62

    const-wide/high16 v3, 0x4024

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisSlope:[D

    add-int/lit8 v6, v1, -0x1

    aget-wide v5, v5, v6

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValues:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    int-to-float v7, v7

    sub-float v7, p1, v7

    float-to-double v7, v7

    mul-double/2addr v5, v7

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevels:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    int-to-double v7, v7

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->log10(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v2, v3

    goto :goto_2d

    :cond_62
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevels:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    int-to-float v2, v3

    goto :goto_2d

    :cond_6a
    const/4 v1, 0x1

    :goto_6b
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValuesForEbookOnly:[I

    array-length v3, v3

    if-ge v1, v3, :cond_79

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValuesForEbookOnly:[I

    aget v3, v3, v1

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_89

    :cond_79
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevelsForEbookOnly:[I

    array-length v3, v3

    if-lt v1, v3, :cond_8c

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevelsForEbookOnly:[I

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevelsForEbookOnly:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    int-to-float v2, v3

    goto :goto_2d

    :cond_89
    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    :cond_8c
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisSlopeForEbookOnly:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v3, v3, v4

    cmpl-double v3, v3, v5

    if-lez v3, :cond_be

    const-wide/high16 v3, 0x4024

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisSlopeForEbookOnly:[D

    add-int/lit8 v6, v1, -0x1

    aget-wide v5, v5, v6

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValuesForEbookOnly:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    int-to-float v7, v7

    sub-float v7, p1, v7

    float-to-double v7, v7

    mul-double/2addr v5, v7

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevelsForEbookOnly:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    int-to-double v7, v7

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->log10(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v2, v3

    goto/16 :goto_2d

    :cond_be
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevelsForEbookOnly:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c4} :catch_c7

    int-to-float v2, v3

    goto/16 :goto_2d

    :catch_c7
    move-exception v0

    const-string v3, "DisplayPowerController"

    const-string v4, "[DAB] getDynamicAutoBrightnessLowHysteresis"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v2, 0x459c4000

    goto/16 :goto_2d
.end method

.method private getDynamicAutoBrightnessValue(F)F
    .registers 13

    const-wide/16 v5, 0x0

    const-wide v9, 0x3f847ae147ae147bL

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_9
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v3, v3, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    if-nez v3, :cond_68

    const/4 v2, 0x1

    :goto_10
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevels:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1e

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevels:[I

    aget v3, v3, v2

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_2e

    :cond_1e
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    array-length v3, v3

    if-lt v2, v3, :cond_31

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    int-to-float v0, v3

    :goto_2d
    return v0

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_31
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValueSlope:[D

    add-int/lit8 v4, v2, -0x1

    aget-wide v3, v3, v4

    cmpl-double v3, v3, v5

    if-lez v3, :cond_60

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValueSlope:[D

    add-int/lit8 v4, v2, -0x1

    aget-wide v3, v3, v4

    float-to-double v5, p1

    add-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->log10(D)D

    move-result-wide v5

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevels:[I

    add-int/lit8 v8, v2, -0x1

    aget v7, v7, v8

    int-to-double v7, v7

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->log10(D)D

    move-result-wide v7

    sub-double/2addr v5, v7

    mul-double/2addr v3, v5

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    add-int/lit8 v6, v2, -0x1

    aget v5, v5, v6

    int-to-double v5, v5

    add-double/2addr v3, v5

    double-to-int v3, v3

    int-to-float v0, v3

    goto :goto_2d

    :cond_60
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    int-to-float v0, v3

    goto :goto_2d

    :cond_68
    const/4 v2, 0x1

    :goto_69
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevelsForEbookOnly:[I

    array-length v3, v3

    if-ge v2, v3, :cond_77

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevelsForEbookOnly:[I

    aget v3, v3, v2

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_87

    :cond_77
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    array-length v3, v3

    if-lt v2, v3, :cond_8a

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    int-to-float v0, v3

    goto :goto_2d

    :cond_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    :cond_8a
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValueSlopeForEbookOnly:[D

    add-int/lit8 v4, v2, -0x1

    aget-wide v3, v3, v4

    cmpl-double v3, v3, v5

    if-lez v3, :cond_ba

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValueSlopeForEbookOnly:[D

    add-int/lit8 v4, v2, -0x1

    aget-wide v3, v3, v4

    float-to-double v5, p1

    add-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->log10(D)D

    move-result-wide v5

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevelsForEbookOnly:[I

    add-int/lit8 v8, v2, -0x1

    aget v7, v7, v8

    int-to-double v7, v7

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->log10(D)D

    move-result-wide v7

    sub-double/2addr v5, v7

    mul-double/2addr v3, v5

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    add-int/lit8 v6, v2, -0x1

    aget v5, v5, v6

    int-to-double v5, v5

    add-double/2addr v3, v5

    double-to-int v3, v3

    int-to-float v0, v3

    goto/16 :goto_2d

    :cond_ba
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c0} :catch_c3

    int-to-float v0, v3

    goto/16 :goto_2d

    :catch_c3
    move-exception v1

    const-string v3, "DisplayPowerController"

    const-string v4, "[DAB] getDynamicAutoBrightnessValue"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/high16 v0, 0x437f

    goto/16 :goto_2d
.end method

.method private getFinalBrightness(I)I
    .registers 6

    move v0, p1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v2, v2, Lcom/android/server/power/DisplayPowerRequest;->useSystemPowerSaveMode:Z

    if-eqz v2, :cond_11

    add-int/lit8 v1, p1, -0x14

    if-lez p1, :cond_11

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_11
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustment:I

    if-gez v2, :cond_6f

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMin:I

    if-le v0, v2, :cond_2a

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustment:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v3, v3, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMin:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_2a
    :goto_2a
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessUpperLimit:I

    if-ltz v2, :cond_3e

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessUpperLimit:I

    if-le v0, v2, :cond_3e

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v2, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessUpperLimit:I

    :cond_3e
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessLowerLimit:I

    if-ltz v2, :cond_4e

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessLowerLimit:I

    if-ge v0, v2, :cond_4e

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v2, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessLowerLimit:I

    :cond_4e
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->minBrightness:I

    if-ltz v2, :cond_5e

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->minBrightness:I

    if-ge v0, v2, :cond_5e

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v2, Lcom/android/server/power/DisplayPowerRequest;->minBrightness:I

    :cond_5e
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->maxBrightness:I

    if-ltz v2, :cond_6e

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->maxBrightness:I

    if-le v0, v2, :cond_6e

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v2, Lcom/android/server/power/DisplayPowerRequest;->maxBrightness:I

    :cond_6e
    return v0

    :cond_6f
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustment:I

    if-lez v2, :cond_2a

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMax:I

    if-ge v0, v2, :cond_2a

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustment:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v3, v3, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMax:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2a
.end method

.method private getFinalDynamicAutoBrightnessValue(FF)I
    .registers 11

    const/4 v7, 0x2

    const/4 v6, 0x0

    float-to-int v1, p2

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v2, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    const v2, 0x459c4000

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_14

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mLowLimitAtHighestAutoBrightnessLevel:I

    if-ge v1, v2, :cond_14

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mLowLimitAtHighestAutoBrightnessLevel:I

    :cond_14
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mIsTablet:Z

    if-eqz v2, :cond_31

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_31

    float-to-double v2, v0

    const-wide v4, -0x4026666666666666L

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_32

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mMinimumExpressiveBrightnessValues:[I

    aget v2, v2, v6

    if-le v1, v2, :cond_32

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mMinimumExpressiveBrightnessValues:[I

    aget v1, v2, v6

    :cond_31
    :goto_31
    return v1

    :cond_32
    float-to-double v2, v0

    const-wide v4, 0x3fd999999999999aL

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_31

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mMinimumExpressiveBrightnessValues:[I

    aget v2, v2, v7

    if-ge v1, v2, :cond_31

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mMinimumExpressiveBrightnessValues:[I

    aget v1, v2, v7

    goto :goto_31
.end method

.method private getSlope(IIIIZ)D
    .registers 16

    const-wide v8, 0x3f847ae147ae147bL

    const-wide/16 v0, 0x0

    if-eq p1, p3, :cond_b

    if-ne p2, p4, :cond_e

    :cond_b
    const-wide/16 v0, 0x0

    :goto_d
    return-wide v0

    :cond_e
    if-eqz p5, :cond_23

    int-to-double v2, p3

    add-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    int-to-double v4, p1

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    sub-int v4, p4, p2

    int-to-double v4, v4

    div-double v0, v2, v4

    goto :goto_d

    :cond_23
    sub-int v2, p4, p2

    int-to-double v2, v2

    int-to-double v4, p3

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    int-to-double v6, p1

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    div-double v0, v2, v4

    goto :goto_d
.end method

.method private static getTwilightGamma(JJJ)F
    .registers 15

    const-wide/32 v7, 0x6ddd00

    const-wide/16 v5, 0x0

    const v4, 0x4adbba00

    const/high16 v0, 0x3fc0

    const/high16 v1, 0x3f80

    cmp-long v2, p2, v5

    if-ltz v2, :cond_1c

    cmp-long v2, p4, v5

    if-ltz v2, :cond_1c

    cmp-long v2, p0, p2

    if-ltz v2, :cond_1c

    cmp-long v2, p0, p4

    if-lez v2, :cond_1e

    :cond_1c
    move v0, v1

    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    add-long v2, p2, v7

    cmp-long v2, p0, v2

    if-gez v2, :cond_2d

    sub-long v2, p0, p2

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Lcom/android/server/power/DisplayPowerController;->lerp(FFF)F

    move-result v0

    goto :goto_1d

    :cond_2d
    sub-long v2, p4, v7

    cmp-long v2, p0, v2

    if-lez v2, :cond_1d

    sub-long v2, p4, p0

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Lcom/android/server/power/DisplayPowerController;->lerp(FFF)F

    move-result v0

    goto :goto_1d
.end method

.method private handleLightSensorEvent(JF)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    if-eqz v0, :cond_11

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->applyLightSensorMeasurementSEC(JF)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/DisplayPowerController;->updateAmbientLuxSEC(J)V

    :goto_10
    return-void

    :cond_11
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->applyLightSensorMeasurement(JF)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/DisplayPowerController;->updateAmbientLux(J)V

    goto :goto_10
.end method

.method private handleProximitySensorEvent(JZ)V
    .registers 8

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    if-nez v0, :cond_8

    if-nez p3, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    if-ne v0, v2, :cond_e

    if-nez p3, :cond_7

    :cond_e
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    if-eqz p3, :cond_45

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    const-wide/16 v0, 0x0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    :goto_1d
    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sensor] mPendingProximity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", DebounceTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceProximitySensor()V

    goto :goto_7

    :cond_45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    const-wide/16 v0, 0x32

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    goto :goto_1d
.end method

.method private initDynamicAutoBrightnessSlopeTables()V
    .registers 16

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValues:[I

    array-length v0, v0

    add-int/lit8 v12, v0, -0x1

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    array-length v0, v0

    add-int/lit8 v8, v0, -0x1

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValues:[I

    array-length v0, v0

    add-int/lit8 v10, v0, -0x1

    new-array v0, v12, [D

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisSlope:[D

    new-array v0, v8, [D

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValueSlope:[D

    new-array v0, v10, [D

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisSlope:[D

    const/4 v7, 0x0

    :goto_1c
    if-ge v7, v12, :cond_3f

    iget-object v14, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisSlope:[D

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevels:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValues:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevels:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValues:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController;->getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v14, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    :cond_3f
    const/4 v7, 0x0

    :goto_40
    if-ge v7, v8, :cond_63

    iget-object v14, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValueSlope:[D

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevels:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevels:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValues:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController;->getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v14, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_40

    :cond_63
    const/4 v7, 0x0

    :goto_64
    if-ge v7, v10, :cond_87

    iget-object v14, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisSlope:[D

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevels:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValues:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevels:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValues:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController;->getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v14, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_64

    :cond_87
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValuesForEbookOnly:[I

    array-length v0, v0

    add-int/lit8 v13, v0, -0x1

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    array-length v0, v0

    add-int/lit8 v9, v0, -0x1

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValuesForEbookOnly:[I

    array-length v0, v0

    add-int/lit8 v11, v0, -0x1

    new-array v0, v13, [D

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisSlopeForEbookOnly:[D

    new-array v0, v9, [D

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValueSlopeForEbookOnly:[D

    new-array v0, v11, [D

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisSlopeForEbookOnly:[D

    const/4 v7, 0x0

    :goto_a3
    if-ge v7, v13, :cond_c6

    iget-object v14, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisSlopeForEbookOnly:[D

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevelsForEbookOnly:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValuesForEbookOnly:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisLevelsForEbookOnly:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresisValuesForEbookOnly:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController;->getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v14, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_a3

    :cond_c6
    const/4 v7, 0x0

    :goto_c7
    if-ge v7, v9, :cond_ea

    iget-object v14, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValueSlopeForEbookOnly:[D

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevelsForEbookOnly:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessLevelsForEbookOnly:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mBrightnessValuesForEbookOnly:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController;->getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v14, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_c7

    :cond_ea
    const/4 v7, 0x0

    :goto_eb
    if-ge v7, v11, :cond_116

    iget-object v14, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisSlopeForEbookOnly:[D

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevelsForEbookOnly:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValuesForEbookOnly:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisLevelsForEbookOnly:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresisValuesForEbookOnly:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController;->getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v14, v7
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10b} :catch_10e

    add-int/lit8 v7, v7, 0x1

    goto :goto_eb

    :catch_10e
    move-exception v6

    const-string v0, "DisplayPowerController"

    const-string v1, "[DAB] initDynamicAutoBrightnessSlopeTables"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_116
    return-void
.end method

.method private initialize()V
    .registers 6

    new-instance v0, Lcom/android/server/power/DisplayPowerState;

    new-instance v1, Lcom/android/server/power/ElectronBeam;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {v1, v2}, Lcom/android/server/power/ElectronBeam;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLights:Lcom/android/server/LightsService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/power/DisplayPowerState;-><init>(Lcom/android/server/power/ElectronBeam;Lcom/android/server/power/DisplayBlanker;Lcom/android/server/LightsService$Light;)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    new-instance v0, Lcom/android/server/power/RampAnimator;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    sget-object v2, Lcom/android/server/power/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/IntProperty;)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    return-void
.end method

.method private isTablet()Z
    .registers 3

    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private static lerp(FFF)F
    .registers 4

    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private static normalizeAbsoluteBrightness(I)F
    .registers 3

    invoke-static {p0}, Lcom/android/server/power/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    return v0
.end method

.method private printDynamicAutoBrightnessSpecTable()V
    .registers 1

    return-void
.end method

.method private printLastLightSensorEvent()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v0, :cond_2a

    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DAB] printLastLightSensorEvent : lastLightSensorEventTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->lastLightSensorEventTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lastLightSensorValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->lastLightSensorValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return-void
.end method

.method private static proximityToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_12

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    :pswitch_8
    const-string v0, "Unknown"

    goto :goto_7

    :pswitch_b
    const-string v0, "Negative"

    goto :goto_7

    :pswitch_e
    const-string v0, "Positive"

    goto :goto_7

    nop

    :pswitch_data_12
    .packed-switch -0x1
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method private sendBrightnessLevel(FZ)V
    .registers 7

    const-string v0, "/sys/class/backlight/panel/auto_brightness"

    const-string v1, "/sys/class/tcon/tcon/auto_br"

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/server/power/DisplayPowerController;->prevIsAutoBrightnessEnabled:Z

    if-eq v3, p2, :cond_15

    iput-boolean p2, p0, Lcom/android/server/power/DisplayPowerController;->prevIsAutoBrightnessEnabled:Z

    iget-boolean v3, p0, Lcom/android/server/power/DisplayPowerController;->mIsEnabledTcon:Z

    if-eqz v3, :cond_15

    if-eqz p2, :cond_28

    const/4 v3, 0x1

    :goto_12
    invoke-direct {p0, v1, v3}, Lcom/android/server/power/DisplayPowerController;->fileWriteInt(Ljava/lang/String;I)V

    :cond_15
    if-eqz p2, :cond_4e

    const/high16 v3, 0x4170

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2a

    const/4 v2, 0x1

    :goto_1e
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mPrevLuxLevel:I

    if-eq v3, v2, :cond_27

    invoke-direct {p0, v0, v2}, Lcom/android/server/power/DisplayPowerController;->fileWriteInt(Ljava/lang/String;I)V

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mPrevLuxLevel:I

    :cond_27
    return-void

    :cond_28
    const/4 v3, 0x0

    goto :goto_12

    :cond_2a
    const/high16 v3, 0x4316

    cmpg-float v3, p1, v3

    if-gez v3, :cond_32

    const/4 v2, 0x2

    goto :goto_1e

    :cond_32
    const/high16 v3, 0x447a

    cmpg-float v3, p1, v3

    if-gez v3, :cond_3a

    const/4 v2, 0x3

    goto :goto_1e

    :cond_3a
    const v3, 0x459c4000

    cmpg-float v3, p1, v3

    if-gez v3, :cond_43

    const/4 v2, 0x4

    goto :goto_1e

    :cond_43
    const v3, 0x471c4000

    cmpg-float v3, p1, v3

    if-gez v3, :cond_4c

    const/4 v2, 0x5

    goto :goto_1e

    :cond_4c
    const/4 v2, 0x6

    goto :goto_1e

    :cond_4e
    const/4 v2, 0x0

    goto :goto_1e
.end method

.method private sendLux(F)V
    .registers 5

    const-string v0, "/sys/class/tcon/tcon/lux"

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v2, v2, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v2, :cond_1d

    const/4 v1, 0x0

    const/high16 v2, 0x4316

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1e

    const/4 v1, 0x0

    :goto_10
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mPrevLuxRange:I

    if-eq v2, v1, :cond_1d

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mIsEnabledTcon:Z

    if-eqz v2, :cond_1d

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->fileWriteInt(Ljava/lang/String;I)V

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mPrevLuxRange:I

    :cond_1d
    return-void

    :cond_1e
    const v2, 0x469c4000

    cmpg-float v2, p1, v2

    if-gez v2, :cond_27

    const/4 v1, 0x1

    goto :goto_10

    :cond_27
    const/4 v1, 0x2

    goto :goto_10
.end method

.method private sendOnProximityNegative()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendOnProximityPositive()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendOnStateChanged()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendUpdatePowerState()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerStateLocked()V

    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private sendUpdatePowerStateLocked()V
    .registers 4

    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    if-nez v1, :cond_15

    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_15
    return-void
.end method

.method private setLightSensorEnabled(ZZ)V
    .registers 11

    const-wide/16 v6, 0x64

    const v5, 0x30d40

    const/4 v4, 0x0

    if-eqz p1, :cond_55

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-nez v0, :cond_46

    const/4 p2, 0x1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->resetTime()V

    const-string v0, "DisplayPowerController"

    const-string v1, "[DAB] setLightSensorEnabled : registerListener mLightSensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    const-string v1, "setLightSensorEnabled::registerListener(LightSensor)"

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mTiltListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mTiltSensor:Landroid/hardware/Sensor;

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    const-string v1, "setLightSensorEnabled::registerListener(TiltSensor)"

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    :cond_46
    :goto_46
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-direct {p0, v0, p1}, Lcom/android/server/power/DisplayPowerController;->sendBrightnessLevel(FZ)V

    if-eqz p2, :cond_54

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    if-eqz v0, :cond_81

    invoke-direct {p0, v4}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightnessSEC(Z)V

    :cond_54
    :goto_54
    return-void

    :cond_55
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v0, :cond_46

    iput-boolean v4, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    iput-boolean v4, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    iput v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    const-string v0, "DisplayPowerController"

    const-string v1, "[DAB] setLightSensorEnabled : unregisterListener mLightSensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mTiltListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    goto :goto_46

    :cond_81
    invoke-direct {p0, v4}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    goto :goto_54
.end method

.method private setProximitySensorEnabled(Z)V
    .registers 7

    const/4 v1, -0x1

    if-eqz p1, :cond_2e

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-nez v0, :cond_2d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    const-string v0, "DisplayPowerController"

    const-string v1, "[sensor] setProximitySensorEnabled::registerListener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->resetTime()V

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    const-string v1, "setProximitySensorEnabled::registerListener"

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    const-string v0, "DisplayPowerController"

    const-string v1, "[sensor] setProximitySensorEnabled::unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_2d
.end method

.method private setScreenOn(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/power/DisplayPowerState;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_9
    if-ne v0, p1, :cond_17

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayPowerState;->setScreenOn(Z)V

    if-eqz p1, :cond_1a

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onScreenOn()V

    :cond_17
    :goto_17
    return-void

    :cond_18
    const/4 v0, 0x0

    goto :goto_9

    :cond_1a
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onScreenOff()V

    goto :goto_17
.end method

.method private unblockScreenOn()V
    .registers 7

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    if-eqz v0, :cond_30

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_30

    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unblocked screen on after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return-void
.end method

.method private updateAmbientLux(J)V
    .registers 16

    const-wide/16 v11, 0xbb8

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x1

    iget-boolean v4, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-eqz v4, :cond_14

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    sub-long v4, p1, v4

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_58

    :cond_14
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iput v4, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    iput v10, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_54

    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Initializing: , mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    :cond_57
    :goto_57
    return-void

    :cond_58
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    const v5, 0x3f8ccccd

    mul-float v0, v4, v5

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    cmpl-float v4, v4, v0

    if-lez v4, :cond_10b

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    cmpl-float v4, v4, v0

    if-lez v4, :cond_10b

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-gtz v4, :cond_b3

    iput v8, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_b3

    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Possibly brightened, waiting for 3000 ms: brighteningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b3
    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    add-long v2, v4, v11

    cmp-long v4, p1, v2

    if-ltz v4, :cond_104

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iput v4, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_ff

    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Brightened: brighteningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ff
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    goto/16 :goto_57

    :cond_104
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v4, v9, v2, v3}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_57

    :cond_10b
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    const v5, 0x3f4ccccd

    mul-float v1, v4, v5

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_1c5

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_1c5

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-ltz v4, :cond_167

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_167

    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Possibly darkened, waiting for 3000 ms: darkeningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_167
    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    add-long v2, v4, v11

    cmp-long v4, p1, v2

    if-ltz v4, :cond_1be

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v5, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_1b9

    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Darkened: darkeningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b9
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    goto/16 :goto_57

    :cond_1be
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v4, v9, v2, v3}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_57

    :cond_1c5
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-eqz v4, :cond_217

    iput v10, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_217

    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Canceled debounce: brighteningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", darkeningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_217
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    cmpl-float v4, v4, v0

    if-gtz v4, :cond_223

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_57

    :cond_223
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const-wide/16 v5, 0x190

    add-long/2addr v5, p1

    invoke-virtual {v4, v9, v5, v6}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_57
.end method

.method private updateAmbientLuxSEC(J)V
    .registers 14

    const-wide/16 v9, 0xbb8

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-eqz v2, :cond_14

    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    sub-long v2, p1, v2

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_22

    :cond_14
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mSECAverageLux:F

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    iput v7, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightnessSEC(Z)V

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mSECAverageLux:F

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresis:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_48

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-gtz v2, :cond_32

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    :cond_32
    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    add-long v0, v2, v9

    cmp-long v2, p1, v0

    if-ltz v2, :cond_42

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mSECAverageLux:F

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightnessSEC(Z)V

    goto :goto_21

    :cond_42
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v2, v8, v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_21

    :cond_48
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mSECAverageLux:F

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresis:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_6f

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-ltz v2, :cond_59

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    :cond_59
    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    add-long v0, v2, v9

    cmp-long v2, p1, v0

    if-ltz v2, :cond_69

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mSECAverageLux:F

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightnessSEC(Z)V

    goto :goto_21

    :cond_69
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v2, v8, v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_21

    :cond_6f
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-eqz v2, :cond_21

    iput v7, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    goto :goto_21
.end method

.method private updateAutoBrightness(Z)V
    .registers 16

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-nez v2, :cond_c

    const-string v2, "DisplayPowerController"

    const-string v3, "[DAB] mAmbientLuxValid is false!, Failed to update auto brightness."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v13

    const/high16 v8, 0x3f80

    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_57

    const/high16 v2, 0x4040

    const/high16 v3, 0x3f80

    const/high16 v4, -0x4080

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v5, v5, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    neg-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Landroid/util/FloatMath;->pow(FF)F

    move-result v6

    mul-float/2addr v8, v6

    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_57

    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAutoBrightness: adjGamma="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v2, :cond_ae

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    invoke-virtual {v2}, Lcom/android/server/TwilightService;->getCurrentState()Lcom/android/server/TwilightService$TwilightState;

    move-result-object v12

    if-eqz v12, :cond_ae

    invoke-virtual {v12}, Lcom/android/server/TwilightService$TwilightState;->isNight()Z

    move-result v2

    if-eqz v2, :cond_ae

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v12}, Lcom/android/server/TwilightService$TwilightState;->getYesterdaySunset()J

    move-result-wide v2

    invoke-virtual {v12}, Lcom/android/server/TwilightService$TwilightState;->getTodaySunrise()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController;->getTwilightGamma(JJJ)F

    move-result v7

    invoke-virtual {v12}, Lcom/android/server/TwilightService$TwilightState;->getTodaySunset()J

    move-result-wide v2

    invoke-virtual {v12}, Lcom/android/server/TwilightService$TwilightState;->getTomorrowSunrise()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController;->getTwilightGamma(JJJ)F

    move-result v10

    mul-float v2, v7, v10

    mul-float/2addr v8, v2

    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_ae

    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAutoBrightness: earlyGamma="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lateGamma="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ae
    const/high16 v2, 0x3f80

    cmpl-float v2, v8, v2

    if-eqz v2, :cond_e9

    move v9, v13

    invoke-static {v13, v8}, Landroid/util/FloatMath;->pow(FF)F

    move-result v13

    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_e9

    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAutoBrightness: gamma="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", in="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", out="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e9
    const/high16 v2, 0x437f

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/power/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v11

    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    if-eq v2, v11, :cond_b

    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_120

    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAutoBrightness: mScreenAutoBrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newScreenAutoBrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_120
    iput v11, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    iput v8, p0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState()V

    goto/16 :goto_b
.end method

.method private updateAutoBrightnessSEC(Z)V
    .registers 19

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-nez v14, :cond_e

    const-string v14, "DisplayPowerController"

    const-string v15, "[DAB] no lux value from sensor manager"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-void

    :cond_e
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/power/DisplayPowerController;->getDynamicAutoBrightnessValue(F)F

    move-result v11

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/power/DisplayPowerController;->getDynamicAutoBrightnessLowHysteresis(F)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresis:F

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/power/DisplayPowerController;->getDynamicAutoBrightnessHighHysteresis(F)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresis:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v3, v14, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    sget-boolean v14, Lcom/android/server/power/DisplayPowerController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-nez v14, :cond_38

    :cond_38
    const/4 v14, 0x0

    cmpl-float v14, v3, v14

    if-nez v14, :cond_189

    :goto_3d
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lcom/android/server/power/DisplayPowerController;->getFinalDynamicAutoBrightnessValue(FF)I

    move-result v14

    int-to-float v11, v14

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/power/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v10

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->lastRawBrightnessValue:F

    cmpl-float v14, v11, v14

    if-nez v14, :cond_61

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    const/4 v15, 0x1

    if-gt v14, v15, :cond_e7

    :cond_61
    const-string v15, "DisplayPowerController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[DAB] updateAutoBrightnessSEC : "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "("

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ")    "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/DisplayPowerController;->mLowHysteresis:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " < "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " < "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/DisplayPowerController;->mHighHysteresis:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " ("

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ")"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v14, v14, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    if-eqz v14, :cond_205

    const-string v14, " (ebook)"

    :goto_da
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    const v15, 0x471c4000

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_209

    const/4 v9, 0x1

    :goto_f3
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/power/DisplayPowerController;->mLastHBM:Z

    if-eq v14, v9, :cond_133

    const-string v15, "DisplayPowerController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[DAB] HBM is "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz v9, :cond_20c

    const-string v14, "Enabled"

    :goto_10d
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ". mScreenAutoBrightness = "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/server/power/DisplayPowerController;->mLastHBM:Z

    const/4 v5, 0x1

    :cond_133
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    const v15, 0x469c4000

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_210

    const/4 v7, 0x1

    :goto_13f
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/power/DisplayPowerController;->mIsEnabledTcon:Z

    if-eqz v14, :cond_158

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/power/DisplayPowerController;->mWasTconMaxLevel:Z

    if-eq v14, v7, :cond_158

    const-string v14, "DisplayPowerController"

    const-string v15, "[DAB] The Ambient Lux is over than 20000."

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/server/power/DisplayPowerController;->mWasTconMaxLevel:Z

    const/4 v6, 0x1

    :cond_158
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    if-eq v14, v10, :cond_213

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    if-eqz p1, :cond_183

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState()V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v15, v15, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/power/DisplayPowerController;->sendBrightnessLevel(FZ)V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/power/DisplayPowerController;->sendLux(F)V

    :cond_183
    :goto_183
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/power/DisplayPowerController;->lastRawBrightnessValue:F

    goto/16 :goto_d

    :cond_189
    const/high16 v14, 0x3f80

    const/high16 v15, -0x4080

    neg-float v0, v3

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(FF)F

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    const/high16 v15, -0x3f60

    mul-float v2, v14, v15

    const/4 v14, 0x0

    cmpl-float v14, v2, v14

    if-lez v14, :cond_1fb

    const v14, 0x3f8ccccd

    move v15, v14

    :goto_1a5
    const/4 v14, 0x0

    cmpl-float v14, v2, v14

    if-lez v14, :cond_200

    move v14, v2

    :goto_1ab
    invoke-static {v15, v14}, Landroid/util/FloatMath;->pow(FF)F

    move-result v1

    mul-float/2addr v4, v1

    sget-boolean v14, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v14, :cond_1cc

    const-string v14, "DisplayPowerController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[DAB] updateAutoBrightnessSEC: adjGamma="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1cc
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mValueOfVirtualZeroCandela:I

    int-to-float v14, v14

    sub-float v14, v11, v14

    mul-float/2addr v14, v4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/power/DisplayPowerController;->mValueOfVirtualZeroCandela:I

    int-to-float v15, v15

    add-float v12, v14, v15

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/power/DisplayPowerController;->mMinimumBrightnessStepValue:I

    float-to-int v14, v2

    mul-int/2addr v14, v8

    float-to-int v15, v11

    add-int v13, v14, v15

    const/4 v14, 0x0

    cmpl-float v14, v3, v14

    if-lez v14, :cond_1ee

    int-to-float v14, v13

    cmpg-float v14, v12, v14

    if-ltz v14, :cond_1f8

    :cond_1ee
    const/4 v14, 0x0

    cmpg-float v14, v3, v14

    if-gez v14, :cond_202

    int-to-float v14, v13

    cmpl-float v14, v12, v14

    if-lez v14, :cond_202

    :cond_1f8
    int-to-float v11, v13

    goto/16 :goto_3d

    :cond_1fb
    const v14, 0x3f666666

    move v15, v14

    goto :goto_1a5

    :cond_200
    neg-float v14, v2

    goto :goto_1ab

    :cond_202
    move v11, v12

    goto/16 :goto_3d

    :cond_205
    const-string v14, ""

    goto/16 :goto_da

    :cond_209
    const/4 v9, 0x0

    goto/16 :goto_f3

    :cond_20c
    const-string v14, "Disabled"

    goto/16 :goto_10d

    :cond_210
    const/4 v7, 0x0

    goto/16 :goto_13f

    :cond_213
    if-eqz p1, :cond_183

    if-nez v5, :cond_219

    if-eqz v6, :cond_183

    :cond_219
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v15, v15, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/power/DisplayPowerController;->sendBrightnessLevel(FZ)V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/power/DisplayPowerController;->sendLux(F)V

    goto/16 :goto_183
.end method

.method private updatePowerState()V
    .registers 13

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    iget-boolean v4, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightChanged:Z

    const/4 v5, 0x0

    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightChanged:Z

    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v9

    const/4 v6, 0x0

    :try_start_c
    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v6, :cond_14

    monitor-exit v9

    :cond_13
    :goto_13
    return-void

    :cond_14
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v6, :cond_11c

    new-instance v6, Lcom/android/server/power/DisplayPowerRequest;

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-direct {v6, v10}, Lcom/android/server/power/DisplayPowerRequest;-><init>(Lcom/android/server/power/DisplayPowerRequest;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    const/4 v0, 0x1

    :cond_33
    :goto_33
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    if-nez v6, :cond_183

    move v1, v7

    :goto_38
    monitor-exit v9
    :try_end_39
    .catchall {:try_start_c .. :try_end_39} :catchall_17e

    if-eqz v0, :cond_3e

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->initialize()V

    :cond_3e
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mWaitProximityToggled:Z

    if-nez v6, :cond_4c

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-ne v6, v7, :cond_4c

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    if-eqz v6, :cond_4c

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mWaitProximityToggled:Z

    :cond_4c
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mWaitProximityToggled:Z

    if-eqz v6, :cond_58

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-nez v6, :cond_58

    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mWaitProximityToggled:Z

    :cond_58
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v6, :cond_213

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v6, v6, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v6, :cond_1ca

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v6, :cond_186

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v6}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v6

    if-nez v6, :cond_186

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->lastGoToSleepReason:I

    if-nez v6, :cond_186

    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    :cond_7c
    :goto_7c
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v6, :cond_98

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mTiltSensor:Landroid/hardware/Sensor;

    if-eqz v6, :cond_98

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v6, v6, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v6, :cond_217

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v6}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v6

    if-eqz v6, :cond_217

    move v6, v7

    :goto_95
    invoke-direct {p0, v6, v4}, Lcom/android/server/power/DisplayPowerController;->setLightSensorEnabled(ZZ)V

    :cond_98
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v6}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v6

    if-eqz v6, :cond_22c

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    if-ltz v6, :cond_21a

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v6, :cond_21a

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    :goto_b0
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    const/4 v9, 0x2

    if-ne v6, v9, :cond_b9

    iput v3, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessOnCover:I

    :cond_b9
    invoke-direct {p0, v3}, Lcom/android/server/power/DisplayPowerController;->getFinalBrightness(I)I

    move-result v3

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-ne v6, v7, :cond_223

    add-int/lit8 v6, v3, -0xa

    iget v9, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v2, 0x0

    :cond_cc
    :goto_cc
    invoke-direct {p0, v3}, Lcom/android/server/power/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v9

    if-eqz v2, :cond_228

    const/16 v6, 0x1f4

    :goto_d4
    invoke-direct {p0, v9, v6}, Lcom/android/server/power/DisplayPowerController;->animateScreenBrightness(II)V

    :goto_d7
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v6}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v6

    if-eqz v6, :cond_235

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v6, :cond_e8

    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    :cond_e8
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v6, v6, Lcom/android/server/power/DisplayPowerRequest;->blockScreenOn:Z

    if-eqz v6, :cond_230

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->blockScreenOn()V

    :cond_f1
    :goto_f1
    if-eqz v1, :cond_13

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    if-nez v6, :cond_13

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Lcom/android/server/power/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_104
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v6, :cond_116

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_116

    const-string v6, "DisplayPowerController"

    const-string v8, "Display ready!"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_116
    monitor-exit v7
    :try_end_117
    .catchall {:try_start_104 .. :try_end_117} :catchall_247

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnStateChanged()V

    goto/16 :goto_13

    :cond_11c
    :try_start_11c
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v6, :cond_33

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    iget v10, v10, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_12d

    const/4 v4, 0x1

    :cond_12d
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v6, v6, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v10, v10, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    if-eq v6, v10, :cond_154

    const-string v6, "DisplayPowerController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[DAB] updatePowerState : autoBrightnessForEbookOnly : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v11, v11, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    :cond_154
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-ne v6, v7, :cond_181

    move v5, v7

    :goto_15b
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v6, v10}, Lcom/android/server/power/DisplayPowerRequest;->copyFrom(Lcom/android/server/power/DisplayPowerRequest;)V

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    iget-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    or-int/2addr v6, v10

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    iget-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    or-int/2addr v6, v10

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    goto/16 :goto_33

    :catchall_17e
    move-exception v6

    monitor-exit v9
    :try_end_180
    .catchall {:try_start_11c .. :try_end_180} :catchall_17e

    throw v6

    :cond_181
    move v5, v8

    goto :goto_15b

    :cond_183
    move v1, v8

    goto/16 :goto_38

    :cond_186
    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-ne v6, v7, :cond_1b8

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    if-nez v6, :cond_19b

    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityPositive()V

    goto/16 :goto_7c

    :cond_19b
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v6, :cond_7c

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    if-eqz v6, :cond_7c

    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    if-eqz v6, :cond_1b3

    const-string v6, "DisplayPowerController"

    const-string v9, "[sensor] proximity : mScreenOnEvenThoughProximityPositive is true"

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b3
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityNegative()V

    goto/16 :goto_7c

    :cond_1b8
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-nez v6, :cond_7c

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v6, :cond_7c

    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityNegative()V

    goto/16 :goto_7c

    :cond_1ca
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    if-eqz v6, :cond_200

    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v6}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v6

    if-eqz v6, :cond_1e9

    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityNegative()V

    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_7c

    :cond_1e9
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-eq v6, v7, :cond_7c

    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v6, :cond_1fc

    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityNegative()V

    :cond_1fc
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_7c

    :cond_200
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v6, :cond_7c

    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityNegative()V

    goto/16 :goto_7c

    :cond_213
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_7c

    :cond_217
    move v6, v8

    goto/16 :goto_95

    :cond_21a
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v3, v6, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    const/4 v2, 0x0

    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    goto/16 :goto_b0

    :cond_223
    if-eqz v5, :cond_cc

    const/4 v2, 0x0

    goto/16 :goto_cc

    :cond_228
    const/16 v6, 0x7d0

    goto/16 :goto_d4

    :cond_22c
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    goto/16 :goto_d7

    :cond_230
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->unblockScreenOn()V

    goto/16 :goto_f1

    :cond_235
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v6, :cond_23c

    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    :cond_23c
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v6, v6, Lcom/android/server/power/DisplayPowerRequest;->blockScreenOn:Z

    if-nez v6, :cond_f1

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->unblockScreenOn()V

    goto/16 :goto_f1

    :catchall_247
    move-exception v6

    :try_start_248
    monitor-exit v7
    :try_end_249
    .catchall {:try_start_248 .. :try_end_249} :catchall_247

    throw v6
.end method

.method private static wantScreenOn(I)Z
    .registers 2

    packed-switch p0, :pswitch_data_8

    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Display Controller Locked State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReadyLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestChangedLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingWaitForNegativeProximityLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingScreenOnEvenThoughProximityPositiveLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenOnEvenThoughProximityPositive="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingUpdatePowerStateLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_b4
    .catchall {:try_start_3 .. :try_end_b4} :catchall_171

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Display Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDimConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorWarmUpTimeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessOnCover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessOnCover:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/power/DisplayPowerController$6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/DisplayPowerController$6;-><init>(Lcom/android/server/power/DisplayPowerController;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_171
    move-exception v0

    :try_start_172
    monitor-exit v1
    :try_end_173
    .catchall {:try_start_172 .. :try_end_173} :catchall_171

    throw v0
.end method

.method public getScreenBrightnessOnCover()I
    .registers 2

    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessOnCover:I

    return v0
.end method

.method public isProximitySensorAvailable()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public requestButtonLedState(Z)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mUseButtonLedBrightnessConfig:Z

    if-eqz v0, :cond_24

    if-eqz p1, :cond_25

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mButtonLedState:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mButtonLight:Lcom/android/server/LightsService$Light;

    const/16 v1, 0x87

    invoke-virtual {v0, v1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mButtonLedState:Z

    :cond_14
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mButtonLedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mButtonLedUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mButtonLedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mButtonLedUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_24
    :goto_24
    return-void

    :cond_25
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mButtonLedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mButtonLedUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mButtonLedState:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v0}, Lcom/android/server/LightsService$Light;->turnOff()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mButtonLedState:Z

    goto :goto_24
.end method

.method public requestPowerState(Lcom/android/server/power/DisplayPowerRequest;ZZ)Z
    .registers 9

    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v1, :cond_26

    const-string v1, "DisplayPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPowerState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", waitForNegativeProximity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    if-eqz p2, :cond_34

    :try_start_2c
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    if-nez v1, :cond_34

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    const/4 v0, 0x1

    :cond_34
    if-eqz p3, :cond_58

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    if-nez v1, :cond_58

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    const/4 v0, 0x1

    const-string v1, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPendingScreenOnEvenThoughProximityPositiveLocked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v1, :cond_79

    new-instance v1, Lcom/android/server/power/DisplayPowerRequest;

    invoke-direct {v1, p1}, Lcom/android/server/power/DisplayPowerRequest;-><init>(Lcom/android/server/power/DisplayPowerRequest;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    const/4 v0, 0x1

    :cond_64
    :goto_64
    if-eqz v0, :cond_69

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    :cond_69
    if-eqz v0, :cond_75

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v1, :cond_75

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerStateLocked()V

    :cond_75
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    monitor-exit v2

    return v1

    :cond_79
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v1, p1}, Lcom/android/server/power/DisplayPowerRequest;->equals(Lcom/android/server/power/DisplayPowerRequest;)Z

    move-result v1

    if-nez v1, :cond_64

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v1, p1}, Lcom/android/server/power/DisplayPowerRequest;->copyFrom(Lcom/android/server/power/DisplayPowerRequest;)V

    const/4 v0, 0x1

    goto :goto_64

    :catchall_88
    move-exception v1

    monitor-exit v2
    :try_end_8a
    .catchall {:try_start_2c .. :try_end_8a} :catchall_88

    throw v1
.end method
