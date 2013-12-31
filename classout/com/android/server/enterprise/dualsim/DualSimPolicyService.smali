.class public Lcom/android/server/enterprise/dualsim/DualSimPolicyService;
.super Landroid/app/enterprise/dualsim/IDualSimPolicy$Stub;
.source "DualSimPolicyService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "DualSimPolicyService"

.field private static mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Landroid/app/enterprise/dualsim/IDualSimPolicy$Stub;-><init>()V

    const-string v0, "DualSimPolicyService"

    const-string v1, "DualSimPolicy Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    return-void
.end method

.method private enforceDualSimPermission()I
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_DUAL_SIM"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public addPhoneToWhiteList(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceDualSimPermission()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v2, v1, p1, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->addPhoneToSimcardWhiteList(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_11
    return v0
.end method

.method public checkPrivilegedNumber(Ljava/lang/String;I)I
    .registers 19

    const-string v13, "DualSimPolicyService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "checkPrivilegedNumber ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v13

    if-eqz v13, :cond_185

    sget-object v13, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    const/4 v13, 0x0

    invoke-static {v13}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->hasIccCard(I)Z

    move-result v13

    if-nez v13, :cond_35

    sget-object v13, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    const/4 v13, 0x1

    invoke-static {v13}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->hasIccCard(I)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_35

    const/16 p2, 0x1

    :cond_35
    sget-object v13, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getIccId(I)Ljava/lang/String;

    move-result-object v3

    const-string v13, "DualSimPolicyService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "checkPrivilegedNumber iccID= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v13, v3}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(Ljava/lang/String;)Z

    move-result v4

    const/4 v7, 0x0

    const-string v13, "DualSimPolicyService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Checking "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " with sim card slot = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Icc id ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " coporate="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "SIM inserted ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getInsertedSimCount()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v11, p2

    const/4 v12, 0x0

    :goto_a9
    :try_start_a9
    sget-object v13, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getInsertedSimCount()I

    move-result v13

    if-ge v12, v13, :cond_165

    const-string v13, "DualSimPolicyService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Loop check - SIM "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    const/4 v14, -0x1

    sget-object v15, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v11}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getIccId(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->getWhiteListForSimcard(ILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_14e

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_14e

    if-eqz p1, :cond_14e

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_14e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    const-string v13, "DualSimPolicyService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Compiled regex was "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "and the number is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " found at simSlot= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_e6

    const-string v13, "DualSimPolicyService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found at sim list =>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    move/from16 p2, v11

    move/from16 v10, p2

    :goto_14d
    return v10

    :cond_14e
    add-int/lit8 v11, v11, 0x1

    sget-object v13, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getInsertedSimCount()I
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_155} :catch_15d

    move-result v13

    if-ne v11, v13, :cond_159

    const/4 v11, 0x0

    :cond_159
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_a9

    :catch_15d
    move-exception v1

    const-string v13, "DualSimPolicyService"

    const-string v14, ">>> checkPrivilegedNumber - exception"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_165
    if-eqz v4, :cond_185

    if-nez v7, :cond_185

    const/16 p2, 0xff

    const-string v13, "DualSimPolicyService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Corporate SIM and number not found at any list, block call "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_185
    move/from16 v10, p2

    goto :goto_14d
.end method

.method public clearWhiteList(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceDualSimPermission()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->clearWhiteList(ILjava/lang/String;)Z

    move-result v0

    :cond_11
    return v0
.end method

.method public forceDataSim(Ljava/lang/String;Z)Z
    .registers 10

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v5

    if-eqz v5, :cond_63

    const-string v5, "DualSimPolicyService"

    const-string v6, "forceDataSim - Begin"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceDualSimPermission()I

    move-result v4

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v5}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->getForcedDataSimcard()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_65

    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v5, v4, p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v5, v4, v0}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_33

    :cond_2d
    if-eqz v0, :cond_33

    const/4 v5, 0x0

    :goto_30
    return v5

    :cond_31
    add-int/lit8 v1, v1, 0x1

    :cond_33
    sget-object v5, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getInsertedSimCount()I

    move-result v5

    if-ge v1, v5, :cond_5a

    sget-object v5, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v5, v4, p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    sget-object v5, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->switchToSimDataNetwork(I)Z

    sget-object v5, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->setActiveSimForData(I)V

    const/4 v3, 0x1

    :cond_5a
    const/4 v5, 0x1

    if-ne v3, v5, :cond_63

    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->forceDataThroughSimcard(Ljava/lang/String;)Z

    move-result v3

    :cond_63
    :goto_63
    move v5, v3

    goto :goto_30

    :cond_65
    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v5, v4, v0}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6f

    if-nez v0, :cond_63

    :cond_6f
    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v5}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->disableForceData()Z

    move-result v3

    goto :goto_63
.end method

.method public getActiveSimForCall()Ljava/lang/String;
    .registers 7

    const/4 v5, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getDefaultSimForVoiceCalls()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v2

    if-eqz v2, :cond_46

    const-string v2, "DualSimPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveSimForCall() >> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getDefaultSimForVoiceCalls()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->hasIccCard(I)Z

    move-result v2

    if-nez v2, :cond_40

    sget-object v2, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v5}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->hasIccCard(I)Z

    move-result v2

    if-ne v2, v5, :cond_40

    if-nez v0, :cond_40

    const/4 v0, 0x1

    :cond_40
    sget-object v2, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getIccId(I)Ljava/lang/String;

    move-result-object v1

    :cond_46
    return-object v1
.end method

.method public getActiveSimForData()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "DualSimPolicyService"

    const-string v3, "getActiveDataSim - Begin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getActiveSimForData()I

    move-result v1

    sget-object v2, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getIccId(I)Ljava/lang/String;

    move-result-object v0

    :cond_1a
    return-object v0
.end method

.method public getActiveSimForMessage()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceDualSimPermission()I

    move-result v1

    const-string v2, "DualSimPolicyService"

    const-string v3, "getActiveSimForMessage() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->getActiveSimcardForMessaging()Ljava/lang/String;

    move-result-object v0

    :cond_18
    return-object v0
.end method

.method public getForcedDataSim()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "DualSimPolicyService"

    const-string v2, "getForcedDataSim - Begin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceDualSimPermission()I

    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isDataForced()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->getActiveSimForData()Ljava/lang/String;

    move-result-object v0

    :cond_1b
    return-object v0
.end method

.method public getIccId(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getIccId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteListForSimcard(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceDualSimPermission()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->getWhiteListForSimcard(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_15
    return-object v0
.end method

.method public isDataForced()Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "DualSimPolicyService"

    const-string v2, "isDataForced()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isDataForced()Z

    move-result v0

    :cond_14
    return v0
.end method

.method public isMdmDualSimAvailable()Z
    .registers 2

    sget-object v0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method public isSimCardCorporate(Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "DualSimPolicyService"

    const-string v1, "isSimCardCorporate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceDualSimPermission()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v0

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public onAdminAdded(I)V
    .registers 4

    const-string v0, "DualSimPolicyService"

    const-string v1, "onAdminAdded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 4

    const-string v0, "DualSimPolicyService"

    const-string v1, "onAdminRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 4

    const-string v0, "DualSimPolicyService"

    const-string v1, "onPreAdminRemoval"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removePhoneFromWhiteList(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceDualSimPermission()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v2, v1, p1, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->removePhoneFromSimcardWhiteList(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_11
    return v0
.end method

.method public setActiveSimForCall(Ljava/lang/String;)Z
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceDualSimPermission()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v3, v2, p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    sget-object v3, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getIccSlot(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0xff

    if-eq v0, v3, :cond_3b

    const-string v3, "DualSimPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setActiveSimForCall() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->setDefaultSimForVoiceCalls(I)Z

    move-result v1

    :cond_3b
    return v1
.end method

.method public setActiveSimForData(Ljava/lang/String;)Z
    .registers 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v4

    if-eqz v4, :cond_4d

    const-string v4, "DualSimPolicyService"

    const-string v5, "setDataSim - Begin"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceDualSimPermission()I

    move-result v3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isDataForced()Z

    move-result v4

    if-nez v4, :cond_22

    iget-object v4, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v4, v3, p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_26

    :cond_22
    const/4 v4, 0x0

    :goto_23
    return v4

    :cond_24
    add-int/lit8 v0, v0, 0x1

    :cond_26
    sget-object v4, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getInsertedSimCount()I

    move-result v4

    if-ge v0, v4, :cond_4d

    sget-object v4, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    iget-object v4, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v4, v3, p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    sget-object v4, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->switchToSimDataNetwork(I)Z

    sget-object v4, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->setActiveSimForData(I)V

    const/4 v2, 0x1

    :cond_4d
    move v4, v2

    goto :goto_23
.end method

.method public setActiveSimForMessage(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceDualSimPermission()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    const-string v2, "DualSimPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setActiveSimForMessage() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->setActiveSimcardForMessaging(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "DualSimPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDualSimDBProxy.setActiveSimcardForMessaging() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    return v0
.end method

.method public setCorporateSimCard(Ljava/lang/String;Z)Z
    .registers 10

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v4

    if-eqz v4, :cond_80

    const-string v4, "DualSimPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCorporateSimCard "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceDualSimPermission()I

    move-result v3

    sget-object v4, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getIccSlot(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xff

    if-ne v4, v5, :cond_47

    const-string v4, "DualSimPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "returning "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    :goto_46
    return v2

    :cond_47
    iget-object v4, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v4, v3, p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v0

    const-string v4, "DualSimPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " isCorporate? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v0, :cond_82

    move v1, p2

    :goto_68
    const-string v4, "DualSimPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_80
    move v2, v1

    goto :goto_46

    :cond_82
    if-eqz p2, :cond_8b

    iget-object v4, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v4, v3, p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->addCorporateSimcard(ILjava/lang/String;)Z

    move-result v1

    goto :goto_68

    :cond_8b
    iget-object v4, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v4, v3, p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->removeCorporateSimcard(ILjava/lang/String;)Z

    move-result v1

    goto :goto_68
.end method

.method public systemReady()V
    .registers 3

    const-string v0, "DualSimPolicyService"

    const-string v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
