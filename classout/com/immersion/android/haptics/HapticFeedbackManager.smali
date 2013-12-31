.class public Lcom/immersion/android/haptics/HapticFeedbackManager;
.super Ljava/lang/Object;
.source "HapticFeedbackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;,
        Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;,
        Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;
    }
.end annotation


# static fields
.field public static final DEFAULT_THEME_CONTENT_URI:Ljava/lang/String; = "content://com.immersion.android.haptics.defaulttheme"

.field public static final DEVICE_HANDLE_ARRAY_SIZE:I = 0x2

.field private static final MAX_IMMVIBE_INITIALIZATION_ATTEMPTS:I = 0xf

.field public static final TAG:Ljava/lang/String; = "HapticFeedbackManager"

.field public static final UI_DEVICE_HANDLE_INDEX:I = 0x0

.field public static final UI_NOTIFICATION_DEVICE_HANDLE_INDEX:I = 0x1


# instance fields
.field private mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

.field private mBootedAndInitialized:Z

.field private mCalledFromProxy:Z

.field private mCanUseTouchSenseAPI:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentUserID:I

.field private mDevices:[Lcom/immersion/WrappableDevice;

.field private mImmVibeInitAttempts:I

.field private mImmVibeInitializeContentObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;

.field mKeyboardTapVibePattern:[J

.field mLongPressVibePattern:[J

.field private mLooper:Landroid/os/Looper;

.field mSafeModeDisabledVibePattern:[J

.field mSafeModeEnabledVibePattern:[J

.field private mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

.field private mUserThemeObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;

.field private mVibrator:Landroid/os/Vibrator;

.field mVirtualKeyVibePattern:[J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/immersion/android/haptics/HapticFeedbackManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Z)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/immersion/WrappableDevice;

    iput-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mUserThemeObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitializeContentObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    iput-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    iput-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    iput v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitAttempts:I

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mLooper:Landroid/os/Looper;

    iput-object p1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    iput-object p2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mLooper:Landroid/os/Looper;

    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_initialized"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    invoke-direct {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->immVibeInitialize()V

    iget-boolean v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->loadActiveTheme()V

    :cond_3f
    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    :cond_4b
    invoke-virtual {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->registerSettingsContentObservers()V

    invoke-virtual {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->setupPackageBroadcastReceiver()V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCurrentUserID:I

    return-void
.end method

.method static synthetic access$000(Lcom/immersion/android/haptics/HapticFeedbackManager;)Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    return v0
.end method

.method static synthetic access$200(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    return v0
.end method

.method static synthetic access$300(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    return v0
.end method

.method static synthetic access$302(Lcom/immersion/android/haptics/HapticFeedbackManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    return p1
.end method

.method static synthetic access$400(Lcom/immersion/android/haptics/HapticFeedbackManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/immersion/android/haptics/HapticFeedbackManager;)Landroid/os/Vibrator;
    .registers 2

    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$502(Lcom/immersion/android/haptics/HapticFeedbackManager;Landroid/os/Vibrator;)Landroid/os/Vibrator;
    .registers 2

    iput-object p1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    return-object p1
.end method

.method static synthetic access$600(Lcom/immersion/android/haptics/HapticFeedbackManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->immVibeInitialize()V

    return-void
.end method

.method static synthetic access$700(Lcom/immersion/android/haptics/HapticFeedbackManager;)Lcom/immersion/android/haptics/HapticFeedbackTheme;
    .registers 2

    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    return-object v0
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .registers 7

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v2, 0x0

    :cond_7
    return-object v2

    :cond_8
    array-length v3, v0

    new-array v2, v3, [J

    const/4 v1, 0x0

    :goto_c
    array-length v3, v0

    if-ge v1, v3, :cond_7

    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method private immVibeInitialize()V
    .registers 7

    const/4 v3, 0x4

    const/4 v4, 0x1

    iget-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    if-nez v2, :cond_16

    const-string v2, "HapticFeedbackManager"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "HapticFeedbackManager"

    const-string v3, "ImmVibeInitialize called but system has not finished booting"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitAttempts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitAttempts:I

    :try_start_1c
    iget-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    if-eqz v2, :cond_136

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_initialized"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_83

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_ui_devicehandle"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v3, 0x0

    new-instance v4, Lcom/immersion/WrappableDevice;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/immersion/WrappableDevice;-><init>(II)V

    aput-object v4, v2, v3

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/immersion/WrappableDevice;->getPropertyInt32(I)I

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_ui_notification_devicehandle"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v3, 0x1

    new-instance v4, Lcom/immersion/WrappableDevice;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/immersion/WrappableDevice;-><init>(II)V

    aput-object v4, v2, v3

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/immersion/WrappableDevice;->getPropertyInt32(I)I

    const-string v2, "HapticFeedbackManager"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_80

    const-string v2, "HapticFeedbackManager"

    const-string v3, "Using existing device handle (called from proxy)."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_80
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    :cond_83
    :goto_83
    const-string v2, "HapticFeedbackManager"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_b2

    const-string v2, "HapticFeedbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy is \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. mCanUseTouchSenseAPI ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catchall {:try_start_1c .. :try_end_b2} :catchall_2b6
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_b2} :catch_1c1

    :cond_b2
    :try_start_b2
    iget-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-nez v2, :cond_15

    iget-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    if-nez v2, :cond_c6

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_initialized"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_c6
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070027

    invoke-static {v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mLongPressVibePattern:[J

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070028

    invoke-static {v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVirtualKeyVibePattern:[J

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070029

    invoke-static {v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mKeyboardTapVibePattern:[J

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107002a

    invoke-static {v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeDisabledVibePattern:[J

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107002b

    invoke-static {v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeEnabledVibePattern:[J
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_111} :catch_113

    goto/16 :goto_15

    :catch_113
    move-exception v0

    const-string v2, "HapticFeedbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy is \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. Exception caught in HapticFeedbackManager(...)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_131
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    :cond_136
    :try_start_136
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v3, 0x0

    new-instance v4, Lcom/immersion/WrappableDevice;

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/immersion/Device;->newDevice(I)Lcom/immersion/Device;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/immersion/WrappableDevice;-><init>(Lcom/immersion/Device;)V

    aput-object v4, v2, v3

    const/16 v2, 0xbb8

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/immersion/WrappableDevice;->getCapabilityInt32(I)I

    move-result v3

    if-eq v2, v3, :cond_295

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/immersion/WrappableDevice;->close()V

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v3, 0x0

    new-instance v4, Lcom/immersion/WrappableDevice;

    invoke-static {}, Lcom/immersion/Device;->newDevice()Lcom/immersion/Device;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/immersion/WrappableDevice;-><init>(Lcom/immersion/Device;)V

    aput-object v4, v2, v3

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v3, 0x1

    new-instance v4, Lcom/immersion/WrappableDevice;

    invoke-static {}, Lcom/immersion/Device;->newDevice()Lcom/immersion/Device;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/immersion/WrappableDevice;-><init>(Lcom/immersion/Device;)V

    aput-object v4, v2, v3

    const-string v2, "HapticFeedbackManager"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_188

    const-string v2, "HapticFeedbackManager"

    const-string v3, "Opening composite devices for keyboard, UI and notifications"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_188
    :goto_188
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_ui_devicehandle"

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/immersion/WrappableDevice;->getDeviceHandle()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_ui_notification_devicehandle"

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/immersion/WrappableDevice;->getDeviceHandle()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_initialized"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1bf
    .catchall {:try_start_136 .. :try_end_1bf} :catchall_2b6
    .catch Ljava/lang/Throwable; {:try_start_136 .. :try_end_1bf} :catch_1c1

    goto/16 :goto_83

    :catch_1c1
    move-exception v0

    const/4 v2, 0x0

    :try_start_1c3
    iput-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    const-string v2, "HapticFeedbackManager"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_214

    const-string v2, "HapticFeedbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy is \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. Exception caught in HapticFeedbackManager(...)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v2, "HapticFeedbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy is \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. mCanUseTouchSenseAPI ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_214
    .catchall {:try_start_1c3 .. :try_end_214} :catchall_2b6

    :cond_214
    :try_start_214
    iget-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-nez v2, :cond_15

    iget-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    if-nez v2, :cond_228

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_initialized"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_228
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070027

    invoke-static {v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mLongPressVibePattern:[J

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070028

    invoke-static {v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVirtualKeyVibePattern:[J

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070029

    invoke-static {v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mKeyboardTapVibePattern:[J

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107002a

    invoke-static {v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeDisabledVibePattern:[J

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107002b

    invoke-static {v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeEnabledVibePattern:[J
    :try_end_273
    .catch Ljava/lang/Exception; {:try_start_214 .. :try_end_273} :catch_275

    goto/16 :goto_15

    :catch_275
    move-exception v0

    const-string v2, "HapticFeedbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy is \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. Exception caught in HapticFeedbackManager(...)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_131

    :cond_295
    :try_start_295
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v3, 0x1

    new-instance v4, Lcom/immersion/WrappableDevice;

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/immersion/Device;->newDevice(I)Lcom/immersion/Device;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/immersion/WrappableDevice;-><init>(Lcom/immersion/Device;)V

    aput-object v4, v2, v3

    const-string v2, "HapticFeedbackManager"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_188

    const-string v2, "HapticFeedbackManager"

    const-string v3, "3000 Edition, Opening single device for keyboard and UI"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b4
    .catchall {:try_start_295 .. :try_end_2b4} :catchall_2b6
    .catch Ljava/lang/Throwable; {:try_start_295 .. :try_end_2b4} :catch_1c1

    goto/16 :goto_188

    :catchall_2b6
    move-exception v2

    :try_start_2b7
    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-nez v3, :cond_316

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    if-nez v3, :cond_2cb

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_initialized"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2cb
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070027

    invoke-static {v3, v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mLongPressVibePattern:[J

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070028

    invoke-static {v3, v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVirtualKeyVibePattern:[J

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070029

    invoke-static {v3, v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mKeyboardTapVibePattern:[J

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107002a

    invoke-static {v3, v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeDisabledVibePattern:[J

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107002b

    invoke-static {v3, v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeEnabledVibePattern:[J
    :try_end_316
    .catch Ljava/lang/Exception; {:try_start_2b7 .. :try_end_316} :catch_317

    :cond_316
    :goto_316
    throw v2

    :catch_317
    move-exception v0

    const-string v3, "HapticFeedbackManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proxy is \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'. Exception caught in HapticFeedbackManager(...)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_316
.end method


# virtual methods
.method public canPlayHDEffects()Z
    .registers 3

    iget-boolean v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-nez v0, :cond_d

    iget v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitAttempts:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_d

    invoke-direct {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->immVibeInitialize()V

    :cond_d
    iget-boolean v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    return v0
.end method

.method public cancel()V
    .registers 6

    :try_start_0
    iget-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-eqz v2, :cond_2b

    const/4 v1, 0x0

    :goto_5
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    array-length v2, v2

    if-ge v1, v2, :cond_1a

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    aget-object v2, v2, v1

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/immersion/WrappableDevice;->stopAllPlayingEffects()V

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1a
    const-string v2, "HapticFeedbackManager"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2a

    const-string v2, "HapticFeedbackManager"

    const-string v3, "canceled all playing effects for all devices :"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    if-nez v2, :cond_3b

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    :cond_3b
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41

    goto :goto_2a

    :catch_41
    move-exception v0

    const-string v2, "HapticFeedbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy is \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. Exception caught in cancel()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a
.end method

.method public cancel(I)V
    .registers 6

    :try_start_0
    iget-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-eqz v1, :cond_5c

    if-lez p1, :cond_32

    const/4 v1, 0x2

    if-ge p1, v1, :cond_32

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/immersion/WrappableDevice;->stopAllPlayingEffects()V

    const-string v1, "HapticFeedbackManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canceled all playing effects for device :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    :goto_31
    return-void

    :cond_32
    const-string v1, "HapticFeedbackManager"

    const-string v2, "deviceHandle is not supported"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    goto :goto_31

    :catch_3a
    move-exception v0

    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. Exception caught in cancel()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    :cond_5c
    :try_start_5c
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_6c

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    :cond_6c
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_71} :catch_3a

    goto :goto_31
.end method

.method protected deviceForEffectId(I)I
    .registers 3

    const/16 v0, 0x63ce

    if-eq p1, v0, :cond_c

    const/16 v0, 0x63d8

    if-eq p1, v0, :cond_c

    const/16 v0, 0x4f4c

    if-ne p1, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected finalize()V
    .registers 4

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mUserThemeObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitializeContentObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_19
    return-void
.end method

.method public loadActiveTheme()V
    .registers 5

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_theme"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_39

    const-string v1, "HapticFeedbackManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. loadActiveTheme() --> strTheme is null, reverting to default theme"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    const-string v0, "content://com.immersion.android.haptics.defaulttheme"

    :cond_39
    invoke-virtual {p0, v0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->loadActiveTheme(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized loadActiveTheme(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    if-nez p1, :cond_5

    :try_start_3
    const-string p1, "content://com.immersion.android.haptics.defaulttheme"

    :cond_5
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    if-nez v1, :cond_41

    const-string v1, "HapticFeedbackManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_32

    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. loadActiveTheme() --> mActiveTheme is null. First time being loaded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    new-instance v1, Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    invoke-direct {v1, p1, v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackTheme;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;[Lcom/immersion/Device;)V

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    :cond_41
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iget-object v1, v1, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_83

    const-string v1, "HapticFeedbackManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_74

    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. loadActiveTheme() --> active theme has changed. Loading new theme"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    new-instance v1, Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    invoke-direct {v1, p1, v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackTheme;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;[Lcom/immersion/Device;)V

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    :cond_83
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    invoke-virtual {v1}, Lcom/immersion/android/haptics/HapticFeedbackTheme;->ping()V

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iget-boolean v1, v1, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    if-nez v1, :cond_d7

    const-string v1, "HapticFeedbackManager"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_b7

    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. loadActiveTheme() --> problem with currently active theme. Switching back to default theme."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b7
    const-string p1, "content://com.immersion.android.haptics.defaulttheme"

    new-instance v1, Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    invoke-direct {v1, p1, v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackTheme;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;[Lcom/immersion/Device;)V

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iget-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    if-nez v1, :cond_d7

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_theme"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_d7
    const-string v1, "HapticFeedbackManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_108

    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. loadActiveTheme() --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iget-object v3, v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mAuthority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_108
    .catchall {:try_start_3 .. :try_end_108} :catchall_12c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_108} :catch_10a

    :cond_108
    :goto_108
    monitor-exit p0

    return-void

    :catch_10a
    move-exception v0

    :try_start_10b
    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. Exception caught in loadActiveTheme()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12b
    .catchall {:try_start_10b .. :try_end_12b} :catchall_12c

    goto :goto_108

    :catchall_12c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public notifySystemBoot()V
    .registers 5

    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    invoke-direct {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->immVibeInitialize()V

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    if-nez v1, :cond_11

    iget-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->loadActiveTheme()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_12

    :cond_11
    :goto_11
    return-void

    :catch_12
    move-exception v0

    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. Exception caught in notifySystemBoot()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public performHapticFeedback(IZ)Z
    .registers 5

    const-string v0, "HapticFeedbackManager"

    const-string v1, "[JK] Before call performHapticFeedback(null, effectId, always);"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/immersion/android/haptics/HapticFeedbackManager;->performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v0

    return v0
.end method

.method public performHapticFeedback(IZ[JLcom/immersion/IVTBuffer;II)Z
    .registers 15

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    if-nez v4, :cond_17

    const-string v2, "HapticFeedbackManager"

    const/4 v4, 0x4

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "HapticFeedbackManager"

    const-string v4, "PerformHapticFeedback but system has not finished booting"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :goto_16
    return v3

    :cond_17
    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-nez v4, :cond_24

    iget v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitAttempts:I

    const/16 v5, 0xf

    if-ge v4, v5, :cond_24

    invoke-direct {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->immVibeInitialize()V

    :cond_24
    :try_start_24
    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    if-nez v4, :cond_51

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "haptic_feedback_enabled"

    const/4 v6, 0x0

    iget v7, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCurrentUserID:I

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_4f

    move v1, v2

    :goto_3a
    if-nez p2, :cond_3e

    if-nez v1, :cond_16

    :cond_3e
    if-eqz p4, :cond_64

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-eqz v4, :cond_64

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    aget-object v4, v4, p6

    const/4 v5, 0x0

    int-to-byte v6, p5

    invoke-virtual {v4, p4, v5, v6}, Lcom/immersion/WrappableDevice;->playIVTEffectRepeat(Lcom/immersion/IVTBuffer;IB)Lcom/immersion/EffectHandle;

    move v3, v2

    goto :goto_16

    :cond_4f
    move v1, v3

    goto :goto_3a

    :cond_51
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "haptic_feedback_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_62

    move v1, v2

    :goto_61
    goto :goto_3a

    :cond_62
    move v1, v3

    goto :goto_61

    :cond_64
    if-eqz p3, :cond_a3

    array-length v4, p3

    if-lez v4, :cond_a3

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    if-eqz v4, :cond_a3

    array-length v4, p3

    if-ne v4, v2, :cond_7a

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v5, 0x0

    aget-wide v5, p3, v5

    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    :goto_78
    move v3, v2

    goto :goto_16

    :cond_7a
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v4, p3, p5}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_7f} :catch_80

    goto :goto_78

    :catch_80
    move-exception v0

    const-string v2, "HapticFeedbackManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proxy is \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'. Exception caught in performHapticFeedback(...)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_16

    :cond_a3
    const/4 v2, 0x0

    :try_start_a4
    invoke-virtual {p0, v2, p1, p2, p6}, Lcom/immersion/android/haptics/HapticFeedbackManager;->performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZI)Z
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a7} :catch_80

    move-result v3

    goto/16 :goto_16
.end method

.method public performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .registers 6

    const-string v0, "HapticFeedbackManager"

    const-string v1, "[JK] Before call performHapticFeedback(win, effectId, always, deviceForEffectId(effectId));"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/immersion/android/haptics/HapticFeedbackManager;->deviceForEffectId(I)I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZI)Z

    move-result v0

    return v0
.end method

.method public performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZI)Z
    .registers 15

    const/4 v9, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v4, "HapticFeedbackManager"

    const-string v7, "[JK] Enter performHapticFeedback(WindowState win, int effectId, boolean always,int deviceHandle)"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "HapticFeedbackManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[JK] effectId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "always : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "deviceHandle : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    if-nez v4, :cond_4a

    const-string v4, "HapticFeedbackManager"

    invoke-static {v4, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_49

    const-string v4, "HapticFeedbackManager"

    const-string v5, "PerformHapticFeedback called but system has not finished booting"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    :goto_49
    return v6

    :cond_4a
    const-string v4, "HapticFeedbackManager"

    const-string v7, "[JK] In performHapticFeedback - 1"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-nez v4, :cond_5e

    iget v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitAttempts:I

    const/16 v7, 0xf

    if-ge v4, v7, :cond_5e

    invoke-direct {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->immVibeInitialize()V

    :cond_5e
    const-string v4, "HapticFeedbackManager"

    const-string v7, "[JK] In performHapticFeedback - 2"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_65
    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    if-nez v4, :cond_d5

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "haptic_feedback_enabled"

    const/4 v8, 0x0

    iget v9, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCurrentUserID:I

    invoke-static {v4, v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_d3

    move v1, v5

    :goto_7b
    const-string v4, "HapticFeedbackManager"

    const-string v7, "[JK] In performHapticFeedback - 3"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "HapticFeedbackManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[JK] always : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "hapticsDisabled : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_e8

    if-eqz v1, :cond_e8

    const-string v4, "HapticFeedbackManager"

    const-string v5, "[JK] In performHapticFeedback - 4 : return false"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_af} :catch_b0

    goto :goto_49

    :catch_b0
    move-exception v0

    const-string v4, "HapticFeedbackManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Proxy is \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\'. Exception caught in performHapticFeedback(...)"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_49

    :cond_d3
    move v1, v6

    goto :goto_7b

    :cond_d5
    :try_start_d5
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "haptic_feedback_enabled"

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_e6

    move v1, v5

    :goto_e5
    goto :goto_7b

    :cond_e6
    move v1, v6

    goto :goto_e5

    :cond_e8
    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-eqz v4, :cond_1b7

    const-string v4, "HapticFeedbackManager"

    const-string v7, "[JK] In performHapticFeedback - 5"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "HapticFeedbackManager"

    const/4 v7, 0x4

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_12e

    sget-object v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    if-nez v2, :cond_13f

    const-string v4, "HapticFeedbackManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Proxy is \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'. performHapticFeedback() via TouchSense API: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12e
    :goto_12e
    const/16 v4, 0x5460

    if-ne p2, v4, :cond_168

    const-string v4, "HapticFeedbackManager"

    const-string v7, "[JK] In performHapticFeedback - 6"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->cancel()V

    move v6, v5

    goto/16 :goto_49

    :cond_13f
    const-string v7, "HapticFeedbackManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Proxy is \'"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v8, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\'. performHapticFeedback() via TouchSense API: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12e

    :cond_168
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    if-nez v4, :cond_185

    const-string v4, "HapticFeedbackManager"

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_17c

    const-string v4, "HapticFeedbackManager"

    const-string v5, "mActiveTheme is NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17c
    const-string v4, "HapticFeedbackManager"

    const-string v5, "[JK] In performHapticFeedback - 7"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49

    :cond_185
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    aget-object v4, v4, p4

    if-nez v4, :cond_1a4

    const-string v4, "HapticFeedbackManager"

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_19b

    const-string v4, "HapticFeedbackManager"

    const-string v5, "mDevices[deviceHandle] is NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19b
    const-string v4, "HapticFeedbackManager"

    const-string v5, "[JK] In performHapticFeedback - 8"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49

    :cond_1a4
    const-string v4, "HapticFeedbackManager"

    const-string v5, "[JK] In performHapticFeedback - 9"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iget-object v5, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    aget-object v5, v5, p4

    invoke-virtual {v4, p2, v5}, Lcom/immersion/android/haptics/HapticFeedbackTheme;->performHapticFeedback(ILcom/immersion/Device;)Z

    move-result v6

    goto/16 :goto_49

    :cond_1b7
    const-string v4, "HapticFeedbackManager"

    const-string v7, "[JK] In performHapticFeedback - 10"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "HapticFeedbackManager"

    const/4 v7, 0x4

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1e7

    const-string v4, "HapticFeedbackManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Proxy is \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'. performHapticFeedback() via Google Vibrator API"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e7
    const/4 v3, 0x0

    sparse-switch p2, :sswitch_data_218

    goto/16 :goto_49

    :sswitch_1ed
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mLongPressVibePattern:[J

    :goto_1ef
    array-length v4, v3

    if-ne v4, v5, :cond_210

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v7, 0x0

    aget-wide v7, v3, v7

    invoke-virtual {v4, v7, v8}, Landroid/os/Vibrator;->vibrate(J)V

    :goto_1fa
    const-string v4, "HapticFeedbackManager"

    const-string v7, "[JK] In performHapticFeedback - 11"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    goto/16 :goto_49

    :sswitch_204
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVirtualKeyVibePattern:[J

    goto :goto_1ef

    :sswitch_207
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mKeyboardTapVibePattern:[J

    goto :goto_1ef

    :sswitch_20a
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeDisabledVibePattern:[J

    goto :goto_1ef

    :sswitch_20d
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeEnabledVibePattern:[J

    goto :goto_1ef

    :cond_210
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v7, -0x1

    invoke-virtual {v4, v3, v7}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_216
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_216} :catch_b0

    goto :goto_1fa

    nop

    :sswitch_data_218
    .sparse-switch
        0x0 -> :sswitch_1ed
        0x1 -> :sswitch_204
        0x3 -> :sswitch_207
        0x2710 -> :sswitch_20a
        0x2711 -> :sswitch_20d
        0x61a8 -> :sswitch_207
        0x6220 -> :sswitch_207
        0x622a -> :sswitch_207
        0x6234 -> :sswitch_207
        0x623e -> :sswitch_207
    .end sparse-switch
.end method

.method protected registerSettingsContentObservers()V
    .registers 7

    :try_start_0
    new-instance v3, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;

    invoke-direct {v3, p0, p0}, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;-><init>(Lcom/immersion/android/haptics/HapticFeedbackManager;Lcom/immersion/android/haptics/HapticFeedbackManager;)V

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mUserThemeObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;

    new-instance v3, Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;

    invoke-direct {v3, p0, p0}, Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;-><init>(Lcom/immersion/android/haptics/HapticFeedbackManager;Lcom/immersion/android/haptics/HapticFeedbackManager;)V

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitializeContentObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_2e

    const-string v3, "haptic_feedback_theme"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mUserThemeObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v3, "haptic_feedback_initialized"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitializeContentObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    :cond_2e
    :goto_2e
    return-void

    :catch_2f
    move-exception v1

    const-string v3, "HapticFeedbackManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proxy is \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'. Exception caught in setupPackageBroadcastReceiver()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e
.end method

.method protected setupPackageBroadcastReceiver()V
    .registers 6

    :try_start_0
    new-instance v2, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    invoke-direct {v2, p0, p0}, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;-><init>(Lcom/immersion/android/haptics/HapticFeedbackManager;Lcom/immersion/android/haptics/HapticFeedbackManager;)V

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HAPTIC_THEME_SWITCHED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_45

    :goto_44
    return-void

    :catch_45
    move-exception v0

    const-string v2, "HapticFeedbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy is \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. Exception caught in setupPackageBroadcastReceiver()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44
.end method
