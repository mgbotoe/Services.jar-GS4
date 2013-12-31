.class public Lcom/android/server/enterprise/apn/ApnSettingsPolicy;
.super Landroid/app/enterprise/IApnSettingsPolicy$Stub;
.source "ApnSettingsPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;
    }
.end annotation


# static fields
.field public static AUTH_TYPE_CHAP:I = 0x0

.field public static AUTH_TYPE_NONE:I = 0x0

.field private static AUTH_TYPE_NOTSET:I = 0x0

.field public static AUTH_TYPE_PAP:I = 0x0

.field public static AUTH_TYPE_PAP_OR_CHAP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ApnSettingsPolicyService"


# instance fields
.field private dunRequired:Z

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_NOTSET:I

    const/4 v0, 0x0

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_NONE:I

    const/4 v0, 0x1

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_PAP:I

    const/4 v0, 0x2

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_CHAP:I

    const/4 v0, 0x3

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_PAP_OR_CHAP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/app/enterprise/IApnSettingsPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->dunRequired:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object p1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    return-void
.end method

.method private enforceApnPermission()I
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_APN"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getApnListConditionStr()Ljava/lang/String;
    .registers 9

    const/4 v7, 0x3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1b

    :cond_12
    const-string v5, "ApnSettingsPolicyService"

    const-string v6, "No SIM "

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1a
    :goto_1a
    return-object v0

    :cond_1b
    const-string v5, "gsm.sim.operator.numeric"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_1a

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1a

    if-eqz v2, :cond_1a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mcc = \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mnc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method private getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;
    .registers 6

    const-string v1, ""

    :try_start_2
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    const-string v1, ""
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    :cond_e
    :goto_e
    return-object v1

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private isValidApnId(J)Z
    .registers 14

    const/4 v10, 0x1

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    cmp-long v0, v3, p1

    if-gez v0, :cond_a2

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v0, "numeric"

    aput-object v0, v2, v10

    const-string v0, "type"

    aput-object v0, v2, v5

    :try_start_1a
    const-string v0, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const-string v0, "ApnSettingsPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValidApnId() row count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for apId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_8e

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8d

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "dun"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "mms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8a
    .catchall {:try_start_1a .. :try_end_8a} :catchall_9b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_8a} :catch_94

    move-result v0

    if-eqz v0, :cond_8e

    :cond_8d
    const/4 v8, 0x0

    :cond_8e
    if-eqz v6, :cond_93

    :goto_90
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_93
    :goto_93
    return v8

    :catch_94
    move-exception v7

    :try_start_95
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_9b

    if-eqz v6, :cond_93

    goto :goto_90

    :catchall_9b
    move-exception v0

    if-eqz v6, :cond_a1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a1
    throw v0

    :cond_a2
    const-string v0, "ApnSettingsPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValidApnId() : invalid apId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_93
.end method

.method private setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    if-eqz p1, :cond_31

    if-nez p4, :cond_2c

    const-string v0, ""

    :goto_6
    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_9
    const-string v0, "ApnSettingsPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColumnValue: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2c
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_31
    if-eqz p4, :cond_9

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private validateString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_3

    :goto_2
    return-object p1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized addUpdateApn(ZLandroid/app/enterprise/ApnSettings;)J
    .registers 39

    monitor-enter p0

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceApnPermission()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_34d

    const/16 v28, 0x1

    const-wide/16 v25, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-nez p2, :cond_11

    move-wide/from16 v33, v25

    :goto_f
    monitor-exit p0

    return-wide v33

    :cond_11
    :try_start_11
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/ApnSettings;->getId()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/ApnSettings;->getUser()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/ApnSettings;->getServer()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/ApnSettings;->getPassword()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/ApnSettings;->getProxy()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/ApnSettings;->getPort()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/ApnSettings;->getMmsProxy()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/ApnSettings;->getMmsc()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/ApnSettings;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/ApnSettings;->getAuthType()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/ApnSettings;->getName()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v33

    const/16 v34, 0x41

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_5b

    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "APN name maximum length (65)"

    invoke-static/range {v33 .. v34}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v33, -0x1

    goto :goto_f

    :cond_5b
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/ApnSettings;->getApn()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v33

    const/16 v34, 0x78

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_7d

    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "APN excedes maximum length (120)"

    invoke-static/range {v33 .. v34}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v33, -0x1

    goto :goto_f

    :cond_7d
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/ApnSettings;->getMcc()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/ApnSettings;->getMnc()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/ApnSettings;->getMmsPort()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a0
    .catchall {:try_start_11 .. :try_end_a0} :catchall_34d

    move-result-object v16

    :try_start_a1
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const/4 v14, -0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_be

    const-string v33, "*"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_be

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    :cond_be
    if-nez p1, :cond_c6

    const-wide/16 v33, 0x1

    cmp-long v33, v33, v5

    if-gtz v33, :cond_100

    :cond_c6
    if-eqz v15, :cond_100

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v33

    if-eqz v33, :cond_100

    if-eqz v19, :cond_100

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v33

    if-eqz v33, :cond_100

    if-eqz v20, :cond_100

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v33

    if-eqz v33, :cond_100

    if-eqz v8, :cond_100

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v33

    if-eqz v33, :cond_100

    const/16 v33, -0x1

    move/from16 v0, v33

    move/from16 v1, v22

    if-gt v0, v1, :cond_100

    const/16 v33, -0x1

    move/from16 v0, v33

    if-gt v0, v14, :cond_100

    const/16 v33, -0x2

    move/from16 v0, v33

    if-gt v0, v9, :cond_100

    const/16 v33, 0x3

    move/from16 v0, v33

    if-ge v0, v9, :cond_18f

    :cond_100
    const/16 v28, 0x0

    if-nez p1, :cond_124

    const-wide/16 v33, 0x1

    cmp-long v33, v33, v5

    if-lez v33, :cond_124

    const-string v33, "ApnSettingsPolicyService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "addUpdateAp() : invalid ap Id "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_124
    if-eqz v20, :cond_12c

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v33

    if-nez v33, :cond_133

    :cond_12c
    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "addUpdateAp() : invalid ap name"

    invoke-static/range {v33 .. v34}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_133
    if-eqz v8, :cond_13b

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v33

    if-nez v33, :cond_142

    :cond_13b
    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "addUpdateAp() : invalid ap apn"

    invoke-static/range {v33 .. v34}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_142
    if-eqz v15, :cond_14a

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v33

    if-nez v33, :cond_151

    :cond_14a
    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "addUpdateAp() : invalid ap mcc"

    invoke-static/range {v33 .. v34}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_151
    if-eqz v19, :cond_159

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v33

    if-nez v33, :cond_160

    :cond_159
    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "addUpdateAp() : invalid ap mnc"

    invoke-static/range {v33 .. v34}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_160
    const/16 v33, -0x1

    move/from16 v0, v33

    move/from16 v1, v22

    if-le v0, v1, :cond_16f

    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "addUpdateAp() : invalid ap port"

    invoke-static/range {v33 .. v34}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16f
    const/16 v33, -0x1

    move/from16 v0, v33

    if-le v0, v14, :cond_17c

    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "addUpdateAp() : invalid ap iMmsPort"

    invoke-static/range {v33 .. v34}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17c
    const/16 v33, -0x2

    move/from16 v0, v33

    if-gt v0, v9, :cond_188

    const/16 v33, 0x3

    move/from16 v0, v33

    if-ge v0, v9, :cond_18f

    :cond_188
    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "addUpdateAp() : invalid ap authType"

    invoke-static/range {v33 .. v34}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18f
    .catchall {:try_start_a1 .. :try_end_18f} :catchall_34d
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_18f} :catch_345

    :cond_18f
    :goto_18f
    if-eqz v28, :cond_341

    :try_start_191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const-string v34, "phone"

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1c5

    const/16 v33, 0x4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_1c5

    const/16 v33, 0x0

    const/16 v34, 0x3

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/16 v33, 0x3

    move/from16 v0, v33

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    :cond_1c5
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    const-string v33, "name"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v34, "numeric"

    if-eqz v15, :cond_21b

    if-nez v19, :cond_350

    :cond_21b
    const/16 v33, 0x0

    :goto_21d
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v34

    move-object/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v33, "mcc"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v33, "mnc"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v33, "apn"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v33, "user"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v33, "server"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v33, "password"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v33, "proxy"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v34, "port"

    if-ltz v22, :cond_369

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    :goto_297
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v34

    move-object/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v33, "mmsproxy"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v33, "mmsport"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v33, "mmsc"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_371

    const-string v33, "authtype"

    const/16 v34, -0x2

    move/from16 v0, v34

    if-ge v0, v9, :cond_36d

    const/16 v34, 0x4

    move/from16 v0, v34

    if-le v0, v9, :cond_36d

    :goto_2e1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2e8
    :goto_2e8
    const-string v33, "type"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v11, :cond_312

    if-eqz v10, :cond_312

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_312

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_312

    const-string v33, "current"

    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_312
    invoke-virtual/range {v32 .. v32}, Landroid/content/ContentValues;->size()I

    move-result v33

    if-lez v33, :cond_3cc

    if-eqz p1, :cond_392

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    sget-object v34, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v30

    if-eqz v30, :cond_38f

    const/16 v28, 0x1

    :goto_334
    if-eqz v28, :cond_341

    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "addUpdateAp Created rowUri : "

    invoke-static/range {v33 .. v34}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v30 .. v30}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_340
    .catchall {:try_start_191 .. :try_end_340} :catchall_34d
    .catch Ljava/lang/Exception; {:try_start_191 .. :try_end_340} :catch_38a

    move-result-wide v25

    :cond_341
    :goto_341
    move-wide/from16 v33, v25

    goto/16 :goto_f

    :catch_345
    move-exception v13

    const/16 v28, 0x0

    :try_start_348
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_34b
    .catchall {:try_start_348 .. :try_end_34b} :catchall_34d

    goto/16 :goto_18f

    :catchall_34d
    move-exception v33

    monitor-exit p0

    throw v33

    :cond_350
    :try_start_350
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_21d

    :cond_369
    const-string v33, ""

    goto/16 :goto_297

    :cond_36d
    sget v9, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_NOTSET:I

    goto/16 :goto_2e1

    :cond_371
    if-nez p1, :cond_2e8

    const/16 v33, -0x2

    move/from16 v0, v33

    if-ge v0, v9, :cond_2e8

    const/16 v33, 0x4

    move/from16 v0, v33

    if-le v0, v9, :cond_2e8

    const-string v33, "authtype"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_388
    .catchall {:try_start_350 .. :try_end_388} :catchall_34d
    .catch Ljava/lang/Exception; {:try_start_350 .. :try_end_388} :catch_38a

    goto/16 :goto_2e8

    :catch_38a
    move-exception v13

    :try_start_38b
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_38e
    .catchall {:try_start_38b .. :try_end_38e} :catchall_34d

    goto :goto_341

    :cond_38f
    const/16 v28, 0x0

    goto :goto_334

    :cond_392
    :try_start_392
    sget-object v33, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v33

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v24

    if-lez v24, :cond_3c9

    const/16 v28, 0x1

    :goto_3ba
    if-eqz v28, :cond_341

    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "addUpdateAp Updated rowUri : "

    invoke-static/range {v33 .. v34}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v30 .. v30}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v25

    goto/16 :goto_341

    :cond_3c9
    const/16 v28, 0x0

    goto :goto_3ba

    :cond_3cc
    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "addUpdateAp Error: Empty dataset."

    invoke-static/range {v33 .. v34}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d3
    .catchall {:try_start_392 .. :try_end_3d3} :catchall_34d
    .catch Ljava/lang/Exception; {:try_start_392 .. :try_end_3d3} :catch_38a

    goto/16 :goto_341
.end method

.method public declared-synchronized deleteApn(J)Z
    .registers 10

    const/4 v3, 0x0

    monitor-enter p0

    const/4 v1, -0x1

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceApnPermission()I

    const-wide/16 v4, 0x1

    cmp-long v4, v4, p1

    if-lez v4, :cond_15

    const-string v4, "ApnSettingsPolicyService"

    const-string v5, "deleteAp : apId is invalid"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_48

    :cond_13
    :goto_13
    monitor-exit p0

    return v3

    :cond_15
    :try_start_15
    sget-object v4, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const-string v4, "ApnSettingsPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteAp : deleted rowCount from ApTable : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_15 .. :try_end_3f} :catchall_48
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3f} :catch_43

    :goto_3f
    if-lez v1, :cond_13

    const/4 v3, 0x1

    goto :goto_13

    :catch_43
    move-exception v0

    :try_start_44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_3f

    :catchall_48
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getApnList()Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/ApnSettings;",
            ">;"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceApnPermission()I

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/16 v1, 0xf

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "mcc"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "mnc"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, "apn"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v3, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v3, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v3, v1

    const/16 v1, 0x8

    const-string v2, "proxy"

    aput-object v2, v3, v1

    const/16 v1, 0x9

    const-string v2, "port"

    aput-object v2, v3, v1

    const/16 v1, 0xa

    const-string v2, "mmsproxy"

    aput-object v2, v3, v1

    const/16 v1, 0xb

    const-string v2, "mmsport"

    aput-object v2, v3, v1

    const/16 v1, 0xc

    const-string v2, "mmsc"

    aput-object v2, v3, v1

    const/16 v1, 0xd

    const-string v2, "authtype"

    aput-object v2, v3, v1

    const/16 v1, 0xe

    const-string v2, "type"

    aput-object v2, v3, v1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getApnListConditionStr()Ljava/lang/String;

    move-result-object v4

    :try_start_5f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_148

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_148

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_7c
    .catchall {:try_start_5f .. :try_end_7c} :catchall_155
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_7c} :catch_14e

    :cond_7c
    :try_start_7c
    new-instance v9, Landroid/app/enterprise/ApnSettings;

    invoke-direct {v9}, Landroid/app/enterprise/ApnSettings;-><init>()V

    const-string v1, "_id"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v9, v13, v14}, Landroid/app/enterprise/ApnSettings;->setId(J)V

    const-string v1, "name"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setName(Ljava/lang/String;)V

    const-string v1, "mcc"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setMcc(Ljava/lang/String;)V

    const-string v1, "mnc"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setMnc(Ljava/lang/String;)V

    const-string v1, "apn"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setApn(Ljava/lang/String;)V

    const-string v1, "user"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setUser(Ljava/lang/String;)V

    const-string v1, "server"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setServer(Ljava/lang/String;)V

    const-string v1, "password"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setPassword(Ljava/lang/String;)V

    const-string v1, "proxy"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setProxy(Ljava/lang/String;)V

    const-string v1, "port"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_fd

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v9, v15}, Landroid/app/enterprise/ApnSettings;->setPort(I)V

    :cond_fd
    const-string v1, "mmsproxy"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setMmsProxy(Ljava/lang/String;)V

    const-string v1, "mmsport"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setMmsPort(Ljava/lang/String;)V

    const-string v1, "mmsc"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setMmsc(Ljava/lang/String;)V

    const-string v1, "authtype"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_133

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/app/enterprise/ApnSettings;->setAuthType(I)V

    :cond_133
    const-string v1, "type"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setType(Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_144
    .catchall {:try_start_7c .. :try_end_144} :catchall_15c
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_144} :catch_15f

    move-result v1

    if-nez v1, :cond_7c

    move-object v7, v8

    :cond_148
    if-eqz v11, :cond_14d

    :goto_14a
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_14d
    return-object v7

    :catch_14e
    move-exception v12

    :goto_14f
    :try_start_14f
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_152
    .catchall {:try_start_14f .. :try_end_152} :catchall_155

    if-eqz v11, :cond_14d

    goto :goto_14a

    :catchall_155
    move-exception v1

    :goto_156
    if-eqz v11, :cond_15b

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_15b
    throw v1

    :catchall_15c
    move-exception v1

    move-object v7, v8

    goto :goto_156

    :catch_15f
    move-exception v12

    move-object v7, v8

    goto :goto_14f
.end method

.method public getApnSettings(J)Landroid/app/enterprise/ApnSettings;
    .registers 21

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceApnPermission()I

    const/4 v15, -0x1

    const/4 v10, 0x0

    const-wide/16 v4, 0x1

    cmp-long v2, v4, p1

    if-lez v2, :cond_14

    const-string v2, "ApnSettingsPolicyService"

    const-string v4, "getApnSettings : apId is invalid"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    :cond_13
    :goto_13
    return-object v8

    :cond_14
    :try_start_14
    sget-object v2, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_110

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_110

    new-instance v8, Landroid/app/enterprise/ApnSettings;

    invoke-direct {v8}, Landroid/app/enterprise/ApnSettings;-><init>()V

    const-string v2, "_id"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Landroid/app/enterprise/ApnSettings;->setId(J)V

    const-string v2, "name"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setName(Ljava/lang/String;)V

    const-string v2, "mcc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setMcc(Ljava/lang/String;)V

    const-string v2, "mnc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setMnc(Ljava/lang/String;)V

    const-string v2, "apn"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setApn(Ljava/lang/String;)V

    const-string v2, "user"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setUser(Ljava/lang/String;)V

    const-string v2, "server"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setServer(Ljava/lang/String;)V

    const-string v2, "password"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setPassword(Ljava/lang/String;)V

    const-string v2, "proxy"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setProxy(Ljava/lang/String;)V

    const-string v2, "port"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v8, v14}, Landroid/app/enterprise/ApnSettings;->setPort(I)V

    :cond_b5
    const-string v2, "mmsproxy"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setMmsProxy(Ljava/lang/String;)V

    const-string v2, "mmsport"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setMmsPort(Ljava/lang/String;)V

    const-string v2, "mmsc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setMmsc(Ljava/lang/String;)V

    const-string v2, "authtype"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_eb

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/app/enterprise/ApnSettings;->setAuthType(I)V

    :cond_eb
    const-string v2, "type"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setType(Ljava/lang/String;)V
    :try_end_f6
    .catchall {:try_start_14 .. :try_end_f6} :catchall_109
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_f6} :catch_fd

    if-eqz v10, :cond_13

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_13

    :catch_fd
    move-exception v11

    :try_start_fe
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_101
    .catchall {:try_start_fe .. :try_end_101} :catchall_109

    if-eqz v10, :cond_106

    :goto_103
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_106
    const/4 v8, 0x0

    goto/16 :goto_13

    :catchall_109
    move-exception v2

    if-eqz v10, :cond_10f

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_10f
    throw v2

    :cond_110
    if-eqz v10, :cond_106

    goto :goto_103
.end method

.method public getPreferredApn()Landroid/app/enterprise/ApnSettings;
    .registers 12

    invoke-direct {p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceApnPermission()I

    const/4 v6, 0x0

    const/4 v9, 0x0

    const-string v0, "ApnSettingsPolicyService"

    const-string v1, "getPreferredApn():"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_c
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "apn"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_62

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_62

    const-string v0, "_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v0, "ApnSettingsPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredApn():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-lez v0, :cond_62

    invoke-virtual {p0, v7, v8}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getApnSettings(J)Landroid/app/enterprise/ApnSettings;
    :try_end_61
    .catchall {:try_start_c .. :try_end_61} :catchall_84
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_61} :catch_68

    move-result-object v6

    :cond_62
    if-eqz v9, :cond_67

    :goto_64
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_67
    return-object v6

    :catch_68
    move-exception v10

    :try_start_69
    const-string v0, "ApnSettingsPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredApn Ex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_81
    .catchall {:try_start_69 .. :try_end_81} :catchall_84

    if-eqz v9, :cond_67

    goto :goto_64

    :catchall_84
    move-exception v0

    if-eqz v9, :cond_8a

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8a
    throw v0
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

.method public declared-synchronized setPreferredApn(J)Z
    .registers 11

    const-wide/16 v5, 0x0

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_4
    invoke-direct {p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceApnPermission()I
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_72

    cmp-long v4, v5, p1

    if-eqz v4, :cond_29

    cmp-long v4, v5, p1

    if-lez v4, :cond_29

    :try_start_f
    const-string v4, "ApnSettingsPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPreferedAp() : invalid ap Id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_72
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_27} :catch_6d

    :cond_27
    :goto_27
    monitor-exit p0

    return v2

    :cond_29
    :try_start_29
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->isValidApnId(J)Z

    move-result v4

    if-eqz v4, :cond_27

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "apn_id"

    cmp-long v5, v5, p1

    if-nez v5, :cond_3c

    const-wide/16 p1, -0x1

    :cond_3c
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_75

    const/4 v2, 0x1

    :goto_54
    const-string v4, "ApnSettingsPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPreferedAp() row count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_29 .. :try_end_6c} :catchall_72
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_6c} :catch_6d

    goto :goto_27

    :catch_6d
    move-exception v0

    :try_start_6e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    goto :goto_27

    :catchall_72
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_75
    const/4 v2, 0x0

    goto :goto_54
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method
