.class public Lcom/android/server/enterprise/application/ApplicationUsageDb;
.super Ljava/lang/Object;
.source "ApplicationUsageDb.java"


# static fields
.field public static final APP_LAST_LAUNCH_TIME:Ljava/lang/String; = "lastlaunchtime"

.field public static final APP_LAST_PAUSE_TIME:Ljava/lang/String; = "lastpausetime"

.field public static final APP_LAST_SERVICE_START_TIME:Ljava/lang/String; = "applastservicestarttime"

.field public static final APP_LAST_SERVICE_STOP_TIME:Ljava/lang/String; = "applastservicestoptime"

.field public static final APP_TOTAL_USAGE_TIME:Ljava/lang/String; = "totalusagetime"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final LAUNCH_COUNT:Ljava/lang/String; = "launchcount"

.field public static final PKG_NAME:Ljava/lang/String; = "pkgname"

.field public static final TABLE_NAME:Ljava/lang/String; = "ApplicationControl"

.field private static final TAG:Ljava/lang/String; = "ApplicationUsageDb"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    return-void
.end method

.method private calculateLastUsageTime(JJJJ)J
    .registers 14

    const-wide/16 v3, 0x0

    const-wide/16 v0, 0x0

    cmp-long v2, p5, v3

    if-eqz v2, :cond_2b

    cmp-long v2, p7, v3

    if-eqz v2, :cond_2b

    cmp-long v2, p1, v3

    if-eqz v2, :cond_28

    cmp-long v2, p3, p7

    if-lez v2, :cond_1e

    cmp-long v2, p1, p5

    if-gez v2, :cond_1b

    sub-long v0, p3, p1

    :cond_1a
    :goto_1a
    return-wide v0

    :cond_1b
    sub-long v0, p3, p5

    goto :goto_1a

    :cond_1e
    cmp-long v2, p1, p5

    if-gez v2, :cond_25

    sub-long v0, p7, p1

    goto :goto_1a

    :cond_25
    sub-long v0, p7, p5

    goto :goto_1a

    :cond_28
    sub-long v0, p7, p5

    goto :goto_1a

    :cond_2b
    cmp-long v2, p3, v3

    if-eqz v2, :cond_1a

    sub-long v0, p3, p1

    goto :goto_1a
.end method

.method private static createDmAppMgrTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    :try_start_0
    const-string v1, " (_id integer primary key autoincrement, pkgname text, lastpausetime long, applastservicestarttime long, applastservicestoptime long, totalusagetime long, launchcount integer, lastlaunchtime long );"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create table ApplicationControl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "ApplicationUsageDb"

    const-string v3, "::createDmAppMgrTable: Table is Created "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    const-string v2, "ApplicationUsageDb"

    const-string v3, "::createDmAppMgrTable: Exception while table is creating "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method

.method private static getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 6

    const/4 v0, 0x0

    const-string v1, "dmappmgr.db"

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_5
    invoke-virtual {p0, v1, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_17

    move-result-object v0

    :goto_9
    if-eqz v0, :cond_16

    const-string v3, "ApplicationControl"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-static {v0}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->createDmAppMgrTable(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_16
    return-object v0

    :catch_17
    move-exception v2

    const-string v3, "ApplicationUsageDb"

    const-string v4, "::getAppControlDB: Exception to create DB"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method private static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    if-eqz p0, :cond_2c

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2c

    :try_start_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT 1 FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE 1=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2b} :catch_2d

    const/4 v1, 0x1

    :cond_2c
    :goto_2c
    return v1

    :catch_2d
    move-exception v0

    const/4 v1, 0x0

    const-string v2, "ApplicationUsageDb"

    const-string v3, "::isTableExists:Table Does not exists "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c
.end method


# virtual methods
.method public deletePackageFromDb(Ljava/lang/String;)Z
    .registers 9

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_2
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v4, "ApplicationControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pkgname = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_31

    move-result v0

    if-lez v0, :cond_2b

    const/4 v3, 0x1

    :cond_2b
    :goto_2b
    if-eqz v1, :cond_30

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_30
    return v3

    :catch_31
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b
.end method

.method public getAppUsageData()Ljava/util/HashMap;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/enterprise/AppInfoLastUsage;",
            ">;"
        }
    .end annotation

    const/4 v15, 0x0

    const/4 v3, 0x0

    const/16 v20, 0x0

    const/4 v4, 0x5

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "pkgname"

    aput-object v6, v5, v4

    const/4 v4, 0x1

    const-string v6, "lastlaunchtime"

    aput-object v6, v5, v4

    const/4 v4, 0x2

    const-string v6, "lastpausetime"

    aput-object v6, v5, v4

    const/4 v4, 0x3

    const-string v6, "applastservicestarttime"

    aput-object v6, v5, v4

    const/4 v4, 0x4

    const-string v6, "applastservicestoptime"

    aput-object v6, v5, v4

    :try_start_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_e7
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_e9

    move-result-object v3

    if-nez v3, :cond_36

    const/4 v4, 0x0

    if-eqz v15, :cond_30

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_30
    if-eqz v3, :cond_35

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_35
    :goto_35
    return-object v4

    :cond_36
    :try_start_36
    const-string v4, "ApplicationControl"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_94

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_94

    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V
    :try_end_4e
    .catchall {:try_start_36 .. :try_end_4e} :catchall_e7
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_4e} :catch_e9

    :cond_4e
    :try_start_4e
    const-string v4, "pkgname"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const-string v4, "lastlaunchtime"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v4, "lastpausetime"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string v4, "applastservicestarttime"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-string v4, "applastservicestoptime"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v14}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->calculateLastUsageTime(JJJJ)J

    move-result-wide v18

    const-wide/16 v23, 0x0

    cmp-long v4, v18, v23

    if-nez v4, :cond_a1

    :goto_8c
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_8f
    .catchall {:try_start_4e .. :try_end_8f} :catchall_d9
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_8f} :catch_c6

    move-result v4

    if-nez v4, :cond_4e

    move-object/from16 v20, v21

    :cond_94
    if-eqz v15, :cond_99

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_99
    if-eqz v3, :cond_9e

    :goto_9b
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9e
    move-object/from16 v4, v20

    goto :goto_35

    :cond_a1
    :try_start_a1
    new-instance v17, Landroid/app/enterprise/AppInfoLastUsage;

    invoke-direct/range {v17 .. v17}, Landroid/app/enterprise/AppInfoLastUsage;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/app/enterprise/AppInfoLastUsage;->mPackageName:Ljava/lang/String;

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Landroid/app/enterprise/AppInfoLastUsage;->mLastAppUsage:J

    const-wide/16 v23, 0x0

    cmp-long v4, v7, v23

    if-eqz v4, :cond_d4

    move-object/from16 v0, v17

    iput-wide v7, v0, Landroid/app/enterprise/AppInfoLastUsage;->mLastLaunchTime:J

    :goto_bc
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c5
    .catchall {:try_start_a1 .. :try_end_c5} :catchall_d9
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_c5} :catch_c6

    goto :goto_8c

    :catch_c6
    move-exception v16

    move-object/from16 v20, v21

    :goto_c9
    :try_start_c9
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_e7

    if-eqz v15, :cond_d1

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_d1
    if-eqz v3, :cond_9e

    goto :goto_9b

    :cond_d4
    :try_start_d4
    move-object/from16 v0, v17

    iput-wide v11, v0, Landroid/app/enterprise/AppInfoLastUsage;->mLastLaunchTime:J
    :try_end_d8
    .catchall {:try_start_d4 .. :try_end_d8} :catchall_d9
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_d8} :catch_c6

    goto :goto_bc

    :catchall_d9
    move-exception v4

    move-object/from16 v20, v21

    :goto_dc
    if-eqz v15, :cond_e1

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_e1
    if-eqz v3, :cond_e6

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_e6
    throw v4

    :catchall_e7
    move-exception v4

    goto :goto_dc

    :catch_e9
    move-exception v16

    goto :goto_c9
.end method

.method public getLaunchCountOfAllApplication()Ljava/util/HashMap;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v11, 0x0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "ApplicationControl"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_44

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_5b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_4f

    :try_start_1c
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_43

    :cond_22
    const-string v1, "pkgname"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v1, "launchcount"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_40
    .catchall {:try_start_1c .. :try_end_40} :catchall_67
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_40} :catch_6a

    move-result v1

    if-nez v1, :cond_22

    :cond_43
    move-object v11, v12

    :cond_44
    if-eqz v8, :cond_49

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_49
    if-eqz v0, :cond_4e

    :goto_4b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4e
    return-object v11

    :catch_4f
    move-exception v9

    :goto_50
    :try_start_50
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_5b

    if-eqz v8, :cond_58

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_58
    if-eqz v0, :cond_4e

    goto :goto_4b

    :catchall_5b
    move-exception v1

    :goto_5c
    if-eqz v8, :cond_61

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_61
    if-eqz v0, :cond_66

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_66
    throw v1

    :catchall_67
    move-exception v1

    move-object v11, v12

    goto :goto_5c

    :catch_6a
    move-exception v9

    move-object v11, v12

    goto :goto_50
.end method

.method public updateBackGroundUsageDetails(Ljava/lang/String;JJ)Z
    .registers 16

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_3
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT * FROM ApplicationControl WHERE pkgname = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_72

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "applastservicestarttime"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "applastservicestoptime"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "ApplicationControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pkgname = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v6, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_a4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_63} :catch_9d

    move-result v0

    if-lez v0, :cond_67

    const/4 v5, 0x1

    :cond_67
    :goto_67
    if-eqz v2, :cond_6c

    :goto_69
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6c
    if-eqz v3, :cond_71

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_71
    return v5

    :cond_72
    :try_start_72
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "pkgname"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "applastservicestarttime"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "applastservicestoptime"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "ApplicationControl"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_94
    .catchall {:try_start_72 .. :try_end_94} :catchall_a4
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_94} :catch_9d

    move-result-wide v0

    const-wide/16 v7, 0x0

    cmp-long v7, v7, v0

    if-gez v7, :cond_67

    const/4 v5, 0x1

    goto :goto_67

    :catch_9d
    move-exception v4

    :try_start_9e
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_a4

    if-eqz v2, :cond_6c

    goto :goto_69

    :catchall_a4
    move-exception v7

    if-eqz v2, :cond_aa

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_aa
    throw v7
.end method

.method public updateForeGroundUsageDetails(Ljava/lang/String;IJJ)Z
    .registers 18

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_3
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT * FROM ApplicationControl WHERE pkgname = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_86

    const-string v8, "launchcount"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/2addr v5, p2

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "launchcount"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "lastlaunchtime"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "lastpausetime"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "ApplicationControl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pkgname = \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v3, v8, v7, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_3 .. :try_end_77} :catchall_c1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_77} :catch_ba

    move-result v0

    if-lez v0, :cond_7b

    const/4 v6, 0x1

    :cond_7b
    :goto_7b
    if-eqz v2, :cond_80

    :goto_7d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_80
    if-eqz v3, :cond_85

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_85
    return v6

    :cond_86
    :try_start_86
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "launchcount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "pkgname"

    invoke-virtual {v7, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "lastlaunchtime"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "lastpausetime"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "ApplicationControl"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_b1
    .catchall {:try_start_86 .. :try_end_b1} :catchall_c1
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_b1} :catch_ba

    move-result-wide v0

    const-wide/16 v8, 0x0

    cmp-long v8, v8, v0

    if-gez v8, :cond_7b

    const/4 v6, 0x1

    goto :goto_7b

    :catch_ba
    move-exception v4

    :try_start_bb
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_c1

    if-eqz v2, :cond_80

    goto :goto_7d

    :catchall_c1
    move-exception v8

    if-eqz v2, :cond_c7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_c7
    throw v8
.end method
