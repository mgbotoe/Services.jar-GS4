.class public Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseStorage.java"


# static fields
.field static final DATABASE_NAME:Ljava/lang/String; = "/data/system/analytics/CollectedDataStore.db"

.field static final DATABASE_VERSION:I = 0x7

.field private static final TAG:Ljava/lang/String; = "DatabaseStorage"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->mInstance:Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "/data/system/analytics/CollectedDataStore.db"

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object p1, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/analytics/data/collection/storage/Table;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->preTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/analytics/data/collection/storage/Table;)V

    return-void
.end method

.method static synthetic access$200(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/analytics/data/collection/storage/Table;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/analytics/data/collection/storage/Table;)V

    return-void
.end method

.method static synthetic access$300(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/analytics/data/collection/storage/Table;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->postTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/analytics/data/collection/storage/Table;)V

    return-void
.end method

.method static synthetic access$400(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/analytics/data/collection/storage/Table;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->preTableUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/analytics/data/collection/storage/Table;)V

    return-void
.end method

.method static synthetic access$500(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/analytics/data/collection/storage/Table;)Ljava/util/ArrayList;
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->getMissingColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/analytics/data/collection/storage/Table;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/analytics/data/collection/storage/Table;)V
    .registers 11

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v2, "CREATE TABLE %s (%s"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/android/server/analytics/data/collection/storage/Table;->mTableName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {p1}, Lcom/android/server/analytics/data/collection/storage/Table;->buildTableColumns()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/analytics/data/collection/storage/Table;->buildPrimaryKeys()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    const-string v2, "%s, PRIMARY KEY (%s)"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_27
    iget-object v2, p1, Lcom/android/server/analytics/data/collection/storage/Table;->mForeignReferTable:Ljava/lang/String;

    if-eqz v2, :cond_4b

    iget-object v2, p1, Lcom/android/server/analytics/data/collection/storage/Table;->mForeignReferKey:Ljava/lang/String;

    if-eqz v2, :cond_4b

    iget-object v2, p1, Lcom/android/server/analytics/data/collection/storage/Table;->mForeignKeyName:Ljava/lang/String;

    if-eqz v2, :cond_4b

    const-string v2, "%s FOREIGN KEY (%s) REFERENCES %s(%s) ON DELETE CASCADE ON UPDATE CASCADE"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    iget-object v4, p1, Lcom/android/server/analytics/data/collection/storage/Table;->mForeignKeyName:Ljava/lang/String;

    aput-object v4, v3, v7

    iget-object v4, p1, Lcom/android/server/analytics/data/collection/storage/Table;->mForeignReferTable:Ljava/lang/String;

    aput-object v4, v3, v8

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/android/server/analytics/data/collection/storage/Table;->mForeignReferKey:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_4b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "DatabaseStorage"

    const-string v3, "onTableFound Created Table %s with Columns %d"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/android/server/analytics/data/collection/storage/Table;->mTableName:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p1, Lcom/android/server/analytics/data/collection/storage/Table;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;
    .registers 3

    const-class v1, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->mInstance:Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;

    if-nez v0, :cond_e

    new-instance v0, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;

    invoke-direct {v0, p0}, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->mInstance:Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;

    :cond_e
    sget-object v0, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->mInstance:Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getMissingColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/analytics/data/collection/storage/Table;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Lcom/android/server/analytics/data/collection/storage/Table;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/analytics/data/collection/storage/Column;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LIMIT 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/server/analytics/data/collection/storage/Table;->getMissingColumns(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method private static getTableColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 12

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PRAGMA table_info("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x0

    :try_start_1d
    invoke-virtual {p0, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_42

    :cond_29
    const-string v7, "DatabaseStorage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to get list of columns for table: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_41
    return-object v6

    :cond_42
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_47} :catch_83

    const/4 v4, 0x0

    :goto_48
    :try_start_48
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_7e

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ge v4, v6, :cond_7e

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_61} :catch_62

    goto :goto_48

    :catch_62
    move-exception v3

    move-object v1, v2

    :goto_64
    const-string v6, "DatabaseStorage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "does not exists"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7c
    move-object v6, v1

    goto :goto_41

    :cond_7e
    :try_start_7e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_62

    move-object v1, v2

    goto :goto_7c

    :catch_83
    move-exception v3

    goto :goto_64
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

    goto :goto_2c
.end method

.method private static postTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/analytics/data/collection/storage/Table;)V
    .registers 2

    return-void
.end method

.method private static preTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/analytics/data/collection/storage/Table;)V
    .registers 2

    return-void
.end method

.method private static preTableUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/analytics/data/collection/storage/Table;)V
    .registers 2

    return-void
.end method

.method private select(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;
    .registers 20

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez p3, :cond_8

    const/4 v9, 0x0

    :goto_7
    return-object v9

    :cond_8
    const/4 v5, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_16

    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->size()I

    move-result v2

    new-array v5, v2, [Ljava/lang/String;

    :cond_16
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v14

    const/4 v12, 0x0

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    if-nez v15, :cond_5f

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4e
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1f

    :cond_5f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4e

    :cond_82
    if-eqz v15, :cond_9e

    :try_start_84
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_9e

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_98} :catch_9a

    goto/16 :goto_7

    :catch_9a
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9e
    const/4 v9, 0x0

    goto/16 :goto_7
.end method


# virtual methods
.method doCreationOrUpdatePostCommands(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    return-void
.end method

.method public doTablesCreationOrUpdate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 10

    const-string v4, "DatabaseStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doTableCreationOrUpdate Starting + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1c
    sget-object v4, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10f0003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    new-instance v0, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage$1;-><init>(Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;Landroid/database/sqlite/SQLiteDatabase;)V

    new-instance v2, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;

    invoke-direct {v2, v3, v0}, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;-><init>(Landroid/content/res/XmlResourceParser;Lcom/android/server/analytics/data/collection/storage/TableCallback;)V

    invoke-virtual {v2}, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->parseXML()V

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    invoke-virtual {p0, p1}, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->doCreationOrUpdatePostCommands(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3c} :catch_59

    :goto_3c
    const-string v4, "DatabaseStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doTableCreationOrUpdate Done + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_59
    move-exception v1

    const-string v4, "DatabaseStorage"

    const-string v5, "doTableCreationOrUpdate EX:"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c
.end method

.method public getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->select(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_3d

    :cond_14
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x0

    :goto_1a
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    if-ge v3, v4, :cond_2e

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_2e
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-lez v4, :cond_37

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_14

    :cond_3d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_40
    return-object v2
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v1, 0x1

    :try_start_4
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    const-string v1, "DatabaseStorage"

    const-string v2, "Foreign Key Config failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->doTablesCreationOrUpdate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6

    const-string v0, "DatabaseStorage"

    const-string v1, "Downgrading not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->doTablesCreationOrUpdate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    .registers 16

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez p3, :cond_a

    if-nez p2, :cond_a

    const/4 v8, 0x0

    :goto_9
    return v8

    :cond_a
    const/4 v7, 0x0

    const/4 v6, 0x0

    if-eqz p2, :cond_8a

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-lez v8, :cond_8a

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v8

    new-array v7, v8, [Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v5

    const/4 v3, 0x0

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-nez v6, :cond_61

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_52
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_61
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_83} :catch_84

    goto :goto_52

    :catch_84
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v8, 0x0

    goto :goto_9

    :cond_8a
    if-eqz v6, :cond_99

    :try_start_8c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, p1, p3, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_99

    const/4 v8, 0x1

    goto/16 :goto_9

    :cond_99
    const/4 v8, 0x0

    invoke-virtual {v0, p1, v8, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_9d} :catch_84

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_a7

    const/4 v8, 0x1

    goto/16 :goto_9

    :cond_a7
    const/4 v8, 0x0

    goto/16 :goto_9
.end method

.method public removeValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 15

    const/4 v10, 0x1

    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez p2, :cond_a

    move v8, v9

    :goto_9
    return v8

    :cond_a
    const/4 v7, 0x0

    const/4 v6, 0x0

    if-eqz p2, :cond_8a

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-lez v8, :cond_8a

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v8

    new-array v7, v8, [Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v5

    const/4 v3, 0x0

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-nez v6, :cond_61

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "=?"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_52
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_61
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " AND "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "=?"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_83} :catch_84

    goto :goto_52

    :catch_84
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v8, v9

    goto :goto_9

    :cond_8a
    if-eqz v6, :cond_99

    :try_start_8c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, p1, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_99

    move v8, v10

    goto/16 :goto_9

    :cond_99
    const/4 v8, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, p1, v8, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_9e} :catch_84

    move-result v8

    if-lez v8, :cond_a4

    move v8, v10

    goto/16 :goto_9

    :cond_a4
    move v8, v9

    goto/16 :goto_9
.end method
