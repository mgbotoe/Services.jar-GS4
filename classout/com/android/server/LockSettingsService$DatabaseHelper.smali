.class Lcom/android/server/LockSettingsService$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "locksettings.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LockSettingsDB"


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method public constructor <init>(Lcom/android/server/LockSettingsService;Landroid/content/Context;)V
    .registers 6

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/android/server/LockSettingsService$DatabaseHelper;->this$0:Lcom/android/server/LockSettingsService;

    const-string v0, "locksettings.db"

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {p0, v2}, Lcom/android/server/LockSettingsService$DatabaseHelper;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "CREATE TABLE locksettings (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,user INTEGER,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private initializeDefaults(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7

    const/4 v4, 0x0

    const-string v1, "ro.lockscreen.disable.default"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/android/server/LockSettingsService$DatabaseHelper;->this$0:Lcom/android/server/LockSettingsService;

    const-string v2, "lockscreen.disabled"

    const-string v3, "1"

    #calls: Lcom/android/server/LockSettingsService;->writeToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v1, p1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->access$000(Lcom/android/server/LockSettingsService;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_12
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService$DatabaseHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService$DatabaseHelper;->initializeDefaults(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method
