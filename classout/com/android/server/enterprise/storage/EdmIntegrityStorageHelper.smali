.class public Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;
.super Ljava/lang/Object;
.source "EdmIntegrityStorageHelper.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "EdmIntegrityStorageHelper"

.field static mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper; = null

.field static mInstance:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper; = null

.field static final mTAG:Ljava/lang/String; = "EDM"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-object v1, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    sput-object v1, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_d

    const/4 v0, 0x0

    :cond_d
    sput-boolean v0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/storage/EdmStorageHelper;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    :try_start_9
    sget-object v2, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v1

    const-string v2, "EdmIntegrityStorageHelper"

    const-string v3, "Failed to get the database instance"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;
    .registers 3

    const-class v1, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    if-nez v0, :cond_e

    new-instance v0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    :cond_e
    sget-object v0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clearFingerPrint()Z
    .registers 6

    sget-boolean v2, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v2, :cond_b

    const-string v2, "EDM"

    const-string v3, "clearFingerPrint...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    sget-object v2, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_11
    const-string v2, "UPDATE EnterpriseIslFpTable SET fpCurrent = NULL ,fpDirty=0 , fpNewRow=0"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    const/4 v2, 0x1

    :goto_17
    return v2

    :catch_18
    move-exception v1

    sget-boolean v2, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v2, :cond_35

    const-string v2, "EdmIntegrityStorageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EnterpriseIslFpTableclearFingerPrint failed  EX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public commitFingerPrint()Z
    .registers 6

    sget-boolean v2, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v2, :cond_b

    const-string v2, "EDM"

    const-string v3, "commitFingerPrint...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    sget-object v2, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_11
    const-string v2, "UPDATE EnterpriseIslFpTable SET fpBaseLined = fpCurrent WHERE fpDirty = 1 OR fpDirty = 2"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "DELETE FROM EnterpriseIslFpTable WHERE fpDirty=3"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1b} :catch_1d

    const/4 v2, 0x1

    :goto_1c
    return v2

    :catch_1d
    move-exception v1

    sget-boolean v2, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v2, :cond_3a

    const-string v2, "EdmIntegrityStorageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EnterpriseIslFpTablebaselineFingerPrint commit failed  EX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method readFingerPrint(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)[B
    .registers 21

    sget-object v1, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v1, :cond_11

    const-string v1, "EDM"

    const-string v2, "readFingerPrint...."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    if-eqz p2, :cond_18

    if-nez p3, :cond_40

    :cond_18
    const/16 p3, 0x0

    :goto_1a
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v4, p3

    :try_start_23
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_8d

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8d

    const/4 v1, 0x0

    aget-object v1, p4, v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_86
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_39} :catch_73

    move-result-object v1

    if-eqz v12, :cond_3f

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_3f
    :goto_3f
    return-object v1

    :cond_40
    :try_start_40
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_86
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_45} :catch_73

    move-object/from16 v8, p2

    :try_start_47
    array-length v15, v8

    const/4 v14, 0x0

    :goto_49
    if-ge v14, v15, :cond_66

    aget-object v11, v8, v14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "= ? AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v14, v14, 0x1

    goto :goto_49

    :cond_66
    const/4 v1, 0x0

    const-string v2, " AND "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;
    :try_end_70
    .catchall {:try_start_47 .. :try_end_70} :catchall_90
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_70} :catch_93

    move-result-object v3

    move-object v9, v10

    goto :goto_1a

    :catch_73
    move-exception v13

    :goto_74
    :try_start_74
    sget-boolean v1, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v1, :cond_7f

    const-string v1, "EdmIntegrityStorageHelper"

    const-string v2, "could not execute readFingerPrint"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_74 .. :try_end_7f} :catchall_86

    :cond_7f
    if-eqz v12, :cond_84

    :goto_81
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_84
    const/4 v1, 0x0

    goto :goto_3f

    :catchall_86
    move-exception v1

    :goto_87
    if-eqz v12, :cond_8c

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_8c
    throw v1

    :cond_8d
    if-eqz v12, :cond_84

    goto :goto_81

    :catchall_90
    move-exception v1

    move-object v9, v10

    goto :goto_87

    :catch_93
    move-exception v13

    move-object v9, v10

    goto :goto_74
.end method

.method public rollbackFingerPrint()Z
    .registers 6

    sget-boolean v2, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v2, :cond_b

    const-string v2, "EDM"

    const-string v3, "rollbackFingerPrint...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    sget-object v2, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_11
    const-string v2, "DELETE FROM EnterpriseIslFpTable WHERE fpNewRow=1"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "UPDATE EnterpriseIslFpTable SET fpCurrent = NULL ,fpDirty = 0,fpNewRow=0"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1b} :catch_1d

    const/4 v2, 0x1

    :goto_1c
    return v2

    :catch_1d
    move-exception v1

    sget-boolean v2, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v2, :cond_3a

    const-string v2, "EdmIntegrityStorageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EnterpriseIslFpTableclearFingerPrint failed  EX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method updateFingerPrint(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 25

    :try_start_0
    sget-object v17, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "fpDirty"

    aput-object v18, v15, v17

    const/4 v10, 0x0

    sget-object v17, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v15}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_56

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_27
    :goto_27
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_42

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    const-string v17, "fpDirty"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_27

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_27

    :cond_42
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v10, v0, :cond_56

    sget-boolean v17, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v17, :cond_53

    const-string v17, "EdmIntegrityStorageHelper"

    const-string v18, "Trying to update a Item marked for delete"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    const/16 v17, 0x0

    :goto_55
    return v17

    :cond_56
    if-eqz p2, :cond_cb

    if-eqz p3, :cond_cb

    const/16 v16, 0x0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v4, p2

    array-length v14, v4

    const/4 v13, 0x0

    :goto_65
    if-ge v13, v14, :cond_86

    aget-object v6, v4, v13

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "= ? AND "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v13, v13, 0x1

    goto :goto_65

    :cond_86
    const/16 v17, 0x0

    const-string v18, " AND "

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, v16

    move-object/from16 v3, p3

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a3} :catch_ac

    move-result v17

    if-lez v17, :cond_a9

    const/16 v17, 0x1

    goto :goto_55

    :cond_a9
    const/16 v17, 0x0

    goto :goto_55

    :catch_ac
    move-exception v11

    sget-boolean v17, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v17, :cond_cb

    const-string v17, "EdmIntegrityStorageHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "could not execute updateFingerPrint"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cb
    const/16 v17, 0x0

    goto :goto_55
.end method

.method writeFingerPrint(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 24

    :try_start_0
    sget-object v17, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v13, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "adminUid"

    aput-object v18, v13, v17

    const/16 v17, 0x1

    const-string v18, "packageName"

    aput-object v18, v13, v17

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "adminUid"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v17

    const/16 v17, 0x1

    const-string v18, "packageName"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v17

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v14, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "fpDirty"

    aput-object v18, v14, v17

    const/16 v16, 0x0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v9, 0x0

    move-object v3, v13

    array-length v12, v3

    const/4 v11, 0x0

    :goto_51
    if-ge v11, v12, :cond_72

    aget-object v5, v3, v11

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "= ? AND "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v11, v11, 0x1

    goto :goto_51

    :cond_72
    const/16 v17, 0x0

    const-string v18, " AND "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13, v15, v14}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_10b

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_10b

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_9a
    :goto_9a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_f3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    const-string v17, "fpDirty"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sget-boolean v17, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v17, :cond_9a

    const-string v17, "EdmIntegrityStorageHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Trying to update a Item marked "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d0} :catch_d1

    goto :goto_9a

    :catch_d1
    move-exception v10

    sget-boolean v17, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v17, :cond_f0

    const-string v17, "EdmIntegrityStorageHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "could not execute writeFingerPrint"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f0
    const/16 v17, 0x0

    :goto_f2
    return v17

    :cond_f3
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v9, v0, :cond_108

    :try_start_f9
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-virtual {v8, v0, v1, v2, v15}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    if-lez v17, :cond_10b

    const/16 v17, 0x1

    goto :goto_f2

    :cond_108
    const/16 v17, 0x0

    goto :goto_f2

    :cond_10b
    const-string v17, "fpNewRow"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_127} :catch_d1

    move-result-wide v17

    const-wide/16 v19, -0x1

    cmp-long v17, v17, v19

    if-eqz v17, :cond_131

    const/16 v17, 0x1

    goto :goto_f2

    :cond_131
    const/16 v17, 0x0

    goto :goto_f2
.end method
