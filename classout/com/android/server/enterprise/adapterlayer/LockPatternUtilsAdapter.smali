.class public Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;
.super Ljava/lang/Object;
.source "LockPatternUtilsAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LockPatternUtilsAdapter"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;

.field private static mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;
    .registers 4

    const-class v1, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;

    if-nez v0, :cond_19

    sput-object p0, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;

    invoke-direct {v0}, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v2, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    :cond_19
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    monitor-exit v1

    return-object v0

    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .registers 2

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    return-object v0
.end method

.method public getKeyguardStoredPasswordQuality()I
    .registers 2

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    return v0
.end method

.method public isDeviceSecure()Z
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_a

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_a
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_11

    move-result v1

    :goto_10
    return v1

    :catch_11
    move-exception v0

    const/4 v1, 0x0

    const-string v2, "LockPatternUtilsAdapter"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public isLockPasswordEnabled()Z
    .registers 2

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    return v0
.end method
