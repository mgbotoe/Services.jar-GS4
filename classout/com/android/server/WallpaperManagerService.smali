.class Lcom/android/server/WallpaperManagerService;
.super Landroid/app/IWallpaperManager$Stub;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WallpaperManagerService$WallpaperSimChangeObserver;,
        Lcom/android/server/WallpaperManagerService$MyPackageMonitor;,
        Lcom/android/server/WallpaperManagerService$WallpaperConnection;,
        Lcom/android/server/WallpaperManagerService$WallpaperData;,
        Lcom/android/server/WallpaperManagerService$WallpaperObserver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final IMAGE_WALLPAPER:Landroid/content/ComponentName; = null

.field static final MIN_WALLPAPER_CRASH_TIME:J = 0x2710L

.field static final MultiSIMProfile:Z = false

.field static final SETTINGS_SYSTEMUI_TRANSPARENCY:Ljava/lang/String; = "android.wallpaper.settings_systemui_transparency"

.field static final TAG:Ljava/lang/String; = "WallpaperService"

.field static final WALLPAPER:Ljava/lang/String; = "wallpaper"

.field static final WALLPAPER_2:Ljava/lang/String; = "wallpaper2"

.field static final WALLPAPER_FOR_PROFILE:[Ljava/lang/String; = null

.field static final WALLPAPER_INFO:Ljava/lang/String; = "wallpaper_info.xml"

.field static final WALLPAPER_INFO_FOR_PROFILE:[Ljava/lang/String;


# instance fields
.field final mContext:Landroid/content/Context;

.field mCurrentUserId:I

.field private mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field final mIPackageManager:Landroid/content/pm/IPackageManager;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field mLastWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

.field final mLock:Ljava/lang/Object;

.field final mMonitor:Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

.field private mReceiver:Lcom/android/server/WallpaperManagerService$WallpaperSimChangeObserver;

.field mWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field whichSimSetWallpaper:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "wallpaper_info_profile_01.xml"

    aput-object v1, v0, v2

    const-string v1, "wallpaper_info_profile_02.xml"

    aput-object v1, v0, v3

    const-string v1, "wallpaper_info_profile_03.xml"

    aput-object v1, v0, v4

    const-string v1, "wallpaper_info_profile_04.xml"

    aput-object v1, v0, v5

    const-string v1, "wallpaper_info_profile_05.xml"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/WallpaperManagerService;->WALLPAPER_INFO_FOR_PROFILE:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "wallpaper_profile_01"

    aput-object v1, v0, v2

    const-string v1, "wallpaper_profile_02"

    aput-object v1, v0, v3

    const-string v1, "wallpaper_profile_03"

    aput-object v1, v0, v4

    const-string v1, "wallpaper_profile_04"

    aput-object v1, v0, v5

    const-string v1, "wallpaper_profile_05"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FOR_PROFILE:[Ljava/lang/String;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.ImageWallpaper"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/app/IWallpaperManager$Stub;-><init>()V

    new-array v0, v3, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    iput v3, p0, Lcom/android/server/WallpaperManagerService;->whichSimSetWallpaper:I

    iput-object v4, p0, Lcom/android/server/WallpaperManagerService;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    new-instance v0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;-><init>(Lcom/android/server/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mMonitor:Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mMonitor:Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v4, v1, v2}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    invoke-static {v3}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-direct {p0, v3}, Lcom/android/server/WallpaperManagerService;->loadSettingsLocked(I)V

    return-void
.end method

.method private SimStatusVerify()I
    .registers 6

    const/4 v0, 0x0

    const-string v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimStatusVerify"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "ril.MSIMM"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    const/4 v0, 0x1

    :goto_2e
    const-string v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WallpaperManagerService->SimStatusVerify slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " currSimId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_51
    const-string v2, "persist.radio.calldefault.simid"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2e
.end method

.method static synthetic access$000(I)Ljava/io/File;
    .registers 2

    invoke-static {p0}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/WallpaperManagerService;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->SimStatusVerify()I

    move-result v0

    return v0
.end method

.method private checkPermission(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    return-void
.end method

.method private deleteMultiSIMProfileJournaledFile(II)V
    .registers 6

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    const/4 v2, -0x1

    if-eq p2, v2, :cond_b

    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/server/WallpaperManagerService;->WALLPAPER_INFO_FOR_PROFILE:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_b
.end method

.method private deleteMultiSIMProfileWallpaper(II)V
    .registers 6

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    const/4 v2, -0x1

    if-eq p2, v2, :cond_b

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FOR_PROFILE:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_b
.end method

.method private deleteWallpaperFile(II)V
    .registers 6

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    if-nez p2, :cond_1f

    new-instance v1, Ljava/io/File;

    const-string v2, "wallpaper"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_15
    :goto_15
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_b

    :cond_1f
    const/4 v2, 0x1

    if-ne p2, v2, :cond_15

    new-instance v1, Ljava/io/File;

    const-string v2, "wallpaper2"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_15
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .registers 3

    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-nez v0, :cond_13

    const-string v1, "WallpaperService"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-object v0
.end method

.method private static getWallpaperDir(I)Ljava/io/File;
    .registers 2

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private loadSettingsLocked(I)V
    .registers 20

    invoke-static/range {p1 .. p1}, Lcom/android/server/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/android/server/WallpaperManagerService;->migrateFromOld()V

    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/WallpaperManagerService$WallpaperData;

    if-nez v13, :cond_30

    new-instance v13, Lcom/android/server/WallpaperManagerService$WallpaperData;

    move/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/server/WallpaperManagerService$WallpaperData;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v15, v0, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_30
    const/4 v10, 0x0

    :try_start_31
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_36} :catch_dc
    .catch Ljava/lang/NullPointerException; {:try_start_31 .. :try_end_36} :catch_e5
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_36} :catch_10d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_31 .. :try_end_36} :catch_136
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_36} :catch_15f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_31 .. :try_end_36} :catch_188

    :try_start_36
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    const/4 v15, 0x0

    invoke-interface {v7, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_3e
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    const/4 v15, 0x2

    if-ne v12, v15, :cond_a3

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v15, "wp"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a3

    const/4 v15, 0x0

    const-string v16, "width"

    move-object/from16 v0, v16

    invoke-interface {v7, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v13, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    const/4 v15, 0x0

    const-string v16, "height"

    move-object/from16 v0, v16

    invoke-interface {v7, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v13, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    const/4 v15, 0x0

    const-string v16, "name"

    move-object/from16 v0, v16

    invoke-interface {v7, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v13, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "component"

    move-object/from16 v0, v16

    invoke-interface {v7, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_da

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v15

    :goto_89
    iput-object v15, v13, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    iget-object v15, v13, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v15, :cond_9f

    const-string v15, "android"

    iget-object v0, v13, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a3

    :cond_9f
    sget-object v15, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    iput-object v15, v13, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;
    :try_end_a3
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_a3} :catch_1c6
    .catch Ljava/lang/NullPointerException; {:try_start_36 .. :try_end_a3} :catch_1c2
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_a3} :catch_1be
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_36 .. :try_end_a3} :catch_1ba
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_a3} :catch_1b7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_36 .. :try_end_a3} :catch_1b4

    :cond_a3
    const/4 v15, 0x1

    if-ne v12, v15, :cond_3e

    const/4 v10, 0x1

    move-object v8, v9

    :goto_a8
    if-eqz v8, :cond_ad

    :try_start_aa
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_1b1

    :cond_ad
    :goto_ad
    if-nez v10, :cond_b9

    const/4 v15, -0x1

    iput v15, v13, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    const/4 v15, -0x1

    iput v15, v13, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    const-string v15, ""

    iput-object v15, v13, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    :cond_b9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v16, "window"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v1

    iget v15, v13, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    if-ge v15, v1, :cond_d3

    iput v1, v13, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    :cond_d3
    iget v15, v13, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    if-ge v15, v1, :cond_d9

    iput v1, v13, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    :cond_d9
    return-void

    :cond_da
    const/4 v15, 0x0

    goto :goto_89

    :catch_dc
    move-exception v4

    :goto_dd
    const-string v15, "WallpaperService"

    const-string v16, "no current wallpaper -- first boot?"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    :catch_e5
    move-exception v4

    :goto_e6
    const-string v15, "WallpaperService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    :catch_10d
    move-exception v4

    :goto_10e
    const-string v15, "WallpaperService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a8

    :catch_136
    move-exception v4

    :goto_137
    const-string v15, "WallpaperService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a8

    :catch_15f
    move-exception v4

    :goto_160
    const-string v15, "WallpaperService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a8

    :catch_188
    move-exception v4

    :goto_189
    const-string v15, "WallpaperService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a8

    :catch_1b1
    move-exception v15

    goto/16 :goto_ad

    :catch_1b4
    move-exception v4

    move-object v8, v9

    goto :goto_189

    :catch_1b7
    move-exception v4

    move-object v8, v9

    goto :goto_160

    :catch_1ba
    move-exception v4

    move-object v8, v9

    goto/16 :goto_137

    :catch_1be
    move-exception v4

    move-object v8, v9

    goto/16 :goto_10e

    :catch_1c2
    move-exception v4

    move-object v8, v9

    goto/16 :goto_e6

    :catch_1c6
    move-exception v4

    move-object v8, v9

    goto/16 :goto_dd
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .registers 7

    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "wallpaper_info.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private migrateFromOld()V
    .registers 8

    const/4 v6, 0x0

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/data/com.android.settings/files/wallpaper"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v4, "/data/system/wallpaper_info.xml"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_23

    new-instance v1, Ljava/io/File;

    invoke-static {v6}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string v5, "wallpaper"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_23
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_37

    new-instance v0, Ljava/io/File;

    invoke-static {v6}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string v5, "wallpaper_info.xml"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_37
    return-void
.end method

.method private notifyCallbacksLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .registers 8

    #getter for: Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService$WallpaperData;->access$400(Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v2, :cond_1b

    :try_start_b
    #getter for: Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService$WallpaperData;->access$400(Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_36

    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1b
    #getter for: Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService$WallpaperData;->access$400(Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :catch_36
    move-exception v3

    goto :goto_18
.end method

.method private registerSimChangedReceiver()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/WallpaperManagerService$WallpaperSimChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/server/WallpaperManagerService$WallpaperSimChangeObserver;-><init>(Lcom/android/server/WallpaperManagerService;)V

    iput-object v1, p0, Lcom/android/server/WallpaperManagerService;->mReceiver:Lcom/android/server/WallpaperManagerService$WallpaperSimChangeObserver;

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mReceiver:Lcom/android/server/WallpaperManagerService$WallpaperSimChangeObserver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;Z)V

    return-void
.end method

.method private saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;Z)V
    .registers 19

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v13}, Lcom/android/server/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v6

    const/4 v10, 0x0

    :try_start_9
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v11, v13, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_13} :catch_11f

    :try_start_13
    new-instance v8, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v8}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string v13, "utf-8"

    invoke-interface {v8, v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v8, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v13, 0x0

    const-string v14, "wp"

    invoke-interface {v8, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v13, 0x0

    const-string v14, "width"

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v13, 0x0

    const-string v14, "height"

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v13, 0x0

    const-string v14, "name"

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-interface {v8, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v13, :cond_72

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    sget-object v14, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {v13, v14}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_72

    const/4 v13, 0x0

    const-string v14, "component"

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_72
    const/4 v13, 0x0

    const-string v14, "wp"

    invoke-interface {v8, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v6}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_81} :catch_1de

    move-object v10, v11

    :goto_82
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WallpaperManagerService;->SimStatusVerify()I

    move-result v1

    if-eqz p2, :cond_11e

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/WallpaperManagerService;->whichSimSetWallpaper:I

    if-ne v13, v1, :cond_11e

    const/4 v9, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v13, :cond_a9

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    sget-object v14, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {v13, v14}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a9

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    :cond_a9
    const/4 v3, -0x1

    const/4 v12, 0x0

    const-string v5, ""

    const-string v7, ""

    if-eqz v1, :cond_b7

    add-int/lit8 v13, v1, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    :cond_b7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "wallpaper"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v13}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v13

    invoke-direct {v12, v13, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_185

    if-eqz v9, :cond_13c

    const-string v13, "WallpaperService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "saveSettingsLocked - liveWallpaper : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_f7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v9, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v13, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v13, v13, 0x81

    if-nez v13, :cond_12a

    const-string v13, "WallpaperService"

    const-string v14, "saveSettingsLocked - other liveWallpapers - FALSE"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_111
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f7 .. :try_end_111} :catch_133

    const/4 v3, 0x0

    :goto_112
    const-string v13, "WallpaperService"

    const-string v14, "saveSettingsLocked-setSettingsSystemUiTransparency"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/WallpaperManagerService;->setSettingsSystemUiTransparency(I)V

    :cond_11e
    return-void

    :catch_11f
    move-exception v4

    :goto_120
    if-eqz v10, :cond_125

    :try_start_122
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_125
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_125} :catch_1db

    :cond_125
    :goto_125
    invoke-virtual {v6}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto/16 :goto_82

    :cond_12a
    :try_start_12a
    const-string v13, "WallpaperService"

    const-string v14, "saveSettingsLocked - liveWallpaperSet - TRUE"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_131
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12a .. :try_end_131} :catch_133

    const/4 v3, 0x1

    goto :goto_112

    :catch_133
    move-exception v4

    const-string v13, "WallpaperService"

    const-string v14, "saveSettingsLocked - NameNotFoundException"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_112

    :cond_13c
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    if-eqz v13, :cond_17c

    const-string v13, "WallpaperService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "saveSettingsLocked - imageWallpaper : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    const-string v14, "com.sec.android.app.wallpaperchooser"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_173

    const-string v13, "WallpaperService"

    const-string v14, "saveSettingsLocked - wallpaperSet - TRUE"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_112

    :cond_173
    const-string v13, "WallpaperService"

    const-string v14, "saveSettingsLocked - other images - FALSE"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_112

    :cond_17c
    const-string v13, "WallpaperService"

    const-string v14, "saveSettingsLocked - abnormal case - FALSE"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_112

    :cond_185
    if-eqz v9, :cond_1d1

    const-string v13, "WallpaperService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "saveSettingsLocked - liveWallpaper : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_19f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v9, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v13, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v13, v13, 0x81

    if-nez v13, :cond_1bc

    const-string v13, "WallpaperService"

    const-string v14, "saveSettingsLocked - other liveWallpapers - FALSE"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_112

    :cond_1bc
    const-string v13, "WallpaperService"

    const-string v14, "saveSettingsLocked - liveWallpaperSet - TRUE"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19f .. :try_end_1c3} :catch_1c6

    const/4 v3, 0x1

    goto/16 :goto_112

    :catch_1c6
    move-exception v4

    const-string v13, "WallpaperService"

    const-string v14, "saveSettingsLocked - NameNotFoundException"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto/16 :goto_112

    :cond_1d1
    const-string v13, "WallpaperService"

    const-string v14, "saveSettingsLocked - defaultWallpaper - TRUE"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto/16 :goto_112

    :catch_1db
    move-exception v13

    goto/16 :goto_125

    :catch_1de
    move-exception v4

    move-object v10, v11

    goto/16 :goto_120
.end method

.method private simInserted(I)Z
    .registers 5

    const-string v1, "ril.ICC_TYPE"

    invoke-static {v1, p1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method


# virtual methods
.method attachServiceLocked(Lcom/android/server/WallpaperManagerService$WallpaperConnection;Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .registers 13

    const/4 v9, 0x0

    const/4 v8, 0x0

    :try_start_2
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    iget-object v2, p1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v3, 0x7dd

    const/4 v4, 0x0

    iget v5, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    iget v6, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZII)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_12

    :cond_11
    :goto_11
    return-void

    :catch_12
    move-exception v7

    const-string v0, "WallpaperService"

    const-string v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v0, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-nez v0, :cond_11

    move-object v0, p0

    move-object v1, v9

    move v2, v8

    move v3, v8

    move-object v4, p2

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    goto :goto_11
.end method

.method bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    .registers 27

    if-nez p2, :cond_2c

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_2c

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v3, :cond_12

    if-nez p1, :cond_2c

    const/4 v3, 0x1

    :goto_11
    return v3

    :cond_12
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    sget-object v4, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    const/4 v3, 0x1

    goto :goto_11

    :cond_2c
    if-nez p1, :cond_43

    :try_start_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v4, 0x1040054

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3f

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    :cond_3f
    if-nez p1, :cond_43

    sget-object p1, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    :cond_43
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/16 v4, 0x1080

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v3, v0, v4, v1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v18

    const-string v3, "android.permission.BIND_WALLPAPER"

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected service does not require android.permission.BIND_WALLPAPER: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    if-eqz p3, :cond_a8

    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_80} :catch_80

    :catch_80
    move-exception v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    if-eqz p3, :cond_232

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a8
    :try_start_a8
    const-string v3, "WallpaperService"

    invoke-static {v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_11

    :cond_b0
    const/16 v19, 0x0

    new-instance v12, Landroid/content/Intent;

    const-string v3, "android.service.wallpaper.WallpaperService"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_167

    sget-object v3, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_167

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    move/from16 v0, v17

    invoke-interface {v3, v12, v4, v5, v0}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v15

    const/4 v11, 0x0

    :goto_de
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    if-ge v11, v3, :cond_11b

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15c

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_107
    .catch Landroid/os/RemoteException; {:try_start_a8 .. :try_end_107} :catch_80

    move-result v3

    if-eqz v3, :cond_15c

    :try_start_10a
    new-instance v19, Landroid/app/WallpaperInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v3}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_11b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10a .. :try_end_11b} :catch_13a
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_11b} :catch_14b
    .catch Landroid/os/RemoteException; {:try_start_10a .. :try_end_11b} :catch_80

    :cond_11b
    if-nez v19, :cond_167

    :try_start_11d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected service is not a wallpaper: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    if-eqz p3, :cond_15f

    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_13a
    move-exception v10

    if-eqz p3, :cond_143

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_143
    const-string v3, "WallpaperService"

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    goto/16 :goto_11

    :catch_14b
    move-exception v10

    if-eqz p3, :cond_154

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_154
    const-string v3, "WallpaperService"

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    goto/16 :goto_11

    :cond_15c
    add-int/lit8 v11, v11, 0x1

    goto :goto_de

    :cond_15f
    const-string v3, "WallpaperService"

    invoke-static {v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_11

    :cond_167
    new-instance v14, Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p4

    invoke-direct {v14, v0, v1, v2}, Lcom/android/server/WallpaperManagerService$WallpaperConnection;-><init>(Lcom/android/server/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.client_label"

    const v4, 0x1040722

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v20, "android.intent.extra.client_intent"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v7, 0x1040723

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Landroid/os/UserHandle;

    move/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-instance v5, Landroid/os/UserHandle;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v12, v14, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_1e5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to bind service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    if-eqz p3, :cond_1dd

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1dd
    const-string v3, "WallpaperService"

    invoke-static {v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_11

    :cond_1e5
    move-object/from16 v0, p4

    iget v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    if-ne v3, v4, :cond_1fe

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    if-eqz v3, :cond_1fe

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    :cond_1fe
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p4

    iput-object v14, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p4

    iput-wide v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    move-object/from16 v0, p5

    iput-object v0, v14, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;
    :try_end_214
    .catch Landroid/os/RemoteException; {:try_start_11d .. :try_end_214} :catch_80

    :try_start_214
    move-object/from16 v0, p4

    iget v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    if-ne v3, v4, :cond_22f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v4, v14, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v5, 0x7dd

    invoke-interface {v3, v4, v5}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;
    :try_end_22f
    .catch Landroid/os/RemoteException; {:try_start_214 .. :try_end_22f} :catch_23a

    :cond_22f
    :goto_22f
    const/4 v3, 0x1

    goto/16 :goto_11

    :cond_232
    const-string v3, "WallpaperService"

    invoke-static {v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_11

    :catch_23a
    move-exception v3

    goto :goto_22f
.end method

.method public clearWallpaper()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_e

    throw v0
.end method

.method clearWallpaperComponentLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Lcom/android/server/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V
    .registers 14

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WallpaperManagerService$WallpaperData;

    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->SimStatusVerify()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/WallpaperManagerService;->deleteWallpaperFile(II)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_16
    iput-boolean v0, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    iget v0, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_1a} :catch_44

    if-eq p2, v0, :cond_20

    :cond_1c
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    if-eqz p1, :cond_24

    :try_start_22
    sget-object v1, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    :cond_24
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_2b} :catch_44

    move-result v0

    if-nez v0, :cond_1c

    :goto_2e
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v0, "WallpaperService"

    const-string v1, "Default wallpaper component not found!"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v4}, Lcom/android/server/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    if-eqz p3, :cond_1f

    const/4 v0, 0x0

    :try_start_3e
    invoke-interface {p3, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_1f

    :catch_42
    move-exception v0

    goto :goto_1f

    :catch_44
    move-exception v7

    move-object v6, v7

    goto :goto_2e

    :catchall_47
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public copyFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_5

    if-eqz p2, :cond_5

    const/4 v2, 0x0

    :try_start_10
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_34
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_3e

    const v5, 0x8000

    :try_start_18
    new-array v1, v5, [B

    :goto_1a
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_2d

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_3b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_24} :catch_25

    goto :goto_1a

    :catch_25
    move-exception v5

    move-object v2, v3

    :goto_27
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_5

    :cond_2d
    if-eqz v3, :cond_32

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_32
    move-object v2, v3

    goto :goto_5

    :catchall_34
    move-exception v5

    :goto_35
    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_3a
    throw v5

    :catchall_3b
    move-exception v5

    move-object v2, v3

    goto :goto_35

    :catch_3e
    move-exception v5

    goto :goto_27
.end method

.method detachWallpaperLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_3e

    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_17

    :try_start_b
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_13} :catch_43

    :goto_13
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    :cond_17
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_24

    :try_start_1d
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_24} :catch_41

    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :try_start_2b
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_34} :catch_3f

    :goto_34
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iput-object v2, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    :cond_3e
    return-void

    :catch_3f
    move-exception v0

    goto :goto_34

    :catch_41
    move-exception v0

    goto :goto_24

    :catch_43
    move-exception v0

    goto :goto_13
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_33

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump wallpaper service from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_32
    return-void

    :cond_33
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_36
    const-string v3, "Current Wallpaper Service state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_3c
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_e8

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WallpaperManagerService$WallpaperData;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " User "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  mWidth="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " mHeight="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    const-string v3, "  mName="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  mWallpaperComponent="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_e4

    iget-object v0, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    const-string v3, "  Wallpaper connection "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v3, :cond_b7

    const-string v3, "    mInfo.component="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_b7
    const-string v3, "    mToken="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v3, "    mService="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v3, "    mEngine="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v3, "    mLastDiedTime="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {p2, v5, v6}, Ljava/io/PrintWriter;->println(J)V

    :cond_e4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3c

    :cond_e8
    monitor-exit v4

    goto/16 :goto_32

    :catchall_eb
    move-exception v3

    monitor-exit v4
    :try_end_ed
    .catchall {:try_start_36 .. :try_end_ed} :catchall_eb

    throw v3
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Landroid/app/IWallpaperManager$Stub;->finalize()V

    const/4 v0, 0x0

    :goto_4
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1c

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-object v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v2}, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1c
    return-void
.end method

.method public getHeightHint()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    monitor-exit v2

    return v1

    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method getMultiSIMProfileWallpaper(II)Landroid/os/ParcelFileDescriptor;
    .registers 7

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    :goto_b
    return-object v1

    :cond_c
    const/4 v2, -0x1

    if-eq p2, v2, :cond_b

    :try_start_f
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FOR_PROFILE:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 v3, 0x3800

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_1d} :catch_1f

    move-result-object v1

    goto :goto_b

    :catch_1f
    move-exception v2

    goto :goto_b
.end method

.method getMultiSIMProfileWallpaperInfo(II)Landroid/os/ParcelFileDescriptor;
    .registers 8

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_c

    :cond_b
    :goto_b
    return-object v1

    :cond_c
    const/4 v3, -0x1

    if-eq p2, v3, :cond_b

    :try_start_f
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/WallpaperManagerService;->WALLPAPER_INFO_FOR_PROFILE:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_21
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/server/WallpaperManagerService;->WALLPAPER_INFO_FOR_PROFILE:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 v4, 0x3800

    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_2f} :catch_31

    move-result-object v1

    goto :goto_b

    :catch_31
    move-exception v3

    goto :goto_b
.end method

.method getName()Ljava/lang/String;
    .registers 4

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .registers 16

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_4
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->SimStatusVerify()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v7, 0x0

    const/16 v10, 0x3e8

    if-ne v1, v10, :cond_a2

    iget v7, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    :goto_13
    iget-object v10, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WallpaperManagerService$WallpaperData;
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_b0

    if-eqz p2, :cond_2b

    :try_start_1d
    const-string v10, "width"

    iget v11, v6, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "height"

    iget v11, v6, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2b
    const-string v4, ""

    const-string v5, ""

    if-eqz v0, :cond_37

    add-int/lit8 v10, v0, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    :cond_37
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "wallpaper"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v10, "WallpaperService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "callback register : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #getter for: Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v6}, Lcom/android/server/WallpaperManagerService$WallpaperData;->access$400(Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    new-instance v3, Ljava/io/File;

    invoke-static {v7}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v10

    invoke-direct {v3, v10, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_a8

    const-string v10, "WallpaperService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WallpaperManagerService  SimStatusFlag : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " WALLPAPER_FILE:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not existed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catchall {:try_start_1d .. :try_end_a0} :catchall_b0
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_a0} :catch_b3

    :try_start_a0
    monitor-exit v9

    :goto_a1
    return-object v8

    :cond_a2
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_a5
    .catchall {:try_start_a0 .. :try_end_a5} :catchall_b0

    move-result v7

    goto/16 :goto_13

    :cond_a8
    const/high16 v10, 0x1000

    :try_start_aa
    invoke-static {v3, v10}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_b0
    .catch Ljava/io/FileNotFoundException; {:try_start_aa .. :try_end_ad} :catch_b3

    move-result-object v8

    :try_start_ae
    monitor-exit v9

    goto :goto_a1

    :catchall_b0
    move-exception v8

    monitor-exit v9
    :try_end_b2
    .catchall {:try_start_ae .. :try_end_b2} :catchall_b0

    throw v8

    :catch_b3
    move-exception v2

    :try_start_b4
    const-string v10, "WallpaperService"

    const-string v11, "Error getting wallpaper"

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v9
    :try_end_bc
    .catchall {:try_start_b4 .. :try_end_bc} :catchall_b0

    goto :goto_a1
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .registers 5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_7
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-object v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_19

    iget-object v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    monitor-exit v3

    :goto_18
    return-object v2

    :cond_19
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_18

    :catchall_1c
    move-exception v2

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method public getWidthHint()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    monitor-exit v2

    return v1

    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public hasNamedWallpaper(Ljava/lang/String;)Z
    .registers 11

    iget-object v7, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_55

    move-result-wide v1

    :try_start_7
    iget-object v6, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v8, "user"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_50

    move-result-object v4

    :try_start_15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget-object v6, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v8, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WallpaperManagerService$WallpaperData;

    if-nez v5, :cond_43

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/server/WallpaperManagerService;->loadSettingsLocked(I)V

    iget-object v6, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v8, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WallpaperManagerService$WallpaperData;

    :cond_43
    if-eqz v5, :cond_1c

    iget-object v6, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    const/4 v6, 0x1

    monitor-exit v7

    :goto_4f
    return v6

    :catchall_50
    move-exception v6

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :catchall_55
    move-exception v6

    monitor-exit v7
    :try_end_57
    .catchall {:try_start_15 .. :try_end_57} :catchall_55

    throw v6

    :cond_58
    :try_start_58
    monitor-exit v7
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_55

    const/4 v6, 0x0

    goto :goto_4f
.end method

.method multiSIMProfileWallpaperRestored(I)V
    .registers 11

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_5
    invoke-direct {p0, p1}, Lcom/android/server/WallpaperManagerService;->loadSettingsLocked(I)V

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    move-object v5, v0

    iget-object v1, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_3d

    iget-object v1, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    sget-object v2, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    iget-object v2, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v1

    if-nez v1, :cond_34

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    :cond_34
    :goto_34
    monitor-exit v8
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_47

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_38
    invoke-direct {p0, v5}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_4a

    return-void

    :cond_3d
    :try_start_3d
    iget-object v2, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    goto :goto_34

    :catchall_47
    move-exception v1

    monitor-exit v8
    :try_end_49
    .catchall {:try_start_3d .. :try_end_49} :catchall_47

    throw v1

    :catchall_4a
    move-exception v1

    :try_start_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method onRemoveUser(I)V
    .registers 8

    const/4 v3, 0x1

    if-ge p1, v3, :cond_4

    :goto_3
    return-void

    :cond_4
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/WallpaperManagerService;->onStoppingUser(I)V

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    const-string v5, "wallpaper"

    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    const-string v5, "wallpaper2"

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    const-string v5, "wallpaper_info.xml"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    monitor-exit v4

    goto :goto_3

    :catchall_36
    move-exception v3

    monitor-exit v4
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_36

    throw v3
.end method

.method onStoppingUser(I)V
    .registers 5

    const/4 v1, 0x1

    if-ge p1, v1, :cond_4

    :goto_3
    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_22

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    if-eqz v1, :cond_1d

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    :cond_1d
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_22
    monitor-exit v2

    goto :goto_3

    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public restoreMultiSIMProfileWallpaper(III)V
    .registers 9

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    const/4 v4, -0x1

    if-eq p3, v4, :cond_b

    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FOR_PROFILE:[Ljava/lang/String;

    aget-object v4, v4, p3

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_32

    invoke-direct {p0, p1, p2}, Lcom/android/server/WallpaperManagerService;->deleteWallpaperFile(II)V

    new-instance v3, Ljava/io/File;

    const-string v4, "wallpaper_info.xml"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_b

    :cond_32
    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v4, p2}, Lcom/android/server/WallpaperManagerService;->setWallpaperForMultiSim(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_b

    :try_start_3a
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Lcom/android/server/WallpaperManagerService;->copyFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_41} :catch_42

    goto :goto_b

    :catch_42
    move-exception v4

    goto :goto_b
.end method

.method public restoreMultiSIMProfileWallpaperInfo(II)V
    .registers 10

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    const/4 v5, -0x1

    if-eq p2, v5, :cond_b

    new-instance v2, Ljava/io/File;

    sget-object v5, Lcom/android/server/WallpaperManagerService;->WALLPAPER_INFO_FOR_PROFILE:[Ljava/lang/String;

    aget-object v5, v5, p2

    invoke-direct {v2, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2f

    new-instance v4, Ljava/io/File;

    const-string v5, "wallpaper_info.xml"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_b

    :cond_2f
    const/4 v1, 0x0

    :try_start_30
    new-instance v3, Ljava/io/File;

    const-string v5, "wallpaper_info.xml"

    invoke-direct {v3, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_40
    new-instance v5, Ljava/io/File;

    const-string v6, "wallpaper_info.xml"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 v6, 0x3800

    invoke-static {v5, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_4c} :catch_59

    move-result-object v1

    :goto_4d
    if-eqz v1, :cond_b

    :try_start_4f
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v1}, Lcom/android/server/WallpaperManagerService;->copyFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_56} :catch_57

    goto :goto_b

    :catch_57
    move-exception v5

    goto :goto_b

    :catch_59
    move-exception v5

    goto :goto_4d
.end method

.method restoreNamedResourceLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)Z
    .registers 23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_14b

    const-string v17, "res:"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x4

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14b

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const/4 v10, 0x0

    const/16 v17, 0x3a

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_47

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    :cond_47
    const/4 v9, 0x0

    const/16 v17, 0x2f

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    if-lez v15, :cond_5a

    add-int/lit8 v17, v15, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    :cond_5a
    const/16 v16, 0x0

    if-lez v5, :cond_72

    if-lez v15, :cond_72

    sub-int v17, v15, v5

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_72

    add-int/lit8 v17, v5, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    :cond_72
    if-eqz v10, :cond_14b

    if-eqz v9, :cond_14b

    if-eqz v16, :cond_14b

    const/4 v13, -0x1

    const/4 v12, 0x0

    const/4 v7, 0x0

    :try_start_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v14, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_e1

    const-string v17, "WallpaperService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "couldn\'t resolve identifier pkg="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " type="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ident="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d1
    .catchall {:try_start_7b .. :try_end_d1} :catchall_1c1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7b .. :try_end_d1} :catch_1e9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7b .. :try_end_d1} :catch_17c
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_d1} :catch_1a7

    const/16 v17, 0x0

    if-eqz v12, :cond_d8

    :try_start_d5
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_1db

    :cond_d8
    :goto_d8
    if-eqz v7, :cond_e0

    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :try_start_dd
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_179

    :cond_e0
    :goto_e0
    return v17

    :cond_e1
    :try_start_e1
    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_fa

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    :cond_fa
    new-instance v8, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_107
    .catchall {:try_start_e1 .. :try_end_107} :catchall_1c1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e1 .. :try_end_107} :catch_1e9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e1 .. :try_end_107} :catch_17c
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_107} :catch_1a7

    const v17, 0x8000

    :try_start_10a
    move/from16 v0, v17

    new-array v3, v0, [B

    :goto_10e
    invoke-virtual {v12, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_14e

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v3, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_11b
    .catchall {:try_start_10a .. :try_end_11b} :catchall_1e0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10a .. :try_end_11b} :catch_11c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10a .. :try_end_11b} :catch_1e6
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_11b} :catch_1e3

    goto :goto_10e

    :catch_11c
    move-exception v6

    move-object v7, v8

    :goto_11e
    :try_start_11e
    const-string v17, "WallpaperService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package name "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " not found"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13e
    .catchall {:try_start_11e .. :try_end_13e} :catchall_1c1

    if-eqz v12, :cond_143

    :try_start_140
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_143} :catch_1d4

    :cond_143
    :goto_143
    if-eqz v7, :cond_14b

    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :try_start_148
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_14b
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_14b} :catch_1a5

    :cond_14b
    :goto_14b
    const/16 v17, 0x0

    goto :goto_e0

    :cond_14e
    :try_start_14e
    const-string v17, "WallpaperService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Restored wallpaper: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_168
    .catchall {:try_start_14e .. :try_end_168} :catchall_1e0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14e .. :try_end_168} :catch_11c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14e .. :try_end_168} :catch_1e6
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_168} :catch_1e3

    const/16 v17, 0x1

    if-eqz v12, :cond_16f

    :try_start_16c
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_16f
    .catch Ljava/io/IOException; {:try_start_16c .. :try_end_16f} :catch_1de

    :cond_16f
    :goto_16f
    if-eqz v8, :cond_e0

    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :try_start_174
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_177
    .catch Ljava/io/IOException; {:try_start_174 .. :try_end_177} :catch_179

    goto/16 :goto_e0

    :catch_179
    move-exception v18

    goto/16 :goto_e0

    :catch_17c
    move-exception v6

    :goto_17d
    :try_start_17d
    const-string v17, "WallpaperService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Resource not found: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_197
    .catchall {:try_start_17d .. :try_end_197} :catchall_1c1

    if-eqz v12, :cond_19c

    :try_start_199
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_19c
    .catch Ljava/io/IOException; {:try_start_199 .. :try_end_19c} :catch_1d7

    :cond_19c
    :goto_19c
    if-eqz v7, :cond_14b

    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :try_start_1a1
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a4
    .catch Ljava/io/IOException; {:try_start_1a1 .. :try_end_1a4} :catch_1a5

    goto :goto_14b

    :catch_1a5
    move-exception v17

    goto :goto_14b

    :catch_1a7
    move-exception v6

    :goto_1a8
    :try_start_1a8
    const-string v17, "WallpaperService"

    const-string v18, "IOException while restoring wallpaper "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b3
    .catchall {:try_start_1a8 .. :try_end_1b3} :catchall_1c1

    if-eqz v12, :cond_1b8

    :try_start_1b5
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1b8
    .catch Ljava/io/IOException; {:try_start_1b5 .. :try_end_1b8} :catch_1d9

    :cond_1b8
    :goto_1b8
    if-eqz v7, :cond_14b

    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :try_start_1bd
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c0
    .catch Ljava/io/IOException; {:try_start_1bd .. :try_end_1c0} :catch_1a5

    goto :goto_14b

    :catchall_1c1
    move-exception v17

    :goto_1c2
    if-eqz v12, :cond_1c7

    :try_start_1c4
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1c7
    .catch Ljava/io/IOException; {:try_start_1c4 .. :try_end_1c7} :catch_1d0

    :cond_1c7
    :goto_1c7
    if-eqz v7, :cond_1cf

    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :try_start_1cc
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1cf
    .catch Ljava/io/IOException; {:try_start_1cc .. :try_end_1cf} :catch_1d2

    :cond_1cf
    :goto_1cf
    throw v17

    :catch_1d0
    move-exception v18

    goto :goto_1c7

    :catch_1d2
    move-exception v18

    goto :goto_1cf

    :catch_1d4
    move-exception v17

    goto/16 :goto_143

    :catch_1d7
    move-exception v17

    goto :goto_19c

    :catch_1d9
    move-exception v17

    goto :goto_1b8

    :catch_1db
    move-exception v18

    goto/16 :goto_d8

    :catch_1de
    move-exception v18

    goto :goto_16f

    :catchall_1e0
    move-exception v17

    move-object v7, v8

    goto :goto_1c2

    :catch_1e3
    move-exception v6

    move-object v7, v8

    goto :goto_1a8

    :catch_1e6
    move-exception v6

    move-object v7, v8

    goto :goto_17d

    :catch_1e9
    move-exception v6

    goto/16 :goto_11e
.end method

.method public setDimensionHints(II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v2, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v2}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WallpaperManagerService$WallpaperData;

    if-nez v1, :cond_32

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wallpaper not yet initialized for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_2f
    move-exception v2

    monitor-exit v3
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_2f

    throw v2

    :cond_32
    if-lez p1, :cond_36

    if-gtz p2, :cond_3e

    :cond_36
    :try_start_36
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "width and height must be > 0"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3e
    iget v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    if-ne p1, v2, :cond_46

    iget v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    if-eq p2, v2, :cond_67

    :cond_46
    iput p1, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    iput p2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    invoke-direct {p0, v1}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    iget v2, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    if-eq v2, v0, :cond_53

    monitor-exit v3

    :goto_52
    return-void

    :cond_53
    iget-object v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_67

    iget-object v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_5b
    .catchall {:try_start_36 .. :try_end_5b} :catchall_2f

    if-eqz v2, :cond_67

    :try_start_5d
    iget-object v2, v1, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v2, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_2f
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_64} :catch_69

    :goto_64
    :try_start_64
    invoke-direct {p0, v1}, Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    :cond_67
    monitor-exit v3
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_2f

    goto :goto_52

    :catch_69
    move-exception v2

    goto :goto_64
.end method

.method public setSettingsSystemUiTransparency(I)V
    .registers 5

    const-string v0, "WallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSettingsSystemUiTransparency : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android.wallpaper.settings_systemui_transparency"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 11

    const-string v5, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v5}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v5, :cond_24

    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v7, "enterprise_policy"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v5, p0, Lcom/android/server/WallpaperManagerService;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_24
    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/app/enterprise/RestrictionPolicy;->isWallpaperChangeAllowed(Z)Z

    move-result v5

    if-nez v5, :cond_34

    const/4 v2, 0x0

    monitor-exit v6

    :goto_33
    return-object v2

    :cond_34
    if-nez v4, :cond_52

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wallpaper not yet initialized for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :catchall_4f
    move-exception v5

    monitor-exit v6
    :try_end_51
    .catchall {:try_start_8 .. :try_end_51} :catchall_4f

    throw v5

    :cond_52
    :try_start_52
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_4f

    move-result-wide v0

    :try_start_56
    invoke-virtual {p0, p1, v4}, Lcom/android/server/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_5f

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    :cond_5f
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/WallpaperManagerService;->setSettingsSystemUiTransparency(I)V
    :try_end_63
    .catchall {:try_start_56 .. :try_end_63} :catchall_68

    :try_start_63
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v6

    goto :goto_33

    :catchall_68
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_6d
    .catchall {:try_start_63 .. :try_end_6d} :catchall_4f
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .registers 12

    const-string v0, "android.permission.SET_WALLPAPER_COMPONENT"

    invoke-direct {p0, v0}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_1c
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isWallpaperChangeAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_2b

    monitor-exit v9

    :goto_2a
    return-void

    :cond_2b
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WallpaperManagerService$WallpaperData;

    if-nez v4, :cond_51

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper not yet initialized for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_4e
    move-exception v0

    monitor-exit v9
    :try_end_50
    .catchall {:try_start_8 .. :try_end_50} :catchall_4e

    throw v0

    :cond_51
    :try_start_51
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_4e

    move-result-wide v6

    const/4 v0, 0x0

    :try_start_56
    iput-boolean v0, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/WallpaperManagerService;->setSettingsSystemUiTransparency(I)V
    :try_end_64
    .catchall {:try_start_56 .. :try_end_64} :catchall_69

    :try_start_64
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v9

    goto :goto_2a

    :catchall_69
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_6e
    .catchall {:try_start_64 .. :try_end_6e} :catchall_4e
.end method

.method public setWallpaperForMultiSim(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .registers 4

    iput p2, p0, Lcom/android/server/WallpaperManagerService;->whichSimSetWallpaper:I

    invoke-virtual {p0, p1}, Lcom/android/server/WallpaperManagerService;->setWallpaperForSet(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public setWallpaperForSet(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 10

    const/4 v7, 0x1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v5, :cond_1d

    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v6, "enterprise_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v5, p0, Lcom/android/server/WallpaperManagerService;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_1d
    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/enterprise/RestrictionPolicy;->isWallpaperChangeAllowed(Z)Z

    move-result v5

    if-nez v5, :cond_2b

    const/4 v2, 0x0

    :goto_2a
    return-object v2

    :cond_2b
    if-nez v4, :cond_46

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wallpaper not yet initialized for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_46
    const-string v5, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v5}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_4e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_64

    move-result-wide v0

    :try_start_52
    invoke-virtual {p0, p1, v4}, Lcom/android/server/WallpaperManagerService;->updateWallpaperBitmapLockedForSet(Ljava/lang/String;Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_5b

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    :cond_5b
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/WallpaperManagerService;->setSettingsSystemUiTransparency(I)V
    :try_end_5f
    .catchall {:try_start_52 .. :try_end_5f} :catchall_67

    :try_start_5f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v6

    goto :goto_2a

    :catchall_64
    move-exception v5

    monitor-exit v6
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_64

    throw v5

    :catchall_67
    move-exception v5

    :try_start_68
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_64
.end method

.method settingsRestored()V
    .registers 11

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    const/4 v1, 0x0

    :try_start_7
    invoke-direct {p0, v1}, Lcom/android/server/WallpaperManagerService;->loadSettingsLocked(I)V

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    move-object v5, v0

    iget-object v1, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_6e

    iget-object v1, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    sget-object v2, Lcom/android/server/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    iget-object v2, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v1

    if-nez v1, :cond_37

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    :cond_37
    const/4 v7, 0x1

    :cond_38
    :goto_38
    monitor-exit v8
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_85

    if-nez v7, :cond_66

    const-string v1, "WallpaperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to restore wallpaper: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    iput-object v1, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_66
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_69
    invoke-direct {p0, v5}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_8d

    return-void

    :cond_6e
    :try_start_6e
    const-string v1, ""

    iget-object v2, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    const/4 v7, 0x1

    :goto_79
    if-eqz v7, :cond_38

    iget-object v2, v5, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    goto :goto_38

    :catchall_85
    move-exception v1

    monitor-exit v8
    :try_end_87
    .catchall {:try_start_6e .. :try_end_87} :catchall_85

    throw v1

    :cond_88
    :try_start_88
    invoke-virtual {p0, v5}, Lcom/android/server/WallpaperManagerService;->restoreNamedResourceLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)Z
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_85

    move-result v7

    goto :goto_79

    :catchall_8d
    move-exception v1

    :try_start_8e
    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v1
.end method

.method public storeMultiSIMProfileWallpaper(III)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    const/4 v6, -0x1

    if-eq p3, v6, :cond_c

    if-nez p2, :cond_44

    new-instance v2, Ljava/io/File;

    const-string v6, "wallpaper"

    invoke-direct {v2, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_19
    :goto_19
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4f

    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FOR_PROFILE:[Ljava/lang/String;

    aget-object v6, v6, p3

    invoke-direct {v4, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_31
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/android/server/WallpaperManagerService;->WALLPAPER_INFO_FOR_PROFILE:[Ljava/lang/String;

    aget-object v6, v6, p3

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_c

    :cond_44
    const/4 v6, 0x1

    if-ne p2, v6, :cond_19

    new-instance v2, Ljava/io/File;

    const-string v6, "wallpaper2"

    invoke-direct {v2, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_19

    :cond_4f
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p3}, Lcom/android/server/WallpaperManagerService;->getMultiSIMProfileWallpaper(II)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_c

    :try_start_56
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v1}, Lcom/android/server/WallpaperManagerService;->copyFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5d} :catch_5e

    goto :goto_c

    :catch_5e
    move-exception v6

    goto :goto_c
.end method

.method public storeMultiSIMProfileWallpaperInfo(II)V
    .registers 10

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    const/4 v6, -0x1

    if-eq p2, v6, :cond_c

    new-instance v2, Ljava/io/File;

    const-string v6, "wallpaper_info.xml"

    invoke-direct {v2, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_44

    :cond_1f
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FOR_PROFILE:[Ljava/lang/String;

    aget-object v6, v6, p2

    invoke-direct {v4, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_31
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/android/server/WallpaperManagerService;->WALLPAPER_INFO_FOR_PROFILE:[Ljava/lang/String;

    aget-object v6, v6, p2

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_c

    :cond_44
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/WallpaperManagerService;->getMultiSIMProfileWallpaperInfo(II)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_c

    :try_start_4b
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v1}, Lcom/android/server/WallpaperManagerService;->copyFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_52} :catch_53

    goto :goto_c

    :catch_53
    move-exception v6

    goto :goto_c
.end method

.method switchUser(ILandroid/os/IRemoteCallback;)V
    .registers 6

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iput p1, p0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    if-nez v0, :cond_1c

    new-instance v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    invoke-direct {v0, p1}, Lcom/android/server/WallpaperManagerService$WallpaperData;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/server/WallpaperManagerService;->loadSettingsLocked(I)V

    :cond_1c
    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    if-nez v1, :cond_2c

    new-instance v1, Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    iput-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->startWatching()V

    :cond_2c
    invoke-virtual {p0, v0, p2}, Lcom/android/server/WallpaperManagerService;->switchWallpaper(Lcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    monitor-exit v2

    return-void

    :catchall_31
    move-exception v1

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method switchWallpaper(Lcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V
    .registers 12

    iget-object v8, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    const/4 v6, 0x0

    :try_start_4
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_17

    iget-object v1, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    :goto_a
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_2b
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_12} :catch_1a

    move-result v0

    if-eqz v0, :cond_1c

    :try_start_15
    monitor-exit v8
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_2b

    :goto_16
    return-void

    :cond_17
    :try_start_17
    iget-object v1, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_2b
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_19} :catch_1a

    goto :goto_a

    :catch_1a
    move-exception v7

    move-object v6, v7

    :cond_1c
    :try_start_1c
    const-string v0, "WallpaperService"

    const-string v2, "Failure starting previous wallpaper"

    invoke-static {v0, v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    iget v2, p1, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p0, v0, v2, p2}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    monitor-exit v8

    goto :goto_16

    :catchall_2b
    move-exception v0

    monitor-exit v8
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public systemReady()V
    .registers 6

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WallpaperManagerService$WallpaperData;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/WallpaperManagerService;->switchWallpaper(Lcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    new-instance v3, Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    iput-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    iget-object v3, v2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v3}, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->startWatching()V

    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->registerSimChangedReceiver()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_STOPPING"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/WallpaperManagerService$1;

    invoke-direct {v4, p0}, Lcom/android/server/WallpaperManagerService$1;-><init>(Lcom/android/server/WallpaperManagerService;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_35
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    new-instance v4, Lcom/android/server/WallpaperManagerService$2;

    invoke-direct {v4, p0}, Lcom/android/server/WallpaperManagerService$2;-><init>(Lcom/android/server/WallpaperManagerService;)V

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_41} :catch_42

    :goto_41
    return-void

    :catch_42
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_41
.end method

.method updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;
    .registers 15

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->SimStatusVerify()I

    move-result v0

    if-nez p1, :cond_9

    const-string p1, ""

    :cond_9
    :try_start_9
    iget v8, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v8}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_23

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1f9

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-static {v8, v9, v10, v11}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_23
    const/4 v4, 0x0

    const-string v6, ""

    const-string v5, ""

    if-eqz v0, :cond_30

    add-int/lit8 v8, v0, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    :cond_30
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wallpaper"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 v8, 0x3800

    invoke-static {v4, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-static {v4}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_56

    move-object v3, v7

    :goto_55
    return-object v3

    :cond_56
    iput-object p1, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;
    :try_end_58
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_58} :catch_59

    goto :goto_55

    :catch_59
    move-exception v2

    const-string v8, "WallpaperService"

    const-string v9, "Error setting wallpaper"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v7

    goto :goto_55
.end method

.method updateWallpaperBitmapLockedForSet(Ljava/lang/String;Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;
    .registers 12

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    :try_start_4
    iget v5, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v5}, Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1e

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f9

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_1e
    const-string v4, ""

    const-string v3, ""

    iget v5, p0, Lcom/android/server/WallpaperManagerService;->whichSimSetWallpaper:I

    if-eqz v5, :cond_2e

    iget v5, p0, Lcom/android/server/WallpaperManagerService;->whichSimSetWallpaper:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    :cond_2e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wallpaper"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 v6, 0x3800

    invoke-static {v5, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object p1, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;
    :try_end_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4e} :catch_4f

    :goto_4e
    return-object v2

    :catch_4f
    move-exception v1

    const-string v5, "WallpaperService"

    const-string v6, "Error setting wallpaper"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_4e
.end method
