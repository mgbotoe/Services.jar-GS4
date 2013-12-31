.class public Lcom/sec/knox/container/contentprovider/EcppStorageProvider;
.super Ljava/lang/Object;
.source "EcppStorageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/knox/container/contentprovider/EcppStorageProvider$EcppDbErrorHandler;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "EcppStorageProvider"


# instance fields
.field protected mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/sec/knox/container/contentprovider/EcppStorageProvider$EcppDbErrorHandler;

    invoke-direct {v2, p0}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider$EcppDbErrorHandler;-><init>(Lcom/sec/knox/container/contentprovider/EcppStorageProvider;)V

    invoke-static {p1, v2}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->getInstance(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    :try_start_e
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_17} :catch_18
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_17} :catch_36
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_54

    :goto_17
    return-void

    :catch_18
    move-exception v1

    const-string v2, "EcppStorageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to OPEN/CREATE the database. getWritableDatabase SQLiteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :catch_36
    move-exception v1

    const-string v2, "EcppStorageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to OPEN/CREATE the database. enableWriteAheadLogging IllegalStateException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :catch_54
    move-exception v1

    const-string v2, "EcppStorageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to OPEN/CREATE the database. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method

.method private getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 9

    const-string v0, ""

    if-nez p1, :cond_6

    move-object v1, v0

    :goto_5
    return-object v1

    :cond_6
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2f

    const-string v5, "\'"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2f
    move-object v1, v0

    goto :goto_5
.end method


# virtual methods
.method public checkOldPasswordHistory(I[B)Z
    .registers 11

    const/4 v7, 0x0

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "containerID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v4, "PASSWORD_HISTORY"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "oldPasswordHashValue"

    aput-object v6, v5, v7

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_41

    :cond_27
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {p2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_27

    const/4 v1, 0x1

    :cond_3e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_41
    return v1
.end method

.method public getAllowBluetoothMode(ILandroid/content/ComponentName;)I
    .registers 12

    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowBluetoothMode"

    const/4 v5, 0x0

    const-wide/16 v6, 0x2

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;ZJ)J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_10

    move-result-wide v0

    long-to-int v0, v0

    :goto_f
    return v0

    :catch_10
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x2

    goto :goto_f
.end method

.method public getAllowBrowser(ILandroid/content/ComponentName;)Z
    .registers 11

    const/4 v7, 0x1

    :try_start_1
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowBrowser"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v0

    :goto_d
    return v0

    :catch_e
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    goto :goto_d
.end method

.method public getAllowCamera(ILandroid/content/ComponentName;)Z
    .registers 11

    const/4 v7, 0x1

    :try_start_1
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowCamera"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v0

    :goto_d
    return v0

    :catch_e
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    goto :goto_d
.end method

.method public getAllowDesktopSync(ILandroid/content/ComponentName;)Z
    .registers 11

    const/4 v7, 0x1

    :try_start_1
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowDesktopSync"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v0

    :goto_d
    return v0

    :catch_e
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    goto :goto_d
.end method

.method public getAllowInternetSharing(ILandroid/content/ComponentName;)Z
    .registers 11

    const/4 v7, 0x1

    :try_start_1
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowInternetSharing"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v0

    :goto_d
    return v0

    :catch_e
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    goto :goto_d
.end method

.method public getAllowIrDA(ILandroid/content/ComponentName;)Z
    .registers 11

    const/4 v7, 0x1

    :try_start_1
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowIrDA"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v0

    :goto_d
    return v0

    :catch_e
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    goto :goto_d
.end method

.method public getAllowPOPIMAPEmail(ILandroid/content/ComponentName;)Z
    .registers 11

    const/4 v7, 0x1

    :try_start_1
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowPOPIMAPEmail"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v0

    :goto_d
    return v0

    :catch_e
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    goto :goto_d
.end method

.method public getAllowStorageCard(ILandroid/content/ComponentName;)Z
    .registers 11

    const/4 v7, 0x1

    :try_start_1
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowStorageCard"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v0

    :goto_d
    return v0

    :catch_e
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    goto :goto_d
.end method

.method public getAllowTextMessaging(ILandroid/content/ComponentName;)Z
    .registers 11

    const/4 v7, 0x1

    :try_start_1
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowTextMessaging"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v0

    :goto_d
    return v0

    :catch_e
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    goto :goto_d
.end method

.method public getAllowWifi(ILandroid/content/ComponentName;)Z
    .registers 11

    const/4 v7, 0x1

    :try_start_1
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowWifi"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v0

    :goto_d
    return v0

    :catch_e
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    goto :goto_d
.end method

.method protected getColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Ljava/lang/String;
    .registers 12

    const/4 v6, 0x0

    const-string v1, "0"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "passwordContainerID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "componentName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v6

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v2, v5}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_52

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_4e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_51
    return-object v1

    :cond_52
    const-string v3, "EcppStorageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not available on this policy set yet"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51
.end method

.method public getMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;)I
    .registers 11

    const/4 v7, 0x0

    :try_start_1
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "maximumFailedPasswordsForDisable"

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_f

    move-result-wide v0

    long-to-int v0, v0

    :goto_e
    return v0

    :catch_f
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    goto :goto_e
.end method

.method public getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I
    .registers 11

    const/4 v7, 0x0

    :try_start_1
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "maximumFailedPasswordsForWipe"

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_f

    move-result-wide v0

    long-to-int v0, v0

    :goto_e
    return v0

    :catch_f
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    goto :goto_e
.end method

.method public getMaximumTimeToLock(ILandroid/content/ComponentName;)J
    .registers 12

    const-wide/16 v7, 0x0

    if-nez p2, :cond_11

    :try_start_4
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "maximumTimeToLockPassword"

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J

    move-result-wide v0

    :goto_10
    return-wide v0

    :cond_11
    const-string v0, "PASSWORD_POLICY"

    const-string v1, "maximumTimeToLockPassword"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_1c} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_28

    move-result-wide v0

    goto :goto_10

    :catch_1e
    move-exception v6

    const-string v0, "EcppStorageProvider"

    const-string v1, "getMaximumTimeToLock: Policy not yet set"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v7

    goto :goto_10

    :catch_28
    move-exception v6

    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaximumTimeToLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v7

    goto :goto_10
.end method

.method public getPasswordEnabledContainerLockTimeout(ILandroid/content/ComponentName;)J
    .registers 12

    const-wide/16 v7, 0x0

    if-nez p2, :cond_11

    :try_start_4
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "maximumTimeToUnmount"

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J

    move-result-wide v0

    :goto_10
    return-wide v0

    :cond_11
    const-string v0, "PASSWORD_POLICY"

    const-string v1, "maximumTimeToUnmount"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_1c} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_28

    move-result-wide v0

    goto :goto_10

    :catch_1e
    move-exception v6

    const-string v0, "EcppStorageProvider"

    const-string v1, "getPasswordEnabledContainerLockTimeout: Policy not yet set"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v7

    goto :goto_10

    :catch_28
    move-exception v6

    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPasswordEnabledContainerLockTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v7

    goto :goto_10
.end method

.method public getPasswordExpirationDate(ILandroid/content/ComponentName;)J
    .registers 12

    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordExpirationDate"

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J

    move-result-wide v7

    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPasswordExpirationDate: getting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    :goto_24
    return-wide v7

    :catch_25
    move-exception v6

    const-string v0, "EcppStorageProvider"

    const-string v1, "getPasswordExpirationDate: something went wrong, returning 0"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v7, 0x0

    goto :goto_24
.end method

.method public getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J
    .registers 12

    const-wide/16 v7, 0x0

    if-nez p2, :cond_11

    :try_start_4
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordExpirationTimeout"

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J

    move-result-wide v0

    :goto_10
    return-wide v0

    :cond_11
    const-string v0, "PASSWORD_POLICY"

    const-string v1, "passwordExpirationTimeout"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_1c} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_28

    move-result-wide v0

    goto :goto_10

    :catch_1e
    move-exception v6

    const-string v0, "EcppStorageProvider"

    const-string v1, "getPasswordExpirationTimeout: Policy not yet set"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v7

    goto :goto_10

    :catch_28
    move-exception v6

    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPasswordExpirationTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v7

    goto :goto_10
.end method

.method public getPasswordHistory(ILandroid/content/ComponentName;)I
    .registers 11

    const/4 v7, 0x0

    if-nez p2, :cond_11

    :try_start_3
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordHistory"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J

    move-result-wide v0

    long-to-int v0, v0

    :goto_10
    return v0

    :cond_11
    const-string v0, "PASSWORD_POLICY"

    const-string v1, "passwordHistory"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_1c} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_28

    move-result v0

    goto :goto_10

    :catch_1e
    move-exception v6

    const-string v0, "EcppStorageProvider"

    const-string v1, "getPasswordHistory: Policy not yet set"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    goto :goto_10

    :catch_28
    move-exception v6

    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPasswordHistory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    goto :goto_10
.end method

.method public getPasswordMinimumLength(ILandroid/content/ComponentName;)I
    .registers 10

    :try_start_0
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "container - getPasswordMinimumLength(): containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumLength"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_30

    move-result-wide v0

    long-to-int v0, v0

    :goto_2f
    return v0

    :catch_30
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public getPasswordMinimumLetters(ILandroid/content/ComponentName;)I
    .registers 10

    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumLetters"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_e

    move-result-wide v0

    long-to-int v0, v0

    :goto_d
    return v0

    :catch_e
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getPasswordMinimumLowerCase(ILandroid/content/ComponentName;)I
    .registers 10

    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumLowerCase"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_e

    move-result-wide v0

    long-to-int v0, v0

    :goto_d
    return v0

    :catch_e
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I
    .registers 10

    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumNonLetter"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_e

    move-result-wide v0

    long-to-int v0, v0

    :goto_d
    return v0

    :catch_e
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I
    .registers 10

    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumNumeric"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_e

    move-result-wide v0

    long-to-int v0, v0

    :goto_d
    return v0

    :catch_e
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I
    .registers 10

    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumSymbols"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_e

    move-result-wide v0

    long-to-int v0, v0

    :goto_d
    return v0

    :catch_e
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getPasswordMinimumUpperCase(ILandroid/content/ComponentName;)I
    .registers 10

    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumUpperCase"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_e

    move-result-wide v0

    long-to-int v0, v0

    :goto_d
    return v0

    :catch_e
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getPasswordQuality(ILandroid/content/ComponentName;)I
    .registers 11

    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordQuality"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_11

    move-result-wide v0

    long-to-int v7, v0

    if-gez v7, :cond_10

    const/4 v7, 0x0

    :cond_10
    :goto_10
    return v7

    :catch_11
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v7, 0x0

    goto :goto_10
.end method

.method public getPasswordStateInfoFromDB(I)Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;
    .registers 10

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0xd

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "containerid"

    aput-object v4, v2, v5

    const-string v4, "quality"

    aput-object v4, v2, v6

    const/4 v4, 0x2

    const-string v7, "length"

    aput-object v7, v2, v4

    const/4 v4, 0x3

    const-string v7, "uppercase"

    aput-object v7, v2, v4

    const/4 v4, 0x4

    const-string v7, "lowercase"

    aput-object v7, v2, v4

    const/4 v4, 0x5

    const-string v7, "letters"

    aput-object v7, v2, v4

    const/4 v4, 0x6

    const-string v7, "numeric"

    aput-object v7, v2, v4

    const/4 v4, 0x7

    const-string v7, "nonletters"

    aput-object v7, v2, v4

    const/16 v4, 0x8

    const-string v7, "symbols"

    aput-object v7, v2, v4

    const/16 v4, 0x9

    const-string v7, "simplepassword"

    aput-object v7, v2, v4

    const/16 v4, 0xa

    const-string v7, "charactersequencelength"

    aput-object v7, v2, v4

    const/16 v4, 0xb

    const-string v7, "digitsequencelength"

    aput-object v7, v2, v4

    const/16 v4, 0xc

    const-string v7, "MaximumCharacteroccurrences"

    aput-object v7, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "containerid = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v7, "ACTIVE_PASSWORD_STATE"

    invoke-virtual {v4, v7, v2, v3, v1}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_69

    :goto_68
    return-object v1

    :cond_69
    new-instance v1, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

    invoke-direct {v1}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;-><init>()V

    if-eqz v1, :cond_125

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_73
    const-string v4, "containerid"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setContainerId(I)V

    const-string v4, "quality"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordQuality(I)V

    const-string v4, "length"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordLength(I)V

    const-string v4, "uppercase"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordUppercase(I)V

    const-string v4, "lowercase"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordLowercase(I)V

    const-string v4, "letters"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordLetters(I)V

    const-string v4, "numeric"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordNumeric(I)V

    const-string v4, "nonletters"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordNonLetter(I)V

    const-string v4, "symbols"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordSymbols(I)V

    const-string v4, "simplepassword"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_12a

    move v4, v5

    :goto_f5
    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordSimple(Z)V

    const-string v4, "charactersequencelength"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setCharSeqLength(I)V

    const-string v4, "digitsequencelength"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setDigitSeqLength(I)V

    const-string v4, "MaximumCharacteroccurrences"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setCharMaxOccurrencesCount(I)V

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_73

    :cond_125
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_68

    :cond_12a
    move v4, v6

    goto :goto_f5
.end method

.method public getSimplePasswordEnabled(ILandroid/content/ComponentName;)Z
    .registers 11

    const/4 v7, 0x1

    :try_start_1
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowSimplePassword"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v0

    :goto_d
    return v0

    :catch_e
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    goto :goto_d
.end method

.method protected getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    .registers 14

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;ZJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;ZJ)J
    .registers 18

    const-string v7, "EcppStorageProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getStricterColumnValue(): tableName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " columnToSelect = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " containerId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " admin = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " getHigherValue = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "passwordContainerID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_86

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND componentName=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_86
    iget-object v7, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x0

    invoke-virtual {v7, p1, v8, v6, v9}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_f5

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_c5

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    :cond_a0
    :goto_a0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_c5

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    if-eqz p5, :cond_b3

    cmp-long v7, v1, v4

    if-lez v7, :cond_a0

    move-wide v4, v1

    goto :goto_a0

    :cond_b3
    const-wide/16 v7, 0x1

    cmp-long v7, v4, v7

    if-ltz v7, :cond_c3

    cmp-long v7, v1, v4

    if-gez v7, :cond_a0

    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-lez v7, :cond_a0

    :cond_c3
    move-wide v4, v1

    goto :goto_a0

    :cond_c5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :goto_c8
    const-string v7, "EcppStorageProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getStricterColumnValue(): tableName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " columnToSelect = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " RETURNING = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v4

    :cond_f5
    const-string v7, "EcppStorageProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The setting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not available on this policy set yet"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v4, p6

    goto :goto_c8
.end method

.method protected getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    .registers 16

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "EcppStorageProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getStricterColumnValueForBoolean(): tableName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " columnToSelect = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " containerId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " admin = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, p5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "passwordContainerID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND componentName=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_7d
    iget-object v6, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    new-array v7, v5, [Ljava/lang/String;

    aput-object p2, v7, v4

    const/4 v8, 0x0

    invoke-virtual {v6, p1, v7, v3, v8}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_cf

    :cond_8a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_9d

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_cd

    move v2, v4

    :goto_9b
    if-nez v2, :cond_8a

    :cond_9d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_a0
    const-string v4, "EcppStorageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getStricterColumnValueForBoolean(): tableName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " columnToSelect = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " RETURNING = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_cd
    move v2, v5

    goto :goto_9b

    :cond_cf
    const-string v4, "EcppStorageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The setting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not available on this policy set yet"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a0
.end method

.method public isPasswordVisisbilityEnabled(I)Z
    .registers 11

    const/4 v8, 0x0

    :try_start_1
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordVisible"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_14

    move-result-wide v0

    long-to-int v7, v0

    if-eqz v7, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    move v0, v8

    goto :goto_11

    :catch_14
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v8

    goto :goto_11
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)Z
    .registers 7

    :try_start_0
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v2, "PASSWORD_POLICY"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "componentName=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->delete(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_26

    move-result v1

    :goto_25
    return v1

    :catch_26
    move-exception v0

    const-string v1, "EcppStorageProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: something failed trying to remove policies  and admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_25
.end method

.method public removeContainer(I)Z
    .registers 13

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v8, "PASSWORD_POLICY"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "passwordContainerID="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->dbExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iget-object v7, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v8, "PASSWORD_HISTORY"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "containerID="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->dbExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    iget-object v7, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v8, "ACTIVE_PASSWORD_STATE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "containerid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->dbExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v2, :cond_71

    :try_start_56
    iget-object v7, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v8, "PASSWORD_POLICY"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "passwordContainerID="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->delete(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_70} :catch_b3

    move-result v1

    :cond_71
    :goto_71
    if-eqz v4, :cond_8e

    :try_start_73
    iget-object v7, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v8, "PASSWORD_HISTORY"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "containerID="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->delete(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_8d} :catch_d7

    move-result v3

    :cond_8e
    :goto_8e
    if-eqz v6, :cond_ab

    :try_start_90
    iget-object v7, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v8, "ACTIVE_PASSWORD_STATE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "containerid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->delete(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_aa} :catch_fb

    move-result v5

    :cond_ab
    :goto_ab
    if-eqz v1, :cond_11f

    if-eqz v3, :cond_11f

    if-eqz v5, :cond_11f

    const/4 v7, 0x1

    :goto_b2
    return v7

    :catch_b3
    move-exception v0

    const-string v7, "EcppStorageProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: something failed trying to remove password policies for the container "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_71

    :catch_d7
    move-exception v0

    const-string v7, "EcppStorageProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: something failed trying to remove password history for the container "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8e

    :catch_fb
    move-exception v0

    const-string v7, "EcppStorageProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: something failed trying to remove active password state table for the container "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ab

    :cond_11f
    const/4 v7, 0x0

    goto :goto_b2
.end method

.method public removeOldestPasswordIfRequired(II)V
    .registers 12

    const/4 v8, 0x0

    const/4 v0, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "containerID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "_index ASC"

    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v5, "PASSWORD_HISTORY"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "_index"

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6, v3, v2}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_5c

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_2f
    add-int/lit8 v4, p2, -0x1

    if-lt v0, v4, :cond_59

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v5, "PASSWORD_HISTORY"

    invoke-virtual {v4, v5, v3}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->delete(Ljava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2f

    :cond_59
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5c
    return-void
.end method

.method public setActivePasswordState(IIIIIIIIIZIII)V
    .registers 18

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "containerid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_99

    const-string v2, "containerid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "quality"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "length"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "uppercase"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "lowercase"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "letters"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "numeric"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "nonletters"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "symbols"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "simplepassword"

    if-eqz p10, :cond_9a

    const/4 v2, 0x1

    :goto_70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "charactersequencelength"

    invoke-static {p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "digitsequencelength"

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "MaximumCharacteroccurrences"

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v3, "ACTIVE_PASSWORD_STATE"

    invoke-virtual {v2, v3, v0, v1}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->insertOrUpdate(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Z

    :cond_99
    return-void

    :cond_9a
    const/4 v2, 0x0

    goto :goto_70
.end method

.method public setAllowBluetoothMode(ILandroid/content/ComponentName;I)V
    .registers 10

    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowBluetoothMode"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    return-void
.end method

.method public setAllowBrowser(ILandroid/content/ComponentName;Z)V
    .registers 10

    const/4 v4, 0x0

    if-eqz p3, :cond_4

    const/4 v4, 0x1

    :cond_4
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowBrowser"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    return-void
.end method

.method public setAllowCamera(ILandroid/content/ComponentName;Z)V
    .registers 10

    const/4 v4, 0x0

    if-eqz p3, :cond_4

    const/4 v4, 0x1

    :cond_4
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowCamera"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    return-void
.end method

.method public setAllowDesktopSync(ILandroid/content/ComponentName;Z)V
    .registers 10

    const/4 v4, 0x0

    if-eqz p3, :cond_4

    const/4 v4, 0x1

    :cond_4
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowDesktopSync"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    return-void
.end method

.method public setAllowInternetSharing(ILandroid/content/ComponentName;Z)V
    .registers 10

    const/4 v4, 0x0

    if-eqz p3, :cond_4

    const/4 v4, 0x1

    :cond_4
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowInternetSharing"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    return-void
.end method

.method public setAllowIrDA(ILandroid/content/ComponentName;Z)V
    .registers 10

    const/4 v4, 0x0

    if-eqz p3, :cond_4

    const/4 v4, 0x1

    :cond_4
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowIrDA"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    return-void
.end method

.method public setAllowPOPIMAPEmail(ILandroid/content/ComponentName;Z)V
    .registers 10

    const/4 v4, 0x0

    if-eqz p3, :cond_4

    const/4 v4, 0x1

    :cond_4
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowPOPIMAPEmail"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    return-void
.end method

.method public setAllowStorageCard(ILandroid/content/ComponentName;Z)V
    .registers 10

    const/4 v4, 0x0

    if-eqz p3, :cond_4

    const/4 v4, 0x1

    :cond_4
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowStorageCard"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    return-void
.end method

.method public setAllowTextMessaging(ILandroid/content/ComponentName;Z)V
    .registers 10

    const/4 v4, 0x0

    if-eqz p3, :cond_4

    const/4 v4, 0x1

    :cond_4
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowTextMessaging"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    return-void
.end method

.method public setAllowWifi(ILandroid/content/ComponentName;Z)V
    .registers 10

    const/4 v4, 0x0

    if-eqz p3, :cond_4

    const/4 v4, 0x1

    :cond_4
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowWifi"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    return-void
.end method

.method protected setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V
    .registers 13

    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColumnValues(): table = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " columnName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " columnValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValuesAsLong(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;JI)V

    return-void
.end method

.method protected setColumnValuesAsLong(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;JI)V
    .registers 13

    const-string v3, "EcppStorageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setColumnValuesAsLong(): table = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " admin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " columnName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " columnValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " containerId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, p3, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-lez p6, :cond_ab

    invoke-direct {p0, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "passwordContainerID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "passwordContainerID"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "componentName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "componentName"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a6
    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    invoke-virtual {v3, p1, v1, v2}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->insertOrUpdate(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Z

    :cond_ab
    return-void
.end method

.method public setMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;I)V
    .registers 10

    const-string v1, "PASSWORD_POLICY"

    const-string v3, "maximumFailedPasswordsForDisable"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    return-void
.end method

.method public setMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;I)V
    .registers 10

    const-string v1, "PASSWORD_POLICY"

    const-string v3, "maximumFailedPasswordsForWipe"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    return-void
.end method

.method public setMaximumTimeToLock(ILandroid/content/ComponentName;J)V
    .registers 12

    const-string v1, "PASSWORD_POLICY"

    const-string v3, "maximumTimeToLockPassword"

    move-object v0, p0

    move-object v2, p2

    move-wide v4, p3

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValuesAsLong(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;JI)V

    return-void
.end method

.method public setOldPasswordToHistory(I[B)V
    .registers 7

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordHistory(ILandroid/content/ComponentName;)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->removeOldestPasswordIfRequired(II)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "oldPasswordHashValue"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v2, "PASSWORD_HISTORY"

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->insertOrUpdate(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Z

    return-void
.end method

.method public setPasswordEnabledContainerLockTimeout(ILandroid/content/ComponentName;J)V
    .registers 12

    const-string v1, "PASSWORD_POLICY"

    const-string v3, "maximumTimeToUnmount"

    move-object v0, p0

    move-object v2, p2

    move-wide v4, p3

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValuesAsLong(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;JI)V

    return-void
.end method

.method public setPasswordExpirationDate(ILandroid/content/ComponentName;J)V
    .registers 12

    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordExpirationDate: setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordExpirationDate"

    move-object v0, p0

    move-object v2, p2

    move-wide v4, p3

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValuesAsLong(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;JI)V

    return-void
.end method

.method public setPasswordExpirationTimeout(ILandroid/content/ComponentName;J)V
    .registers 12

    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordExpirationTimeout"

    move-object v0, p0

    move-object v2, p2

    move-wide v4, p3

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValuesAsLong(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;JI)V

    return-void
.end method

.method public setPasswordHistory(ILandroid/content/ComponentName;I)V
    .registers 10

    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordHistory"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    return-void
.end method

.method public setPasswordMinimumLength(ILandroid/content/ComponentName;I)V
    .registers 10

    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "container - setPasswordMinimumLength(): containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumLength"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    return-void
.end method

.method public setPasswordMinimumLetters(ILandroid/content/ComponentName;I)V
    .registers 10

    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumLetters"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    return-void
.end method

.method public setPasswordMinimumLowerCase(ILandroid/content/ComponentName;I)V
    .registers 10

    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumLowerCase"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    return-void
.end method

.method public setPasswordMinimumNonLetter(ILandroid/content/ComponentName;I)V
    .registers 10

    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumNonLetter"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    return-void
.end method

.method public setPasswordMinimumNumeric(ILandroid/content/ComponentName;I)V
    .registers 10

    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumNumeric"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    return-void
.end method

.method public setPasswordMinimumSymbols(ILandroid/content/ComponentName;I)V
    .registers 10

    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumSymbols"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    return-void
.end method

.method public setPasswordMinimumUpperCase(ILandroid/content/ComponentName;I)V
    .registers 10

    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumUpperCase"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    return-void
.end method

.method public setPasswordQuality(ILandroid/content/ComponentName;I)V
    .registers 10

    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordQuality"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    return-void
.end method

.method public setPasswordVisibilityEnabled(IZ)V
    .registers 9

    const/4 v4, 0x0

    if-eqz p2, :cond_4

    const/4 v4, 0x1

    :cond_4
    const-string v1, "PASSWORD_POLICY"

    const/4 v2, 0x0

    const-string v3, "passwordVisible"

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    return-void
.end method

.method public setSimplePasswordEnabled(ILandroid/content/ComponentName;Z)V
    .registers 10

    if-eqz p3, :cond_e

    const/4 v4, 0x1

    :goto_3
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowSimplePassword"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    return-void

    :cond_e
    const/4 v4, 0x0

    goto :goto_3
.end method
