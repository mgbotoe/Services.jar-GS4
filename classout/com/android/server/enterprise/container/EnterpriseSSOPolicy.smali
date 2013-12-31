.class public Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
.super Lcom/sec/enterprise/knox/IEnterpriseSSOPolicy$Stub;
.source "EnterpriseSSOPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;,
        Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;,
        Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;
    }
.end annotation


# static fields
.field private static final CONTAINER_REMOVED:Ljava/lang/String; = "enterprise.container.uninstalled"

.field private static final CONTAINER_SETUP_FAILURE:Ljava/lang/String; = "enterprise.container.setup.failure"

.field private static final CONTAINER_SETUP_SUCCESS:Ljava/lang/String; = "enterprise.container.setup.success"

.field private static final EMPTY_SIZE:I = 0x0

.field private static final INTENT_SSO_SERVICE_DISCONNECTED:Ljava/lang/String; = "sso.enterprise.container.disconnected"

.field private static final INTENT_SSO_SERVICE_SETUP_SUCCESS:Ljava/lang/String; = "sso.enterprise.container.setup.success"


# instance fields
.field private final CONTAINER1_ACTION_SSO_SERVICE:Ljava/lang/String;

.field private final CONTAINER2_ACTION_SSO_SERVICE:Ljava/lang/String;

.field private final CONTAINER3_ACTION_SSO_SERVICE:Ljava/lang/String;

.field private final CONTAINER_1:I

.field private final CONTAINER_2:I

.field private final CONTAINER_3:I

.field private final SSO_BIND_RESULT_DUPLICATE_REQ:I

.field private final SSO_BIND_RESULT_FAILURE:I

.field private final SSO_BIND_RESULT_SUCCESS:I

.field private final SSO_BIND_SUCCESS:I

.field private final SSO_SERVICE_PACKAGE:Ljava/lang/String;

.field private final SSO_TYPE_VALUE:I

.field private final TAG:Ljava/lang/String;

.field private final UNKNOWNAPI:Ljava/lang/String;

.field cSignConnect1:Landroid/content/ServiceConnection;

.field cSignConnect2:Landroid/content/ServiceConnection;

.field cSignConnect3:Landroid/content/ServiceConnection;

.field private mBroadCastReciever:Landroid/content/BroadcastReceiver;

.field private mContainerPolicy:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

.field private mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

.field private mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

.field private mSSOServiceInitialized:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/enterprise/knox/IEnterpriseSSOPolicy$Stub;-><init>()V

    const-string v0, "EnterpriseSSOPolicy Service"

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->TAG:Ljava/lang/String;

    const-string v0, "com.centrify.sso.samsung"

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->SSO_SERVICE_PACKAGE:Ljava/lang/String;

    const-string v0, "API Not Supported"

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->UNKNOWNAPI:Ljava/lang/String;

    const-string v0, "sec_container_1.com.samsung.safe.auth.mgmt"

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->CONTAINER1_ACTION_SSO_SERVICE:Ljava/lang/String;

    const-string v0, "sec_container_2.com.samsung.safe.auth.mgmt"

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->CONTAINER2_ACTION_SSO_SERVICE:Ljava/lang/String;

    const-string v0, "sec_container_3.com.samsung.safe.auth.mgmt"

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->CONTAINER3_ACTION_SSO_SERVICE:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->SSO_TYPE_VALUE:I

    iput v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->SSO_BIND_SUCCESS:I

    iput v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->CONTAINER_1:I

    iput v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->CONTAINER_2:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->CONTAINER_3:I

    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iput-boolean v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    iput v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->SSO_BIND_RESULT_FAILURE:I

    iput v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->SSO_BIND_RESULT_SUCCESS:I

    iput v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->SSO_BIND_RESULT_DUPLICATE_REQ:I

    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1;-><init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mBroadCastReciever:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;-><init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->cSignConnect1:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;-><init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->cSignConnect2:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$4;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$4;-><init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->cSignConnect3:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;-><init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;-><init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;-><init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->registerReciever()V

    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->getContainerPolicy()Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->isSSOServiceInstalled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfaces(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    return-object v0
.end method

.method private bindSSOInterfaces(I)I
    .registers 7

    const/4 v4, 0x1

    const-string v1, "EnterpriseSSOPolicy Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindSSOInterfaces() containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_cc

    const-string v1, "EnterpriseSSOPolicy Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindSSOInterfaces(). default case. success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    return v0

    :pswitch_36
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v1, v1, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-nez v1, :cond_67

    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "sec_container_1.com.samsung.safe.auth.mgmt"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->cSignConnect1:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-ne v4, v1, :cond_4e

    const/4 v0, 0x1

    :cond_4e
    :goto_4e
    const-string v1, "EnterpriseSSOPolicy Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindSSOInterfaces(). CONTAINER_1 case. CONTAINER1_ACTION_SSO_SERVICE:sec_container_1.com.samsung.safe.auth.mgmt, success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    :cond_67
    const-string v1, "EnterpriseSSOPolicy Service"

    const-string v2, "centrifyInterface already connected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    goto :goto_4e

    :pswitch_70
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "sec_container_2.com.samsung.safe.auth.mgmt"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->cSignConnect2:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-ne v4, v1, :cond_9b

    const/4 v0, 0x1

    :goto_82
    const-string v1, "EnterpriseSSOPolicy Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindSSOInterfaces(). CONTAINER_2 case. success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    :cond_9b
    const/4 v0, 0x0

    goto :goto_82

    :pswitch_9d
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "sec_container_3.com.samsung.safe.auth.mgmt"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->cSignConnect3:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-ne v4, v1, :cond_c9

    const/4 v0, 0x1

    :goto_af
    const-string v1, "EnterpriseSSOPolicy Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindSSOInterfaces(). CONTAINER_3 case. success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    :cond_c9
    const/4 v0, 0x0

    goto :goto_af

    nop

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_36
        :pswitch_70
        :pswitch_9d
    .end packed-switch
.end method

.method private enforceEnterpriseSSOPermission()I
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_ENTERPRISE_SSO"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getContainerPolicy()Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContainerPolicy:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    if-nez v0, :cond_d

    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContainerPolicy:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    :cond_d
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContainerPolicy:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_17

    const-string v0, "EnterpriseSSOPolicy Service"

    const-string v1, "SSO: getEDM()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_17
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private isSSOServiceInstalled(I)Z
    .registers 10

    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->getContainerPolicy()Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerPackages(I)[Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v3, :cond_34

    aget-object v4, v0, v2

    const-string v5, "com.centrify.sso.samsung"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    const-string v5, "EnterpriseSSOPolicy Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " FOUND: com.centrify.sso.samsung in the container: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    :goto_30
    return v5

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_34
    const-string v5, "EnterpriseSSOPolicy Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " NOT FOUND: com.centrify.sso.samsung in the container: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_30
.end method


# virtual methods
.method public deleteSSOWhiteList(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v10, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    const/4 v6, 0x0

    new-instance v6, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v6}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    iget-boolean v8, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v8, :cond_1b

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    invoke-virtual {v6, v9, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    :cond_1a
    :goto_1a
    return-object v6

    :cond_1b
    if-nez p2, :cond_26

    :try_start_1d
    const-string v8, "EnterpriseSSOPolicy Service"

    const-string v9, " deleteSSOWhiteList: parameter type is Null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    goto :goto_1a

    :cond_26
    if-nez p4, :cond_31

    const-string v8, "EnterpriseSSOPolicy Service"

    const-string v9, " deleteSSOWhiteList packageName is Null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    goto :goto_1a

    :cond_31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3b
    :goto_3b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_3b

    iget-object v8, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContainerPolicy:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    invoke-virtual {v8, p1, v5}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_54} :catch_55

    goto :goto_3b

    :catch_55
    move-exception v3

    const-string v7, "EnterpriseSSOPolicy Service"

    const-string v8, "Failed at EnterpriseSSOPolicy API deleteSSOWhiteList-Exception"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    :cond_5e
    :try_start_5e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_6d

    const-string v8, "EnterpriseSSOPolicy Service"

    const-string v9, "deleteSSOWhiteList: packageName List has only one Null item"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    goto :goto_1a

    :cond_6d
    const-string v7, "centrify"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_104

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    packed-switch p1, :pswitch_data_114

    const-string v7, "EnterpriseSSOPolicy Service"

    const-string v8, " deleteSSOWhiteList. default"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :pswitch_8c
    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v7, :cond_1a

    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v7, v7, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v7, :cond_1a

    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v7, v7, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    const/4 v8, 0x0

    invoke-interface {v7, v2, v8}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->setAppAllowedState([Ljava/lang/String;Z)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v7, "EnterpriseSSOPolicy Service"

    const-string v8, " deleteSSOWhiteList. CONTAINER_1"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    :pswitch_b4
    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    if-eqz v7, :cond_1a

    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v7, v7, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    if-eqz v7, :cond_1a

    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v7, v7, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    const/4 v8, 0x0

    invoke-interface {v7, v2, v8}, Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;->setAppAllowedState([Ljava/lang/String;Z)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v7, "EnterpriseSSOPolicy Service"

    const-string v8, " deleteSSOWhiteList. CONTAINER_2"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    :pswitch_dc
    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    if-eqz v7, :cond_1a

    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v7, v7, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    if-eqz v7, :cond_1a

    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v7, v7, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    const/4 v8, 0x0

    invoke-interface {v7, v2, v8}, Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;->setAppAllowedState([Ljava/lang/String;Z)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v7, "EnterpriseSSOPolicy Service"

    const-string v8, " deleteSSOWhiteList. CONTAINER_3"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    :cond_104
    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_111} :catch_55

    goto/16 :goto_1a

    nop

    :pswitch_data_114
    .packed-switch 0x1
        :pswitch_8c
        :pswitch_b4
        :pswitch_dc
    .end packed-switch
.end method

.method public forceReauthenticate(ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v4, -0x1

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    const/4 v1, 0x0

    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    iget-boolean v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v2, :cond_1a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    :cond_19
    :goto_19
    return-object v1

    :cond_1a
    if-nez p2, :cond_25

    :try_start_1c
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " forceReauthenticate: parameter type is Null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_19

    :cond_25
    const-string v2, "centrify"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    packed-switch p1, :pswitch_data_c4

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " forceReauthenticate. default"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_37} :catch_38

    goto :goto_19

    :catch_38
    move-exception v0

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, "Failed at EnterpriseSSOPolicy API forceReauthenticate-Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    :pswitch_41
    :try_start_41
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    invoke-interface {v2}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->forceReauthenticate()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " forceReauthenticate. CONTAINER_1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :pswitch_67
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    invoke-interface {v2}, Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;->forceReauthenticate()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " forceReauthenticate. CONTAINER_2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :pswitch_8d
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    invoke-interface {v2}, Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;->forceReauthenticate()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " forceReauthenticate. CONTAINER_3"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    :cond_b4
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_c1} :catch_38

    goto/16 :goto_19

    nop

    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_41
        :pswitch_67
        :pswitch_8d
    .end packed-switch
.end method

.method public getAppAllowedState(ILjava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    const/4 v1, 0x0

    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    iget-boolean v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v3, :cond_1b

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    invoke-virtual {v1, v5, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    :cond_1a
    :goto_1a
    return-object v1

    :cond_1b
    if-nez p2, :cond_26

    :try_start_1d
    const-string v3, "EnterpriseSSOPolicy Service"

    const-string v4, " getAppAllowedState: parameter type is Null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_1a

    :cond_26
    if-nez p3, :cond_31

    const-string v3, "EnterpriseSSOPolicy Service"

    const-string v4, " getAppAllowedState: parameter packageName is Null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_1a

    :cond_31
    const-string v2, "centrify"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d3

    packed-switch p1, :pswitch_data_e2

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " getAppAllowedState. default"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_43} :catch_44

    goto :goto_1a

    :catch_44
    move-exception v0

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, "Failed at EnterpriseSSOPolicy API getAppAllowedState-Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    :pswitch_4d
    :try_start_4d
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContainerPolicy:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    invoke-virtual {v3, p1, p3}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->getAppAllowedState(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " getAppAllowedState. CONTAINER_1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :pswitch_79
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContainerPolicy:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    invoke-virtual {v3, p1, p3}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;->getAppAllowedState(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " getAppAllowedState. CONTAINER_2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    :pswitch_a6
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContainerPolicy:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    invoke-virtual {v3, p1, p3}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;->getAppAllowedState(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " getAppAllowedState. CONTAINER_3"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    :cond_d3
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_e0} :catch_44

    goto/16 :goto_1a

    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_79
        :pswitch_a6
    .end packed-switch
.end method

.method public getSSOCustomerId(ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    const-string v2, "EnterpriseSSOPolicy Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSSOCustomerId() containerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    iget-boolean v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v2, :cond_2f

    const-string v2, "API Not Supported"

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    invoke-virtual {v1, v5, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    :cond_2e
    :goto_2e
    return-object v1

    :cond_2f
    if-nez p2, :cond_3a

    :try_start_31
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " getSSOCustomerId: parameter type is Null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_2e

    :cond_3a
    const-string v2, "centrify"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bd

    packed-switch p1, :pswitch_data_ca

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " getSSOCustomerId. default"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4c} :catch_4d

    goto :goto_2e

    :catch_4d
    move-exception v0

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, "Failed at EnterpriseSSOPolicy API getSSOCustomerId-Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e

    :pswitch_56
    :try_start_56
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    invoke-interface {v2}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->getCustomerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " getSSOCustomerId. CONTAINER_1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :pswitch_78
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    invoke-interface {v2}, Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;->getCustomerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " getSSOCustomerId. CONTAINER_2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :pswitch_9a
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    invoke-interface {v2}, Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;->getCustomerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " getSSOCustomerId. CONTAINER_3"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e

    :cond_bd
    const-string v2, "API Not Supported"

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_c7} :catch_4d

    goto/16 :goto_2e

    nop

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_56
        :pswitch_78
        :pswitch_9a
    .end packed-switch
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public registerReciever()V
    .registers 5

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, "SSO registerReciever() "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "enterprise.container.setup.success"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "enterprise.container.uninstalled"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mBroadCastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mBroadCastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mBroadCastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public setCustomerInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v4, -0x1

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    const/4 v1, 0x0

    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    iget-boolean v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v2, :cond_1a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    :cond_19
    :goto_19
    return-object v1

    :cond_1a
    if-nez p2, :cond_25

    :try_start_1c
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " setCustomerInfo: parameter type is Null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_19

    :cond_25
    const-string v2, "centrify"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    packed-switch p1, :pswitch_data_c4

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " setCustomerInfo. default"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_37} :catch_38

    goto :goto_19

    :catch_38
    move-exception v0

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, "Failed at EnterpriseSSOPolicy API setCustomerInfo-Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    :pswitch_41
    :try_start_41
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    invoke-interface {v2, p3, p4}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->setCustomerInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " setCustomerInfo. CONTAINER_1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :pswitch_67
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    invoke-interface {v2, p3, p4}, Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;->setCustomerInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " setCustomerInfo. CONTAINER_2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :pswitch_8d
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    invoke-interface {v2, p3, p4}, Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;->setCustomerInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " setCustomerInfo. CONTAINER_3"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    :cond_b4
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_c1} :catch_38

    goto/16 :goto_19

    nop

    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_41
        :pswitch_67
        :pswitch_8d
    .end packed-switch
.end method

.method public setSSOCustomerId(ILjava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v6, -0x1

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    const-string v2, "EnterpriseSSOPolicy Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSSOCustomerId() containerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    iget-boolean v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v2, :cond_32

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    invoke-virtual {v1, v5, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    :cond_31
    :goto_31
    return-object v1

    :cond_32
    if-nez p2, :cond_3d

    :try_start_34
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " setSSOCustomerId: parameter type is Null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_31

    :cond_3d
    const-string v2, "centrify"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc

    packed-switch p1, :pswitch_data_dc

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " setSSOCustomerId. default"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_4f} :catch_50

    goto :goto_31

    :catch_50
    move-exception v0

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, "Failed at EnterpriseSSOPolicy API setSSOCustomerId-Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    :pswitch_59
    :try_start_59
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    invoke-interface {v2, p3}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->setCustomerId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " setSSOCustomerId. CONTAINER_1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :pswitch_7f
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    invoke-interface {v2, p3}, Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;->setCustomerId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " setSSOCustomerId. CONTAINER_2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :pswitch_a5
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    invoke-interface {v2, p3}, Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;->setCustomerId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " setSSOCustomerId. CONTAINER_3"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31

    :cond_cc
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_d9} :catch_50

    goto/16 :goto_31

    nop

    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_59
        :pswitch_7f
        :pswitch_a5
    .end packed-switch
.end method

.method public setSSOWhiteList(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    const-string v7, "EnterpriseSSOPolicy Service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSSOWhiteList() containerId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    new-instance v6, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v6}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    iget-boolean v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v7, :cond_33

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    :cond_32
    :goto_32
    return-object v6

    :cond_33
    if-nez p2, :cond_3e

    :try_start_35
    const-string v7, "EnterpriseSSOPolicy Service"

    const-string v8, " setSSOWhiteList: parameter type is Null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto :goto_32

    :cond_3e
    if-nez p4, :cond_49

    const-string v7, "EnterpriseSSOPolicy Service"

    const-string v8, " setSSOWhiteList packageName is Null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto :goto_32

    :cond_49
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_53
    :goto_53
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_76

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_53

    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContainerPolicy:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    invoke-virtual {v7, p1, v5}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_53

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_6c} :catch_6d

    goto :goto_53

    :catch_6d
    move-exception v3

    const-string v7, "EnterpriseSSOPolicy Service"

    const-string v8, "Failed at EnterpriseSSOPolicy API setCustomerInfo-Exception"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32

    :cond_76
    :try_start_76
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_85

    const-string v7, "EnterpriseSSOPolicy Service"

    const-string v8, "setSSOWhiteList: packageName List has only one Null item"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto :goto_32

    :cond_85
    const-string v7, "centrify"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    packed-switch p1, :pswitch_data_12c

    const-string v7, "EnterpriseSSOPolicy Service"

    const-string v8, " setSSOWhiteList. default"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    :pswitch_a4
    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v7, :cond_32

    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v7, v7, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v7, :cond_32

    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v7, v7, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    const/4 v8, 0x1

    invoke-interface {v7, v0, v8}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->setAppAllowedState([Ljava/lang/String;Z)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v7, "EnterpriseSSOPolicy Service"

    const-string v8, " setSSOWhiteList. CONTAINER_1"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    :pswitch_cc
    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    if-eqz v7, :cond_32

    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v7, v7, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    if-eqz v7, :cond_32

    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v7, v7, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    const/4 v8, 0x1

    invoke-interface {v7, v0, v8}, Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;->setAppAllowedState([Ljava/lang/String;Z)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v7, "EnterpriseSSOPolicy Service"

    const-string v8, " setSSOWhiteList. CONTAINER_2"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    :pswitch_f4
    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    if-eqz v7, :cond_32

    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v7, v7, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    if-eqz v7, :cond_32

    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v7, v7, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    const/4 v8, 0x1

    invoke-interface {v7, v0, v8}, Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;->setAppAllowedState([Ljava/lang/String;Z)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v7, "EnterpriseSSOPolicy Service"

    const-string v8, " setSSOWhiteList. CONTAINER_3"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    :cond_11c
    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_129} :catch_6d

    goto/16 :goto_32

    nop

    :pswitch_data_12c
    .packed-switch 0x1
        :pswitch_a4
        :pswitch_cc
        :pswitch_f4
    .end packed-switch
.end method

.method public setupSSO(ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    const-string v3, "EnterpriseSSOPolicy Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupSSO() containerId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    if-nez p2, :cond_2d

    :try_start_24
    const-string v3, "EnterpriseSSOPolicy Service"

    const-string v4, " setupSSO: parameter type is Null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_2c
    return-object v1

    :cond_2d
    const-string v3, "centrify"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfaces(I)I

    move-result v2

    const-string v3, "EnterpriseSSOPolicy Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupSSO() containerId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". result of sso bind: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v6, v2, :cond_60

    const/4 v3, 0x2

    if-ne v3, v2, :cond_77

    :cond_60
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_6d} :catch_6e

    goto :goto_2c

    :catch_6e
    move-exception v0

    const-string v3, "EnterpriseSSOPolicy Service"

    const-string v4, "Failed at EnterpriseSSOPolicy API setSSOCustomerId-Exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    :cond_77
    const/4 v3, -0x1

    :try_start_78
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_2c

    :cond_85
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_92} :catch_6e

    goto :goto_2c
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method

.method public unenroll(ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v4, -0x1

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    const/4 v1, 0x0

    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    iget-boolean v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v2, :cond_1a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    :cond_19
    :goto_19
    return-object v1

    :cond_1a
    if-nez p2, :cond_25

    :try_start_1c
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " unenroll: parameter type is Null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_19

    :cond_25
    const-string v2, "centrify"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    packed-switch p1, :pswitch_data_c4

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " unenroll. default"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_37} :catch_38

    goto :goto_19

    :catch_38
    move-exception v0

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, "Failed at EnterpriseSSOPolicy API unenroll-Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    :pswitch_41
    :try_start_41
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    invoke-interface {v2}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->unenroll()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " unenroll. CONTAINER_1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :pswitch_67
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    invoke-interface {v2}, Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;->unenroll()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " unenroll. CONTAINER_2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :pswitch_8d
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    invoke-interface {v2}, Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;->unenroll()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " unenroll. CONTAINER_3"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    :cond_b4
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_c1} :catch_38

    goto/16 :goto_19

    nop

    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_41
        :pswitch_67
        :pswitch_8d
    .end packed-switch
.end method
