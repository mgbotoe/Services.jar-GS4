.class public Lcom/android/server/pm/UserManagerService;
.super Landroid/os/IUserManager$Stub;
.source "UserManagerService.java"


# static fields
.field private static final ATTR_CREATION_TIME:Ljava/lang/String; = "created"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_ICON_PATH:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_KEY:Ljava/lang/String; = "key"

.field private static final ATTR_LAST_LOGGED_IN_TIME:Ljava/lang/String; = "lastLoggedIn"

.field private static final ATTR_MULTIPLE:Ljava/lang/String; = "m"

.field private static final ATTR_NEXT_SERIAL_NO:Ljava/lang/String; = "nextSerialNumber"

.field private static final ATTR_PARTIAL:Ljava/lang/String; = "partial"

.field private static final ATTR_SERIAL_NO:Ljava/lang/String; = "serialNumber"

.field private static final ATTR_TYPE_BOOLEAN:Ljava/lang/String; = "b"

.field private static final ATTR_TYPE_STRING:Ljava/lang/String; = "s"

.field private static final ATTR_TYPE_STRING_ARRAY:Ljava/lang/String; = "sa"

.field private static final ATTR_USER_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_VALUE_TYPE:Ljava/lang/String; = "type"

.field private static final DBG:Z = true

.field private static final EPOCH_PLUS_30_YEARS:J = 0xdc46c32800L

.field private static final LOG_TAG:Ljava/lang/String; = "UserManagerService"

.field private static final MIN_USER_ID:I = 0xa

.field private static final RESTRICTIONS_FILE_PREFIX:Ljava/lang/String; = "res_"

.field private static final TAG_ENTRY:Ljava/lang/String; = "entry"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_RESTRICTIONS:Ljava/lang/String; = "restrictions"

.field private static final TAG_USER:Ljava/lang/String; = "user"

.field private static final TAG_USERS:Ljava/lang/String; = "users"

.field private static final TAG_VALUE:Ljava/lang/String; = "value"

.field private static final USER_INFO_DIR:Ljava/lang/String; = null

.field private static final USER_LIST_FILENAME:Ljava/lang/String; = "userlist.xml"

.field private static final USER_PHOTO_FILENAME:Ljava/lang/String; = "photo.png"

.field private static final USER_VERSION:I = 0x2

.field private static sInstance:Lcom/android/server/pm/UserManagerService;


# instance fields
.field private final mBaseUserPath:Ljava/io/File;

.field private final mContext:Landroid/content/Context;

.field private mGuestEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mInstallLock:Ljava/lang/Object;

.field private mNextSerialNumber:I

.field private final mPackagesLock:Ljava/lang/Object;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mRemovingUserIds:Landroid/util/SparseBooleanArray;

.field private mUserIds:[I

.field private final mUserListFile:Ljava/io/File;

.field private final mUserRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mUserVersion:I

.field private final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsersDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 12

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "user"

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V
    .registers 18

    invoke-direct {p0}, Landroid/os/IUserManager$Stub;-><init>()V

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iput-object p3, p0, Lcom/android/server/pm/UserManagerService;->mInstallLock:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_2d
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_d4

    :try_start_30
    new-instance v5, Ljava/io/File;

    sget-object v8, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-direct {v5, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    const-string v8, "0"

    invoke-direct {v4, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserPath:Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x1fd

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-static {v5, v8, v9, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    const-string v9, "userlist.xml"

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->readUserListLocked()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_71
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_8d

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget-boolean v5, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v5, :cond_8a

    if-eqz v1, :cond_8a

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8a
    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    :cond_8d
    const/4 v1, 0x0

    :goto_8e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_cc

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    const-string v5, "UserManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing partially created user #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->removeUserStateLocked(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8e

    :cond_cc
    sput-object p0, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    monitor-exit v7
    :try_end_cf
    .catchall {:try_start_30 .. :try_end_cf} :catchall_d1

    :try_start_cf
    monitor-exit v6
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_d4

    return-void

    :catchall_d1
    move-exception v5

    :try_start_d2
    monitor-exit v7
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    :try_start_d3
    throw v5

    :catchall_d4
    move-exception v5

    monitor-exit v6
    :try_end_d6
    .catchall {:try_start_d3 .. :try_end_d6} :catchall_d4

    throw v5
.end method

.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .registers 10

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v2, v1

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mInstallLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserStateLocked(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseBooleanArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method private static final checkManageUsersPermission(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2d

    if-eqz v0, :cond_2d

    const-string v1, "android.permission.MANAGE_USERS"

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    if-eqz v1, :cond_2d

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You need MANAGE_USERS permission to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2d
    return-void
.end method

.method private fallbackToSingleUserLocked()V
    .registers 7

    const/4 v5, 0x0

    new-instance v0, Landroid/content/pm/UserInfo;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040921

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x13

    invoke-direct {v0, v5, v2, v3, v4}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0xa

    iput v2, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIdsLocked()V

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLocked()V

    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method public static getInstance()Lcom/android/server/pm/UserManagerService;
    .registers 2

    const-class v1, Lcom/android/server/pm/UserManagerService;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private getNextAvailableIdLocked()I
    .registers 4

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    const/16 v0, 0xa

    :goto_5
    const v1, 0x7fffffff

    if-ge v0, v1, :cond_1a

    :try_start_a
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1c

    :cond_1a
    monitor-exit v2

    return v0

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_12} :catch_16

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_15
    return v3

    :catch_16
    move-exception v2

    const/4 v3, -0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_15

    :catchall_1c
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getUserInfoLocked(I)Landroid/content/pm/UserInfo;
    .registers 6

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    if-eqz v0, :cond_2f

    iget-boolean v1, v0, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_2f

    const-string v1, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserInfo: unknown user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_2f
    return-object v0
.end method

.method private isUserLimitReachedLocked()Z
    .registers 3

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v1

    if-lt v0, v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private readApplicationRestrictionsLocked(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 20

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_b
    new-instance v7, Landroid/util/AtomicFile;

    new-instance v13, Ljava/io/File;

    invoke-static/range {p2 .. p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "res_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".xml"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v13}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    const/4 v13, 0x0

    invoke-interface {v5, v2, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_40
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v13, 0x2

    if-eq v8, v13, :cond_4a

    const/4 v13, 0x1

    if-ne v8, v13, :cond_40

    :cond_4a
    const/4 v13, 0x2

    if-eq v8, v13, :cond_7b

    const-string v13, "UserManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to read restrictions file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_b .. :try_end_69} :catchall_117
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_69} :catch_ea
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_69} :catch_102

    if-eqz v2, :cond_6e

    :try_start_6b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_11e

    :cond_6e
    :goto_6e
    return-object v6

    :cond_6f
    :try_start_6f
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v11, v13, [Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v6, v3, v11}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_7b
    :goto_7b
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v13, 0x1

    if-eq v8, v13, :cond_10d

    const/4 v13, 0x2

    if-ne v8, v13, :cond_7b

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "entry"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7b

    const/4 v13, 0x0

    const-string v14, "key"

    invoke-interface {v5, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x0

    const-string v14, "type"

    invoke-interface {v5, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    const-string v14, "m"

    invoke-interface {v5, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_ac
    :goto_ac
    if-lez v1, :cond_6f

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v13, 0x1

    if-eq v8, v13, :cond_6f

    const/4 v13, 0x2

    if-ne v8, v13, :cond_ac

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "value"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_ac

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_ac

    :cond_d2
    const-string v13, "b"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f5

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-virtual {v6, v3, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_e9
    .catchall {:try_start_6f .. :try_end_e9} :catchall_117
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_e9} :catch_ea
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6f .. :try_end_e9} :catch_102

    goto :goto_7b

    :catch_ea
    move-exception v13

    if-eqz v2, :cond_6e

    :try_start_ed
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f0} :catch_f2

    goto/16 :goto_6e

    :catch_f2
    move-exception v13

    goto/16 :goto_6e

    :cond_f5
    :try_start_f5
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v3, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_100
    .catchall {:try_start_f5 .. :try_end_100} :catchall_117
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_100} :catch_ea
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f5 .. :try_end_100} :catch_102

    goto/16 :goto_7b

    :catch_102
    move-exception v13

    if-eqz v2, :cond_6e

    :try_start_105
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_108} :catch_10a

    goto/16 :goto_6e

    :catch_10a
    move-exception v13

    goto/16 :goto_6e

    :cond_10d
    if-eqz v2, :cond_6e

    :try_start_10f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_112
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_112} :catch_114

    goto/16 :goto_6e

    :catch_114
    move-exception v13

    goto/16 :goto_6e

    :catchall_117
    move-exception v13

    if-eqz v2, :cond_11d

    :try_start_11a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_11d} :catch_121

    :cond_11d
    :goto_11d
    throw v13

    :catch_11e
    move-exception v13

    goto/16 :goto_6e

    :catch_121
    move-exception v14

    goto :goto_11d
.end method

.method private readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    invoke-interface {p1, v1, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_e
    return-void
.end method

.method private readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 7

    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return p3

    :cond_8
    :try_start_8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_d

    move-result p3

    goto :goto_7

    :catch_d
    move-exception v0

    goto :goto_7
.end method

.method private readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 8

    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return-wide p3

    :cond_8
    :try_start_8
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-wide p3

    goto :goto_7

    :catch_d
    move-exception v0

    goto :goto_7
.end method

.method private readUserList()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->readUserListLocked()V

    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private readUserListLocked()V
    .registers 15

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/pm/UserManagerService;->mGuestEnabled:Z

    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_11

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLocked()V

    :cond_10
    :goto_10
    return-void

    :cond_11
    const/4 v0, 0x0

    new-instance v8, Landroid/util/AtomicFile;

    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v8, v10}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_19
    invoke-virtual {v8}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    const/4 v10, 0x0

    invoke-interface {v4, v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_25
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v13, :cond_2d

    if-ne v6, v12, :cond_25

    :cond_2d
    if-eq v6, v13, :cond_41

    const-string v10, "UserManagerService"

    const-string v11, "Unable to read user list"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLocked()V
    :try_end_39
    .catchall {:try_start_19 .. :try_end_39} :catchall_e0
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_39} :catch_b4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_39} :catch_d2

    if-eqz v0, :cond_10

    :try_start_3b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_10

    :catch_3f
    move-exception v10

    goto :goto_10

    :cond_41
    const/4 v10, -0x1

    :try_start_42
    iput v10, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "users"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6e

    const/4 v10, 0x0

    const-string v11, "nextSerialNumber"

    invoke-interface {v4, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5f

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    :cond_5f
    const/4 v10, 0x0

    const-string v11, "version"

    invoke-interface {v4, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6e

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    :cond_6e
    :goto_6e
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v12, :cond_c2

    if-ne v6, v13, :cond_6e

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "user"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6e

    const/4 v10, 0x0

    const-string v11, "id"

    invoke-interface {v4, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/server/pm/UserManagerService;->readUserLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    if-eqz v7, :cond_6e

    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v10

    if-eqz v10, :cond_a3

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/pm/UserManagerService;->mGuestEnabled:Z

    :cond_a3
    iget v10, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    if-ltz v10, :cond_ad

    iget v10, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    if-gt v10, v11, :cond_6e

    :cond_ad
    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I
    :try_end_b3
    .catchall {:try_start_42 .. :try_end_b3} :catchall_e0
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_b3} :catch_b4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_42 .. :try_end_b3} :catch_d2

    goto :goto_6e

    :catch_b4
    move-exception v2

    :try_start_b5
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLocked()V
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_e0

    if-eqz v0, :cond_10

    :try_start_ba
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_bf

    goto/16 :goto_10

    :catch_bf
    move-exception v10

    goto/16 :goto_10

    :cond_c2
    :try_start_c2
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIdsLocked()V

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->upgradeIfNecessary()V
    :try_end_c8
    .catchall {:try_start_c2 .. :try_end_c8} :catchall_e0
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c8} :catch_b4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c2 .. :try_end_c8} :catch_d2

    if-eqz v0, :cond_10

    :try_start_ca
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cd} :catch_cf

    goto/16 :goto_10

    :catch_cf
    move-exception v10

    goto/16 :goto_10

    :catch_d2
    move-exception v5

    :try_start_d3
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLocked()V
    :try_end_d6
    .catchall {:try_start_d3 .. :try_end_d6} :catchall_e0

    if-eqz v0, :cond_10

    :try_start_d8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_db} :catch_dd

    goto/16 :goto_10

    :catch_dd
    move-exception v10

    goto/16 :goto_10

    :catchall_e0
    move-exception v10

    if-eqz v0, :cond_e6

    :try_start_e3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e6} :catch_e7

    :cond_e6
    :goto_e6
    throw v10

    :catch_e7
    move-exception v11

    goto :goto_e6
.end method

.method private readUserLocked(I)Landroid/content/pm/UserInfo;
    .registers 29

    const/4 v7, 0x0

    move/from16 v16, p1

    const/4 v11, 0x0

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v9, 0x0

    const/4 v14, 0x0

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    const/4 v6, 0x0

    :try_start_10
    new-instance v20, Landroid/util/AtomicFile;

    new-instance v23, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ".xml"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v23 .. v25}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual/range {v20 .. v20}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-interface {v13, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_4a
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    const/16 v23, 0x2

    move/from16 v0, v19

    move/from16 v1, v23

    if-eq v0, v1, :cond_5e

    const/16 v23, 0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_4a

    :cond_5e
    const/16 v23, 0x2

    move/from16 v0, v19

    move/from16 v1, v23

    if-eq v0, v1, :cond_8a

    const-string v23, "UserManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Unable to read user "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catchall {:try_start_10 .. :try_end_82} :catchall_21c
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_82} :catch_1d7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_82} :catch_213

    const/16 v21, 0x0

    if-eqz v6, :cond_89

    :try_start_86
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_223

    :cond_89
    :goto_89
    return-object v21

    :cond_8a
    const/16 v23, 0x2

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_1e1

    :try_start_92
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    const-string v24, "user"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1e1

    const-string v23, "id"

    const/16 v24, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p1

    if-eq v0, v1, :cond_c3

    const-string v23, "UserManagerService"

    const-string v24, "User id does not match the file name"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catchall {:try_start_92 .. :try_end_b9} :catchall_21c
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_b9} :catch_1d7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_92 .. :try_end_b9} :catch_213

    const/16 v21, 0x0

    if-eqz v6, :cond_89

    :try_start_bd
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_c1

    goto :goto_89

    :catch_c1
    move-exception v23

    goto :goto_89

    :cond_c3
    :try_start_c3
    const-string v23, "serialNumber"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p1

    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v16

    const-string v23, "flags"

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    const/16 v23, 0x0

    const-string v24, "icon"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v23, "created"

    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-direct {v0, v13, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    const-string v23, "lastLoggedIn"

    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-direct {v0, v13, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const/16 v23, 0x0

    const-string v24, "partial"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "true"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11e

    const/4 v14, 0x1

    :cond_11e
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    :cond_122
    :goto_122
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    const/16 v23, 0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-eq v0, v1, :cond_1e1

    const/16 v23, 0x3

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_13e

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v23

    move/from16 v0, v23

    if-le v0, v12, :cond_1e1

    :cond_13e
    const/16 v23, 0x3

    move/from16 v0, v19

    move/from16 v1, v23

    if-eq v0, v1, :cond_122

    const/16 v23, 0x4

    move/from16 v0, v19

    move/from16 v1, v23

    if-eq v0, v1, :cond_122

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v23, "name"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16f

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    const/16 v23, 0x4

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_122

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    goto :goto_122

    :cond_16f
    const-string v23, "restrictions"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_122

    const-string v23, "no_config_wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v13, v15, v1}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v23, "no_modify_accounts"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v13, v15, v1}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v23, "no_install_apps"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v13, v15, v1}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v23, "no_uninstall_apps"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v13, v15, v1}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v23, "no_share_location"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v13, v15, v1}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v23, "no_install_unknown_sources"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v13, v15, v1}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v23, "no_config_bluetooth"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v13, v15, v1}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v23, "no_usb_file_transfer"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v13, v15, v1}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v23, "no_config_credentials"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v13, v15, v1}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v23, "no_remove_user"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v13, v15, v1}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_1d5
    .catchall {:try_start_c3 .. :try_end_1d5} :catchall_21c
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_1d5} :catch_1d7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c3 .. :try_end_1d5} :catch_213

    goto/16 :goto_122

    :catch_1d7
    move-exception v23

    if-eqz v6, :cond_1dd

    :try_start_1da
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1dd
    .catch Ljava/io/IOException; {:try_start_1da .. :try_end_1dd} :catch_226

    :cond_1dd
    :goto_1dd
    const/16 v21, 0x0

    goto/16 :goto_89

    :cond_1e1
    :try_start_1e1
    new-instance v21, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-direct {v0, v1, v11, v8, v7}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    move/from16 v0, v16

    move-object/from16 v1, v21

    iput v0, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    move-object/from16 v0, v21

    iput-wide v4, v0, Landroid/content/pm/UserInfo;->creationTime:J

    move-object/from16 v0, v21

    iput-wide v9, v0, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    move-object/from16 v0, v21

    iput-boolean v14, v0, Landroid/content/pm/UserInfo;->partial:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_209
    .catchall {:try_start_1e1 .. :try_end_209} :catchall_21c
    .catch Ljava/io/IOException; {:try_start_1e1 .. :try_end_209} :catch_1d7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e1 .. :try_end_209} :catch_213

    if-eqz v6, :cond_89

    :try_start_20b
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_20e
    .catch Ljava/io/IOException; {:try_start_20b .. :try_end_20e} :catch_210

    goto/16 :goto_89

    :catch_210
    move-exception v23

    goto/16 :goto_89

    :catch_213
    move-exception v23

    if-eqz v6, :cond_1dd

    :try_start_216
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_219
    .catch Ljava/io/IOException; {:try_start_216 .. :try_end_219} :catch_21a

    goto :goto_1dd

    :catch_21a
    move-exception v23

    goto :goto_1dd

    :catchall_21c
    move-exception v23

    if-eqz v6, :cond_222

    :try_start_21f
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_222
    .catch Ljava/io/IOException; {:try_start_21f .. :try_end_222} :catch_228

    :cond_222
    :goto_222
    throw v23

    :catch_223
    move-exception v23

    goto/16 :goto_89

    :catch_226
    move-exception v23

    goto :goto_1dd

    :catch_228
    move-exception v24

    goto :goto_222
.end method

.method private removeDirectoryRecursive(Ljava/io/File;)V
    .registers 9

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    array-length v5, v0

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v5, :cond_1c

    aget-object v2, v0, v4

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1c
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private removeUserStateLocked(I)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpUserLILPw(I)V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/UserManagerService$3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/pm/UserManagerService$3;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLocked()V

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIdsLocked()V

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    return-void
.end method

.method private sendUserInfoChangedBroadcast(I)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v1, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DBG_USER] broadcast intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateUserIdsLocked()V
    .registers 7

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_2
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_1b

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget-boolean v5, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_18

    add-int/lit8 v4, v4, 0x1

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1b
    new-array v3, v4, [I

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1f
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_41

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget-boolean v5, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_3e

    add-int/lit8 v2, v1, 0x1

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aput v5, v3, v1

    move v1, v2

    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_41
    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    return-void
.end method

.method private upgradeIfNecessary()V
    .registers 7

    const/4 v4, 0x0

    const/4 v5, 0x2

    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    const-string v2, "Primary"

    iget-object v3, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040921

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    :cond_2b
    const/4 v1, 0x1

    :cond_2c
    if-ge v1, v5, :cond_46

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v2, v0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_45

    iget v2, v0, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/content/pm/UserInfo;->flags:I

    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    :cond_45
    const/4 v1, 0x2

    :cond_46
    if-ge v1, v5, :cond_6d

    const-string v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " didn\'t upgrade as expected to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6c
    return-void

    :cond_6d
    iput v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLocked()V

    goto :goto_6c
.end method

.method private writeApplicationRestrictionsLocked(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 23

    const/4 v6, 0x0

    new-instance v11, Landroid/util/AtomicFile;

    new-instance v15, Ljava/io/File;

    invoke-static/range {p3 .. p3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "res_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".xml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v11, v15}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_2c
    invoke-virtual {v11}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v6

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v12, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v12}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string v15, "utf-8"

    invoke-interface {v12, v3, v15}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v12, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v15, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v12, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const/4 v15, 0x0

    const-string v16, "restrictions"

    move-object/from16 v0, v16

    invoke-interface {v12, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_64
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_114

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    const/4 v15, 0x0

    const-string v16, "entry"

    move-object/from16 v0, v16

    invoke-interface {v12, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v15, 0x0

    const-string v16, "key"

    move-object/from16 v0, v16

    invoke-interface {v12, v15, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    instance-of v15, v13, Ljava/lang/Boolean;

    if-eqz v15, :cond_b2

    const/4 v15, 0x0

    const-string v16, "type"

    const-string v17, "b"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v12, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v15}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9d
    :goto_9d
    const/4 v15, 0x0

    const-string v16, "entry"

    move-object/from16 v0, v16

    invoke-interface {v12, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_a5} :catch_a6

    goto :goto_64

    :catch_a6
    move-exception v5

    invoke-virtual {v11, v6}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string v15, "UserManagerService"

    const-string v16, "Error writing application restrictions list"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b1
    return-void

    :cond_b2
    if-eqz v13, :cond_b8

    :try_start_b4
    instance-of v15, v13, Ljava/lang/String;

    if-eqz v15, :cond_cf

    :cond_b8
    const/4 v15, 0x0

    const-string v16, "type"

    const-string v17, "s"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v12, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v13, :cond_cc

    check-cast v13, Ljava/lang/String;

    :goto_c8
    invoke-interface {v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_9d

    :cond_cc
    const-string v13, ""

    goto :goto_c8

    :cond_cf
    const/4 v15, 0x0

    const-string v16, "type"

    const-string v17, "sa"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v12, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    check-cast v13, [Ljava/lang/String;

    move-object v0, v13

    check-cast v0, [Ljava/lang/String;

    move-object v14, v0

    const/4 v15, 0x0

    const-string v16, "m"

    array-length v0, v14

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v12, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object v2, v14

    array-length v10, v2

    const/4 v8, 0x0

    :goto_f5
    if-ge v8, v10, :cond_9d

    aget-object v4, v2, v8

    const/4 v15, 0x0

    const-string v16, "value"

    move-object/from16 v0, v16

    invoke-interface {v12, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v4, :cond_111

    :goto_103
    invoke-interface {v12, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v15, 0x0

    const-string v16, "value"

    move-object/from16 v0, v16

    invoke-interface {v12, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_f5

    :cond_111
    const-string v4, ""

    goto :goto_103

    :cond_114
    const/4 v15, 0x0

    const-string v16, "restrictions"

    move-object/from16 v0, v16

    invoke-interface {v12, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v11, v6}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_122} :catch_a6

    goto :goto_b1
.end method

.method private writeBitmapLocked(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .registers 11

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v4, "photo.png"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_28

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f9

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_28
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_3d} :catch_41

    :cond_3d
    :try_start_3d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_40} :catch_41

    :goto_40
    return-void

    :catch_41
    move-exception v1

    const-string v4, "UserManagerService"

    const-string v5, "Error setting photo for user "

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    :catch_4a
    move-exception v4

    goto :goto_40
.end method

.method private writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, p3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_12
    return-void
.end method

.method private writeUserListLocked()V
    .registers 11

    const/4 v2, 0x0

    new-instance v6, Landroid/util/AtomicFile;

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v6, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_8
    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string v7, "utf-8"

    invoke-interface {v4, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const/4 v7, 0x0

    const-string v8, "users"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v7, 0x0

    const-string v8, "nextSerialNumber"

    iget v9, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v7, 0x0

    const-string v8, "version"

    iget v9, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x0

    :goto_49
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_74

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    const/4 v7, 0x0

    const-string v8, "user"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v7, 0x0

    const-string v8, "id"

    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v7, 0x0

    const-string v8, "user"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    :cond_74
    const/4 v7, 0x0

    const-string v8, "users"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_80} :catch_81

    :goto_80
    return-void

    :catch_81
    move-exception v1

    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string v7, "UserManagerService"

    const-string v8, "Error writing user list"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80
.end method

.method private writeUserLocked(Landroid/content/pm/UserInfo;)V
    .registers 12

    const/4 v1, 0x0

    new-instance v5, Landroid/util/AtomicFile;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_22
    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string v6, "utf-8"

    invoke-interface {v4, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const/4 v6, 0x0

    const-string v7, "user"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v6, 0x0

    const-string v7, "id"

    iget v8, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v6, 0x0

    const-string v7, "serialNumber"

    iget v8, p1, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v6, 0x0

    const-string v7, "flags"

    iget v8, p1, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v6, 0x0

    const-string v7, "created"

    iget-wide v8, p1, Landroid/content/pm/UserInfo;->creationTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v6, 0x0

    const-string v7, "lastLoggedIn"

    iget-wide v8, p1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v6, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v6, :cond_92

    const/4 v6, 0x0

    const-string v7, "icon"

    iget-object v8, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_92
    iget-boolean v6, p1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v6, :cond_9e

    const/4 v6, 0x0

    const-string v7, "partial"

    const-string v8, "true"

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9e
    const/4 v6, 0x0

    const-string v7, "name"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v6, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v6, 0x0

    const-string v7, "name"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    iget v7, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    if-eqz v3, :cond_f9

    const/4 v6, 0x0

    const-string v7, "restrictions"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "no_config_wifi"

    invoke-direct {p0, v4, v3, v6}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v6, "no_modify_accounts"

    invoke-direct {p0, v4, v3, v6}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v6, "no_install_apps"

    invoke-direct {p0, v4, v3, v6}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v6, "no_uninstall_apps"

    invoke-direct {p0, v4, v3, v6}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v6, "no_share_location"

    invoke-direct {p0, v4, v3, v6}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v6, "no_install_unknown_sources"

    invoke-direct {p0, v4, v3, v6}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v6, "no_config_bluetooth"

    invoke-direct {p0, v4, v3, v6}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v6, "no_usb_file_transfer"

    invoke-direct {p0, v4, v3, v6}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v6, "no_config_credentials"

    invoke-direct {p0, v4, v3, v6}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v6, "no_remove_user"

    invoke-direct {p0, v4, v3, v6}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    const/4 v6, 0x0

    const-string v7, "restrictions"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_f9
    const/4 v6, 0x0

    const-string v7, "user"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v5, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_105} :catch_106

    :goto_105
    return-void

    :catch_106
    move-exception v2

    const-string v6, "UserManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error writing user info "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_105
.end method


# virtual methods
.method public createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 19

    const-string v11, "Only the system can create users"

    invoke-static {v11}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/app/enterprise/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/multiuser/MultiUserManager;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/enterprise/multiuser/MultiUserManager;->multipleUsersAllowed(Z)Z

    move-result v11

    if-nez v11, :cond_16

    const/4 v9, 0x0

    :goto_15
    return-object v9

    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_1a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/UserManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_e8

    :try_start_1f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_e5

    :try_start_24
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->isUserLimitReachedLocked()Z

    move-result v11

    if-eqz v11, :cond_31

    const/4 v9, 0x0

    monitor-exit v13
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_e2

    :try_start_2c
    monitor-exit v12
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_e5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_15

    :cond_31
    :try_start_31
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getNextAvailableIdLocked()I

    move-result v8

    new-instance v9, Landroid/content/pm/UserInfo;

    const/4 v11, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v9, v8, v0, v11, v1}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mBaseUserPath:Ljava/io/File;

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v11, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    add-int/lit8 v14, v11, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iput v11, v9, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide v14, 0xdc46c32800L

    cmp-long v11, v5, v14

    if-lez v11, :cond_df

    :goto_65
    iput-wide v5, v9, Landroid/content/pm/UserInfo;->creationTime:J

    const/4 v11, 0x1

    iput-boolean v11, v9, Landroid/content/pm/UserInfo;->partial:Z

    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v11}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v11, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLocked()V

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v11, v8, v10}, Lcom/android/server/pm/PackageManagerService;->createNewUserLILPw(ILjava/io/File;)V

    const/4 v11, 0x0

    iput-boolean v11, v9, Landroid/content/pm/UserInfo;->partial:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->updateUserIdsLocked()V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v11, v8, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    monitor-exit v13
    :try_end_a1
    .catchall {:try_start_31 .. :try_end_a1} :catchall_e2

    :try_start_a1
    monitor-exit v12
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_e5

    if-eqz v9, :cond_da

    :try_start_a4
    new-instance v2, Landroid/content/Intent;

    const-string v11, "android.intent.action.USER_ADDED"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v11, 0x1000

    invoke-virtual {v2, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v11, "android.intent.extra.user_handle"

    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v11, "UserManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[DBG_USER] broadcast intent: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v13, "android.permission.MANAGE_USERS"

    invoke-virtual {v11, v2, v12, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_da
    .catchall {:try_start_a4 .. :try_end_da} :catchall_e8

    :cond_da
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_15

    :cond_df
    const-wide/16 v5, 0x0

    goto :goto_65

    :catchall_e2
    move-exception v11

    :try_start_e3
    monitor-exit v13
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e2

    :try_start_e4
    throw v11

    :catchall_e5
    move-exception v11

    monitor-exit v12
    :try_end_e7
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_e5

    :try_start_e7
    throw v11
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e8

    :catchall_e8
    move-exception v11

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15

    const-wide/16 v9, 0x0

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_41

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump UserManager from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " without permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_40
    return-void

    :cond_41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_4d
    const-string v5, "Users:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_53
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_e5

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    if-nez v4, :cond_68

    :goto_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    :cond_68
    const-string v5, "  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v5, " serialNo="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_8d

    const-string v5, " <removing> "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_8d
    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v5, :cond_96

    const-string v5, " <partial>"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_96
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v5, "    Created: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, v4, Landroid/content/pm/UserInfo;->creationTime:J

    cmp-long v5, v7, v9

    if-nez v5, :cond_bd

    const-string v5, "<unknown>"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_a9
    const-string v5, "    Last logged in: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, v4, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    cmp-long v5, v7, v9

    if-nez v5, :cond_d1

    const-string v5, "<unknown>"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_65

    :catchall_ba
    move-exception v5

    monitor-exit v6
    :try_end_bc
    .catchall {:try_start_4d .. :try_end_bc} :catchall_ba

    throw v5

    :cond_bd
    const/4 v5, 0x0

    :try_start_be
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-wide v7, v4, Landroid/content/pm/UserInfo;->creationTime:J

    sub-long v7, v1, v7

    invoke-static {v7, v8, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v5, " ago"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_a9

    :cond_d1
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-wide v7, v4, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    sub-long v7, v1, v7

    invoke-static {v7, v8, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v5, " ago"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_65

    :cond_e5
    monitor-exit v6
    :try_end_e6
    .catchall {:try_start_be .. :try_end_e6} :catchall_ba

    goto/16 :goto_40
.end method

.method public exists(I)Z
    .registers 4

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method finishRemoveUser(I)V
    .registers 13

    const-string v0, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishRemoveUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_1c
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DBG_USER] broadcast intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.MANAGE_USERS"

    new-instance v4, Lcom/android/server/pm/UserManagerService$2;

    invoke-direct {v4, p0, p1}, Lcom/android/server/pm/UserManagerService$2;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_57
    .catchall {:try_start_1c .. :try_end_57} :catchall_5b

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_5b
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne v0, p2, :cond_14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUidForPackage(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_19

    :cond_14
    const-string v0, "Only system can get restrictions for other users/apps"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    :cond_19
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1c
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLocked(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_22

    throw v0
.end method

.method public getUserHandle(I)I
    .registers 8

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    array-length v2, v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v2, :cond_18

    aget v3, v0, v1

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    if-ne v4, p1, :cond_15

    monitor-exit v5

    :goto_14
    return v3

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_18
    const/4 v3, -0x1

    monitor-exit v5

    goto :goto_14

    :catchall_1b
    move-exception v4

    monitor-exit v5
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v4
.end method

.method public getUserIcon(I)Landroid/graphics/Bitmap;
    .registers 8

    const/4 v1, 0x0

    const-string v2, "read users"

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    if-eqz v0, :cond_17

    iget-boolean v3, v0, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_31

    :cond_17
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUserIcon: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_30
    return-object v1

    :cond_31
    iget-object v3, v0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-nez v3, :cond_3a

    monitor-exit v2

    goto :goto_30

    :catchall_37
    move-exception v1

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_37

    throw v1

    :cond_3a
    :try_start_3a
    iget-object v1, v0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_37

    goto :goto_30
.end method

.method public getUserIds()[I
    .registers 3

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method getUserIdsLPr()[I
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    return-object v0
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 4

    const-string v0, "query user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public getUserRestrictions(I)Landroid/os/Bundle;
    .registers 5

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_f

    :goto_d
    monitor-exit v2

    return-object v0

    :cond_f
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_d

    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public getUserSerialNumber(I)I
    .registers 4

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, -0x1

    monitor-exit v1

    :goto_b
    return v0

    :cond_c
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    monitor-exit v1

    goto :goto_b

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public getUsers(Z)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    const-string v3, "query users"

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_8
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_14
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_3e

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget-boolean v3, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_2b

    :cond_28
    :goto_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_2b
    if-eqz p1, :cond_37

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_28

    :cond_37
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :catchall_3b
    move-exception v3

    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_3b

    throw v3

    :cond_3e
    :try_start_3e
    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3b

    return-object v2
.end method

.method public isGuestEnabled()Z
    .registers 3

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestEnabled:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isRestricted()Z
    .registers 3

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public makeInitialized(I)V
    .registers 7

    const-string v1, "makeInitialized"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    if-eqz v0, :cond_16

    iget-boolean v1, v0, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_2e

    :cond_16
    const-string v1, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeInitialized: unknown user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    iget v1, v0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_3d

    iget v1, v0, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/content/pm/UserInfo;->flags:I

    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    :cond_3d
    monitor-exit v2

    return-void

    :catchall_3f
    move-exception v1

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_8 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public removeUser(I)Z
    .registers 10

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "Only the system can remove users"

    invoke-static {v5}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_a
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    if-eqz p1, :cond_16

    if-nez v2, :cond_18

    :cond_16
    monitor-exit v5

    :goto_17
    return v4

    :cond_18
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    const/4 v7, 0x1

    invoke-virtual {v6, p1, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v6, 0x1

    iput-boolean v6, v2, Landroid/content/pm/UserInfo;->partial:Z

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    monitor-exit v5
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_4e

    const-string v5, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stopping user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    new-instance v6, Lcom/android/server/pm/UserManagerService$1;

    invoke-direct {v6, p0}, Lcom/android/server/pm/UserManagerService$1;-><init>(Lcom/android/server/pm/UserManagerService;)V

    invoke-interface {v5, p1, v6}, Landroid/app/IActivityManager;->stopUser(ILandroid/app/IStopUserCallback;)I
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_49} :catch_51

    move-result v1

    if-nez v1, :cond_53

    :goto_4c
    move v4, v3

    goto :goto_17

    :catchall_4e
    move-exception v3

    :try_start_4f
    monitor-exit v5
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v3

    :catch_51
    move-exception v0

    goto :goto_17

    :cond_53
    move v3, v4

    goto :goto_4c
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne v0, p3, :cond_14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUidForPackage(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_19

    :cond_14
    const-string v0, "Only system can set restrictions for other users/apps"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    :cond_19
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1c
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLocked(Ljava/lang/String;Landroid/os/Bundle;I)V

    monitor-exit v1

    return-void

    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_21

    throw v0
.end method

.method public setGuestEnabled(Z)V
    .registers 7

    const-string v2, "enable guest users"

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    if-eqz p1, :cond_15

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/enterprise/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/multiuser/MultiUserManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/enterprise/multiuser/MultiUserManager;->multipleUsersAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_15

    :goto_14
    return-void

    :cond_15
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_18
    iget-boolean v2, p0, Lcom/android/server/pm/UserManagerService;->mGuestEnabled:Z

    if-eq v2, p1, :cond_50

    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mGuestEnabled:Z

    const/4 v0, 0x0

    :goto_1f
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_48

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v2, :cond_45

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    if-eqz v2, :cond_45

    if-nez p1, :cond_40

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->removeUser(I)Z

    :cond_40
    monitor-exit v3

    goto :goto_14

    :catchall_42
    move-exception v2

    monitor-exit v3
    :try_end_44
    .catchall {:try_start_18 .. :try_end_44} :catchall_42

    throw v2

    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_48
    if-eqz p1, :cond_50

    :try_start_4a
    const-string v2, "Guest"

    const/4 v4, 0x4

    invoke-virtual {p0, v2, v4}, Lcom/android/server/pm/UserManagerService;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    :cond_50
    monitor-exit v3
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_42

    goto :goto_14
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .registers 8

    const-string v1, "update users"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    if-eqz v0, :cond_16

    iget-boolean v1, v0, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_30

    :cond_16
    const-string v1, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setUserIcon: unknown user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_2f
    return-void

    :cond_30
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/UserManagerService;->writeBitmapLocked(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_3b

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V

    goto :goto_2f

    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public setUserName(ILjava/lang/String;)V
    .registers 9

    const-string v2, "rename users"

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_9
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    if-eqz v1, :cond_17

    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_31

    :cond_17
    const-string v2, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setUserName: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    :cond_30
    :goto_30
    return-void

    :cond_31
    if-eqz p2, :cond_41

    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    iput-object p2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    const/4 v0, 0x1

    :cond_41
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_9 .. :try_end_42} :catchall_48

    if-eqz v0, :cond_30

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V

    goto :goto_30

    :catchall_48
    move-exception v2

    :try_start_49
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v2
.end method

.method public setUserRestrictions(Landroid/os/Bundle;I)V
    .registers 5

    const-string v0, "setUserRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    monitor-exit v1

    return-void

    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public userForeground(I)V
    .registers 9

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz v2, :cond_15

    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_2f

    :cond_15
    const-string v3, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "userForeground: unknown user #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    :goto_2e
    return-void

    :cond_2f
    const-wide v5, 0xdc46c32800L

    cmp-long v3, v0, v5

    if-lez v3, :cond_3d

    iput-wide v0, v2, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    :cond_3d
    monitor-exit v4

    goto :goto_2e

    :catchall_3f
    move-exception v3

    monitor-exit v4
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v3
.end method

.method public wipeUser(I)V
    .registers 3

    const-string v0, "wipe user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    return-void
.end method
