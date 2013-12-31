.class public Lcom/android/server/enterprise/utils/EDMNativeHelper;
.super Ljava/lang/Object;
.source "EDMNativeHelper.java"


# static fields
.field public static final AVRCP_RESTRICTION_INTENT:I = 0x3

.field public static final CAMERA_RESTRICTION_INTENT:I = 0x1

.field public static final MIC_RESTRICTION_INTENT:I = 0x2

.field public static TAG:Ljava/lang/String;

.field public static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "EDMNativeHelper"

    sput-object v0, Lcom/android/server/enterprise/utils/EDMNativeHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/utils/EDMNativeHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initService(Landroid/content/Context;)V
    .registers 3

    sput-object p0, Lcom/android/server/enterprise/utils/EDMNativeHelper;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/enterprise/utils/EDMNativeHelper$1;

    invoke-direct {v1}, Lcom/android/server/enterprise/utils/EDMNativeHelper$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static isAVRCPProfileEnabled()Z
    .registers 3

    const/4 v1, 0x1

    const-string v2, "bluetooth_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    if-eqz v0, :cond_11

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isProfileEnabledInternal(IZ)Z

    move-result v1

    :cond_11
    return v1
.end method

.method public static isBTOutgoingCallEnabled()Z
    .registers 3

    const/4 v1, 0x1

    const-string v2, "bluetooth_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    if-eqz v0, :cond_f

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isOutgoingCallsAllowed(Z)Z

    move-result v1

    :cond_f
    return v1
.end method

.method public static isCameraEnabled(I)Z
    .registers 7

    const/4 v3, 0x1

    const-string v4, "restriction_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v2, :cond_10

    invoke-virtual {v2, p0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabledEx(IZ)Z

    move-result v0

    :cond_f
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    sget-object v4, Lcom/android/server/enterprise/utils/EDMNativeHelper;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_f

    const/4 v4, 0x0

    invoke-virtual {v1, v4, p0}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabledWithUID(Landroid/content/ComponentName;I)Z

    move-result v4

    if-nez v4, :cond_26

    move v0, v3

    :goto_25
    goto :goto_f

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public static isScreenCaptureEnabled()Z
    .registers 3

    const/4 v1, 0x1

    const-string v2, "restriction_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v0, :cond_f

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabledEx(Z)Z

    move-result v1

    :cond_f
    return v1
.end method

.method public static nativeLogger(IIZILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string v0, "nativeLogger"

    const-string v1, "Native Logger on JAVA"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendIntent(I)V
    .registers 5

    sget-object v1, Lcom/android/server/enterprise/utils/EDMNativeHelper;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_e

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    packed-switch p0, :pswitch_data_42

    :cond_e
    :goto_e
    return-void

    :pswitch_f
    const-string v1, "message"

    sget-object v2, Lcom/android/server/enterprise/utils/EDMNativeHelper;->mContext:Landroid/content/Context;

    const v3, 0x104026f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1d
    sget-object v1, Lcom/android/server/enterprise/utils/EDMNativeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_e

    :pswitch_23
    const-string v1, "message"

    sget-object v2, Lcom/android/server/enterprise/utils/EDMNativeHelper;->mContext:Landroid/content/Context;

    const v3, 0x1040270

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1d

    :pswitch_32
    const-string v1, "message"

    sget-object v2, Lcom/android/server/enterprise/utils/EDMNativeHelper;->mContext:Landroid/content/Context;

    const v3, 0x10402ab

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1d

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_f
        :pswitch_23
        :pswitch_32
    .end packed-switch
.end method
