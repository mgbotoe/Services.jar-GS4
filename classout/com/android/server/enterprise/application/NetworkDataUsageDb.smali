.class Lcom/android/server/enterprise/application/NetworkDataUsageDb;
.super Ljava/lang/Object;
.source "NetworkDataUsageDb.java"


# static fields
.field public static final MOBILE_DATA_USAGE_RCV:Ljava/lang/String; = "mobiledatausagercv"

.field public static final MOBILE_DATA_USAGE_SEND:Ljava/lang/String; = "mobiledatausagesend"

.field public static final TABLE_NAME:Ljava/lang/String; = "NetworkDataUsage"

.field private static final TAG:Ljava/lang/String; = "NetworkDataUsageDb"

.field public static final UID:Ljava/lang/String; = "_id"

.field public static final WIFI_DATA_USAGE_RCV:Ljava/lang/String; = "wifidatausagesendrcv"

.field public static final WIFI_DATA_USAGE_SEND:Ljava/lang/String; = "wifidatausagesend"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static createDmAppMgrTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    :try_start_0
    const-string v1, " (_id integer primary key , mobiledatausagercv long, wifidatausagesendrcv long, mobiledatausagesend long, wifidatausagesend long );"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create table NetworkDataUsage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "NetworkDataUsageDb"

    const-string v3, "::createDmAppMgrTable: Table is Created "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    const-string v2, "NetworkDataUsageDb"

    const-string v3, "::createDmAppMgrTable: Exception while table is creating "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

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

    move-result-object v0

    const-string v3, "NetworkDataUsageDb"

    const-string v4, "::getAppControlDB: DB is Created "

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_1e

    :goto_10
    if-eqz v0, :cond_1d

    const-string v3, "NetworkDataUsage"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-static {v0}, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->createDmAppMgrTable(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1d
    return-object v0

    :catch_1e
    move-exception v2

    const-string v3, "NetworkDataUsageDb"

    const-string v4, "::getAppControlDB: Exception to create DB"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method private static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    if-eqz p0, :cond_33

    if-eqz p1, :cond_33

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_33

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

    const/4 v1, 0x1

    const-string v2, "NetworkDataUsageDb"

    const-string v3, "::isTableExists: Table exists "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_33} :catch_34

    :cond_33
    :goto_33
    return v1

    :catch_34
    move-exception v0

    const/4 v1, 0x0

    const-string v2, "NetworkDataUsageDb"

    const-string v3, "::isTableExists:Table Does not exists "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33
.end method


# virtual methods
.method public getMobileDataUsage()Ljava/util/Hashtable;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v10, 0x0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_95

    move-result-object v0

    if-nez v0, :cond_17

    if-eqz v8, :cond_11

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_11
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_16
    :goto_16
    return-object v1

    :cond_17
    :try_start_17
    const-string v1, "NetworkDataUsage"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_89

    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_b6
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2a} :catch_95

    :try_start_2a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_88

    :cond_30
    new-instance v12, Landroid/app/enterprise/NetworkStats;

    invoke-direct {v12}, Landroid/app/enterprise/NetworkStats;-><init>()V

    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Landroid/app/enterprise/NetworkStats;->uid:I

    const-string v1, "mobiledatausagesend"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v12, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    const-string v1, "mobiledatausagercv"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v12, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    const-string v1, "wifidatausagesend"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v12, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    const-string v1, "wifidatausagesendrcv"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v12, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_85
    .catchall {:try_start_2a .. :try_end_85} :catchall_c2
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_85} :catch_c5

    move-result v1

    if-nez v1, :cond_30

    :cond_88
    move-object v10, v11

    :cond_89
    if-eqz v8, :cond_8e

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8e
    if-eqz v0, :cond_93

    :goto_90
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_93
    move-object v1, v10

    goto :goto_16

    :catch_95
    move-exception v9

    :goto_96
    :try_start_96
    const-string v1, "NetworkDataUsageDb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobileDataUsage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ae
    .catchall {:try_start_96 .. :try_end_ae} :catchall_b6

    if-eqz v8, :cond_b3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_b3
    if-eqz v0, :cond_93

    goto :goto_90

    :catchall_b6
    move-exception v1

    :goto_b7
    if-eqz v8, :cond_bc

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_bc
    if-eqz v0, :cond_c1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_c1
    throw v1

    :catchall_c2
    move-exception v1

    move-object v10, v11

    goto :goto_b7

    :catch_c5
    move-exception v9

    move-object v10, v11

    goto :goto_96
.end method

.method public updateDataUsage(Ljava/util/Hashtable;)Z
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;)Z"
        }
    .end annotation

    const/16 v17, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    if-nez v7, :cond_13

    move/from16 v18, v17

    :goto_12
    return v18

    :cond_13
    if-eqz p1, :cond_134

    invoke-virtual/range {p1 .. p1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_134

    invoke-virtual/range {p1 .. p1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_23
    :goto_23
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_134

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2f} :catch_131

    :try_start_2f
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/enterprise/NetworkStats;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "SELECT * FROM NetworkDataUsage WHERE _id = \'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v7, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v26

    if-eqz v26, :cond_13d

    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    const-string v26, "mobiledatausagesend"

    move-object/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    move-wide/from16 v26, v0

    add-long v19, v26, v14

    const-string v26, "mobiledatausagesend"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v26, "mobiledatausagercv"

    move-object/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    move-wide/from16 v26, v0

    add-long v19, v26, v12

    const-string v26, "mobiledatausagercv"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v26, "wifidatausagesend"

    move-object/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    move-wide/from16 v26, v0

    add-long v19, v26, v24

    const-string v26, "wifidatausagesend"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v26, "wifidatausagesendrcv"

    move-object/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    move-wide/from16 v26, v0

    add-long v19, v26, v22

    const-string v26, "wifidatausagesendrcv"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v26, "NetworkDataUsage"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "_id = \'"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\'"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_125
    .catchall {:try_start_2f .. :try_end_125} :catchall_1db
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_125} :catch_1b7

    move-result v4

    if-lez v4, :cond_12a

    const/16 v17, 0x1

    :cond_12a
    :goto_12a
    if-eqz v6, :cond_23

    :try_start_12c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_12f} :catch_131

    goto/16 :goto_23

    :catch_131
    move-exception v8

    const/16 v17, 0x0

    :cond_134
    if-eqz v7, :cond_139

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_139
    move/from16 v18, v17

    goto/16 :goto_12

    :cond_13d
    :try_start_13d
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    const-string v26, "_id"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v26, "mobiledatausagesend"

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    move-wide/from16 v27, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v26, "mobiledatausagercv"

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    move-wide/from16 v27, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v26, "wifidatausagesend"

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    move-wide/from16 v27, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v26, "wifidatausagesendrcv"

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    move-wide/from16 v27, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v26, "NetworkDataUsage"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v21

    invoke-virtual {v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1ac
    .catchall {:try_start_13d .. :try_end_1ac} :catchall_1db
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_1ac} :catch_1b7

    move-result-wide v4

    const-wide/16 v26, 0x0

    cmp-long v26, v26, v4

    if-gez v26, :cond_12a

    const/16 v17, 0x1

    goto/16 :goto_12a

    :catch_1b7
    move-exception v8

    :try_start_1b8
    const-string v26, "NetworkDataUsageDb"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "exception occurred "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d4
    .catchall {:try_start_1b8 .. :try_end_1d4} :catchall_1db

    if-eqz v6, :cond_23

    :try_start_1d6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_23

    :catchall_1db
    move-exception v26

    if-eqz v6, :cond_1e1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1e1
    throw v26
    :try_end_1e2
    .catch Ljava/lang/Exception; {:try_start_1d6 .. :try_end_1e2} :catch_131
.end method
