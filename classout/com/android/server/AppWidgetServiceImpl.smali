.class Lcom/android/server/AppWidgetServiceImpl;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;,
        Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;,
        Lcom/android/server/AppWidgetServiceImpl$Host;,
        Lcom/android/server/AppWidgetServiceImpl$Provider;,
        Lcom/android/server/AppWidgetServiceImpl$errState;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final MIN_UPDATE_PERIOD:I = 0x1b7740

.field private static final SECRET_SETTINGS_FILENAME:Ljava/lang/String; = "appwidget-secrets.xml"

.field private static final SETTINGS_FILENAME:Ljava/lang/String; = "appwidgets.xml"

.field private static final SETTINGS_TMP_FILENAME:Ljava/lang/String; = "appwidgets.xml.tmp"

.field private static final TAG:Ljava/lang/String; = "AppWidgetServiceImpl"


# instance fields
.field final mAlarmManager:Landroid/app/AlarmManager;

.field final mAppWidgetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;",
            ">;"
        }
    .end annotation
.end field

.field private final mBoundRemoteViewsServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent$FilterComparison;",
            ">;",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mDeletedHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetServiceImpl$Host;",
            ">;"
        }
    .end annotation
.end field

.field mDeletedProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetServiceImpl$Provider;",
            ">;"
        }
    .end annotation
.end field

.field final mHasFeature:Z

.field final mHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetServiceImpl$Host;",
            ">;"
        }
    .end annotation
.end field

.field final mInstalledProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetServiceImpl$Provider;",
            ">;"
        }
    .end annotation
.end field

.field mLocale:Ljava/util/Locale;

.field mMaxWidgetBitmapMemory:I

.field mNextAppWidgetId:I

.field final mPackagesWithBindWidgetPermission:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPm:Landroid/content/pm/IPackageManager;

.field private final mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Intent$FilterComparison;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mSafeMode:Z

.field private final mSaveStateHandler:Landroid/os/Handler;

.field private final mSaveStateRunnable:Ljava/lang/Runnable;

.field mSecretAppWidgetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;",
            ">;"
        }
    .end annotation
.end field

.field mSecretHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetServiceImpl$Host;",
            ">;"
        }
    .end annotation
.end field

.field mSecretProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetServiceImpl$Provider;",
            ">;"
        }
    .end annotation
.end field

.field mStateLoaded:Z

.field final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/AppWidgetServiceImpl;->DBG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mNextAppWidgetId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedProviders:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedHosts:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mSecretProviders:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mSecretHosts:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mSecretAppWidgetIds:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/AppWidgetServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/AppWidgetServiceImpl$2;-><init>(Lcom/android/server/AppWidgetServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mSaveStateRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    iput p2, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    iput-object p3, p0, Lcom/android/server/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.app_widgets"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->computeMaximumWidgetBitmapMemory()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AppWidgetServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    return-void
.end method

.method private bindAppWidgetIdImpl(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    .registers 14

    const/4 v9, 0x1

    sget-boolean v6, Lcom/android/server/AppWidgetServiceImpl;->DBG:Z

    if-eqz v6, :cond_25

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bindAppWidgetIdImpl appwid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " provider="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    :cond_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_29
    iget-object v7, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_4d

    :try_start_2c
    iget-boolean v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v6, :cond_35

    monitor-exit v7
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_4a

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_34
    return-void

    :cond_35
    :try_start_35
    invoke-direct {p0, p3}, Lcom/android/server/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v0

    if-nez v0, :cond_52

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "bad appWidgetId"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :catchall_4a
    move-exception v6

    monitor-exit v7
    :try_end_4c
    .catchall {:try_start_35 .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw v6
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception v6

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :cond_52
    :try_start_52
    iget-object v6, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v6, :cond_7f

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "appWidgetId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " already bound to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-object v9, v9, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v9, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_7f
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-result-object v5

    if-nez v5, :cond_9e

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "not a appwidget provider: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_9e
    iget-boolean v6, v5, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    if-eqz v6, :cond_bb

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "can\'t bind to a 3rd party provider in safe mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_bb
    iput-object v5, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-nez p3, :cond_c5

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object p3, v4

    :cond_c5
    iput-object p3, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    const-string v6, "appWidgetCategory"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d5

    const-string v6, "appWidgetCategory"

    const/4 v8, 0x1

    invoke-virtual {p3, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_d5
    iget-object v6, v5, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v5, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v9, :cond_e5

    invoke-virtual {p0, v5}, Lcom/android/server/AppWidgetServiceImpl;->sendEnableIntentLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;)V

    :cond_e5
    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v8, 0x0

    aput p1, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/server/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V

    invoke-static {v5}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetIds(Lcom/android/server/AppWidgetServiceImpl$Provider;)[I

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V

    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateAsync()V

    monitor-exit v7
    :try_end_f9
    .catchall {:try_start_52 .. :try_end_f9} :catchall_4a

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_34
.end method

.method private callerHasBindAppWidgetPermission(Ljava/lang/String;)Z
    .registers 6

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    :try_start_5
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Landroid/os/UserHandle;->isSameApp(II)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_10

    move-result v3

    if-nez v3, :cond_12

    :goto_f
    return v2

    :catch_10
    move-exception v1

    goto :goto_f

    :cond_12
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_15
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v3

    goto :goto_f

    :catchall_20
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_20

    throw v2
.end method

.method private cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 3

    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->clone()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p1

    :cond_c
    return-object p1
.end method

.method private cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3

    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_e
    return-object v0

    :cond_f
    move-object v0, p1

    goto :goto_e
.end method

.method private cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 3

    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p1

    :cond_c
    return-object p1
.end method

.method private copyAppWidgetId(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V
    .registers 3

    return-void
.end method

.method private copyHost(Lcom/android/server/AppWidgetServiceImpl$Host;Lcom/android/server/AppWidgetServiceImpl$Host;)V
    .registers 3

    return-void
.end method

.method private copyProvider(Lcom/android/server/AppWidgetServiceImpl$Provider;Lcom/android/server/AppWidgetServiceImpl$Provider;)V
    .registers 3

    return-void
.end method

.method private copySecretAppWidgetToSecretState()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method private copySecretAppWidgetToState()V
    .registers 1

    return-void
.end method

.method private decrementAppWidgetServiceRefCount(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V
    .registers 6

    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent$FilterComparison;

    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iget v3, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/server/AppWidgetServiceImpl;->destroyRemoteViewsService(Landroid/content/Intent;Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_3b
    return-void
.end method

.method private destroyRemoteViewsService(Landroid/content/Intent;Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V
    .registers 10

    new-instance v0, Lcom/android/server/AppWidgetServiceImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/AppWidgetServiceImpl$1;-><init>(Lcom/android/server/AppWidgetServiceImpl;Landroid/content/Intent;)V

    iget-object v4, p2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget v4, v4, Lcom/android/server/AppWidgetServiceImpl$Provider;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_11
    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, p1, v0, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_20

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_20
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private dumpAppWidgetId(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;ILjava/io/PrintWriter;)V
    .registers 5

    const-string v0, "  ["

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "] id="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "    hostId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->hostId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x2f

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->uid:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v0, :cond_4c

    const-string v0, "    provider="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4c
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    if-eqz v0, :cond_5c

    const-string v0, "    host.callbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5c
    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->views:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_6a

    const-string v0, "    views="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6a
    return-void
.end method

.method private dumpHost(Lcom/android/server/AppWidgetServiceImpl$Host;ILjava/io/PrintWriter;)V
    .registers 5

    const-string v0, "  ["

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "] hostId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->hostId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x2f

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    iget v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->uid:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x3a

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(C)V

    const-string v0, "    callbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "    instances.size="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " zombie="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->zombie:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method private dumpProvider(Lcom/android/server/AppWidgetServiceImpl$Provider;ILjava/io/PrintWriter;)V
    .registers 6

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    const-string v1, "  ["

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "] provider "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v1, 0x3a

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(C)V

    const-string v1, "    min=("

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "x"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ")   minResize=("

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "x"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ") updatePeriodMillis="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " resizeMode="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " autoAdvanceViewId="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " initialLayout=#"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " uid="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->uid:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " zombie="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method private ensureStateLoadedLocked()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mStateLoaded:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->loadAppWidgetListLocked()V

    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->loadStateLocked()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mStateLoaded:Z

    goto :goto_8
.end method

.method static getAppWidgetIds(Lcom/android/server/AppWidgetServiceImpl$Host;)[I
    .registers 5

    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [I

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v2, :cond_1a

    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    iget v3, v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1a
    return-object v0
.end method

.method static getAppWidgetIds(Lcom/android/server/AppWidgetServiceImpl$Provider;)[I
    .registers 5

    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [I

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v2, :cond_1a

    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    iget v3, v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1a
    return-object v0
.end method

.method static getSecretSettingsFile(I)Ljava/io/File;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method static getSettingsFile(I)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "appwidgets.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private incrementAppWidgetServiceRefCount(ILandroid/content/Intent$FilterComparison;)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    :goto_11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11
.end method

.method private isLocalBinder()Z
    .registers 3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private log(Ljava/lang/String;)V
    .registers 5

    const-string v0, "AppWidgetServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseProviderInfoXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/server/AppWidgetServiceImpl$Provider;
    .registers 20

    const/4 v7, 0x0

    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v9, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "android.appwidget.provider"

    invoke-virtual {v1, v14, v15}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    if-nez v9, :cond_44

    const-string v14, "AppWidgetServiceImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No android.appwidget.provider meta-data for AppWidget provider \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x27

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v14, Lcom/android/server/AppWidgetServiceImpl$errState;->PARSER_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/AppWidgetServiceImpl;->errFile(Lcom/android/server/AppWidgetServiceImpl$errState;)V
    :try_end_3d
    .catchall {:try_start_6 .. :try_end_3d} :catchall_1ab
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3d} :catch_1b5

    const/4 v8, 0x0

    if-eqz v9, :cond_43

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_43
    :goto_43
    return-object v8

    :cond_44
    :try_start_44
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    :cond_48
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    const/4 v14, 0x1

    if-eq v12, v14, :cond_52

    const/4 v14, 0x2

    if-ne v12, v14, :cond_48

    :cond_52
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v14, "appwidget-provider"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8c

    const-string v14, "AppWidgetServiceImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Meta-data does not start with appwidget-provider tag for AppWidget provider \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x27

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v14, Lcom/android/server/AppWidgetServiceImpl$errState;->APPWIDGET_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/AppWidgetServiceImpl;->errFile(Lcom/android/server/AppWidgetServiceImpl$errState;)V
    :try_end_85
    .catchall {:try_start_44 .. :try_end_85} :catchall_1ab
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_85} :catch_1b5

    const/4 v8, 0x0

    if-eqz v9, :cond_43

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_43

    :cond_8c
    :try_start_8c
    new-instance v8, Lcom/android/server/AppWidgetServiceImpl$Provider;

    invoke-direct {v8}, Lcom/android/server/AppWidgetServiceImpl$Provider;-><init>()V
    :try_end_91
    .catchall {:try_start_8c .. :try_end_91} :catchall_1ab
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_91} :catch_1b5

    :try_start_91
    new-instance v5, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v5}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    iput-object v5, v8, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v0, p1

    iput-object v0, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v14, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v14, v8, Lcom/android/server/AppWidgetServiceImpl$Provider;->uid:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    iget-object v15, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v10

    sget-object v14, Lcom/android/internal/R$styleable;->AppWidgetProviderInfo:[I

    invoke-virtual {v10, v2, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    if-eqz v13, :cond_165

    iget v14, v13, Landroid/util/TypedValue;->data:I

    :goto_c5
    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    if-eqz v13, :cond_168

    iget v14, v13, Landroid/util/TypedValue;->data:I

    :goto_d0
    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    if-eqz v13, :cond_16b

    iget v14, v13, Landroid/util/TypedValue;->data:I

    :goto_dc
    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    const/16 v14, 0x9

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    if-eqz v13, :cond_16f

    iget v14, v13, Landroid/util/TypedValue;->data:I

    :goto_e8
    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    const/16 v14, 0xa

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    const/4 v14, 0x4

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_115

    new-instance v14, Landroid/content/ComponentName;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    :cond_115
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v14

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const/4 v14, 0x5

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    const/4 v14, 0x6

    const/4 v15, -0x1

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const/4 v14, 0x7

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    const/16 v14, 0xb

    const/4 v15, 0x1

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    sget-boolean v14, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v14, :cond_15a

    iget v14, v1, Landroid/content/pm/ActivityInfo;->labelRes:I

    if-eqz v14, :cond_173

    iget v14, v1, Landroid/content/pm/ActivityInfo;->labelRes:I

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->labelRes:I

    :cond_15a
    :goto_15a
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_15d
    .catchall {:try_start_91 .. :try_end_15d} :catchall_1b2
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_15d} :catch_17a

    if-eqz v9, :cond_162

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_162
    move-object v7, v8

    goto/16 :goto_43

    :cond_165
    const/4 v14, 0x0

    goto/16 :goto_c5

    :cond_168
    const/4 v14, 0x0

    goto/16 :goto_d0

    :cond_16b
    :try_start_16b
    iget v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    goto/16 :goto_dc

    :cond_16f
    iget v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    goto/16 :goto_e8

    :cond_173
    iget-object v14, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->labelRes:I
    :try_end_179
    .catchall {:try_start_16b .. :try_end_179} :catchall_1b2
    .catch Ljava/lang/Exception; {:try_start_16b .. :try_end_179} :catch_17a

    goto :goto_15a

    :catch_17a
    move-exception v4

    move-object v7, v8

    :goto_17c
    :try_start_17c
    const-string v14, "AppWidgetServiceImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "XML parsing failed for AppWidget provider \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x27

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v14, Lcom/android/server/AppWidgetServiceImpl$errState;->PARSING_ABNORMALL_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/AppWidgetServiceImpl;->errFile(Lcom/android/server/AppWidgetServiceImpl$errState;)V
    :try_end_1a3
    .catchall {:try_start_17c .. :try_end_1a3} :catchall_1ab

    const/4 v8, 0x0

    if-eqz v9, :cond_43

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_43

    :catchall_1ab
    move-exception v14

    :goto_1ac
    if-eqz v9, :cond_1b1

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1b1
    throw v14

    :catchall_1b2
    move-exception v14

    move-object v7, v8

    goto :goto_1ac

    :catch_1b5
    move-exception v4

    goto :goto_17c
.end method

.method private parseSecretProviderInfoXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/server/AppWidgetServiceImpl$Provider;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method private saveStateAsync()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mSaveStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private unbindAppWidgetRemoteViewsServicesLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V
    .registers 7

    iget v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v0, :cond_c

    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;

    invoke-virtual {v1}, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;->disconnect()V

    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_c

    :cond_36
    invoke-direct {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->decrementAppWidgetServiceRefCount(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V

    return-void
.end method


# virtual methods
.method addProviderLocked(Landroid/content/pm/ResolveInfo;)Z
    .registers 7

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x4

    and-int/2addr v2, v3

    if-eqz v2, :cond_d

    :cond_c
    :goto_c
    return v1

    :cond_d
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, p1}, Lcom/android/server/AppWidgetServiceImpl;->parseProviderInfoXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_c
.end method

.method addProvidersForPackageLocked(Ljava/lang/String;)Z
    .registers 14

    const/4 v0, 0x0

    const/4 v5, 0x0

    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_c
    iget-object v8, p0, Lcom/android/server/AppWidgetServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x80

    iget v11, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-interface {v8, v4, v9, v10, v11}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1f} :catch_39

    move-result-object v2

    if-nez v2, :cond_3b

    :goto_22
    const/4 v3, 0x0

    :goto_23
    if-ge v3, v0, :cond_4d

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v9, 0x4

    and-int/2addr v8, v9

    if-eqz v8, :cond_40

    :cond_36
    :goto_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :catch_39
    move-exception v6

    :goto_3a
    return v0

    :cond_3b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_22

    :cond_40
    iget-object v8, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_36

    invoke-virtual {p0, v7}, Lcom/android/server/AppWidgetServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    const/4 v5, 0x1

    goto :goto_36

    :cond_4d
    move v0, v5

    goto :goto_3a
.end method

.method addSecretProviderLocked(Landroid/content/pm/ResolveInfo;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public allocateAppWidgetId(Ljava/lang/String;I)I
    .registers 10

    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->enforceSystemOrCallingUid(Ljava/lang/String;)I

    move-result v1

    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_7
    iget-boolean v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v4, :cond_e

    const/4 v0, -0x1

    monitor-exit v5

    :goto_d
    return v0

    :cond_e
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    iget v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mNextAppWidgetId:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mNextAppWidgetId:I

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/AppWidgetServiceImpl;->lookupOrAddHostLocked(ILjava/lang/String;I)Lcom/android/server/AppWidgetServiceImpl$Host;

    move-result-object v2

    new-instance v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    invoke-direct {v3}, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;-><init>()V

    iput v0, v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    iput-object v2, v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v4, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateAsync()V

    sget-boolean v4, Lcom/android/server/AppWidgetServiceImpl;->DBG:Z

    if-eqz v4, :cond_5f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Allocating AppWidgetId for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " host="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    :cond_5f
    monitor-exit v5

    goto :goto_d

    :catchall_61
    move-exception v4

    monitor-exit v5
    :try_end_63
    .catchall {:try_start_7 .. :try_end_63} :catchall_61

    throw v4
.end method

.method public bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BIND_APPWIDGET"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindAppWidgetId appWidgetId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " provider="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppWidgetServiceImpl;->bindAppWidgetIdImpl(ILandroid/content/ComponentName;Landroid/os/Bundle;)V

    return-void
.end method

.method public bindAppWidgetIdIfAllowed(Ljava/lang/String;ILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .registers 10

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v2, :cond_6

    :goto_5
    return v1

    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BIND_APPWIDGET"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_e} :catch_13

    :cond_e
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/AppWidgetServiceImpl;->bindAppWidgetIdImpl(ILandroid/content/ComponentName;Landroid/os/Bundle;)V

    const/4 v1, 0x1

    goto :goto_5

    :catch_13
    move-exception v0

    invoke-direct {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->callerHasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_5
.end method

.method public bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;)V
    .registers 21

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v14

    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v13, :cond_d

    monitor-exit v14

    :goto_c
    return-void

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v7

    if-nez v7, :cond_21

    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v15, "bad appWidgetId"

    invoke-direct {v13, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :catchall_1e
    move-exception v13

    monitor-exit v14
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v13

    :cond_21
    :try_start_21
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_1e

    move-result-object v2

    :try_start_25
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    const/16 v15, 0x1000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v13, v2, v15, v0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v9

    const-string v13, "android.permission.BIND_REMOTEVIEWS"

    iget-object v15, v9, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_74

    new-instance v13, Ljava/lang/SecurityException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Selected service does not require android.permission.BIND_REMOTEVIEWS: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_5a
    .catchall {:try_start_25 .. :try_end_5a} :catchall_1e
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_5a} :catch_5a

    :catch_5a
    move-exception v5

    :try_start_5b
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown component "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_74
    const/4 v3, 0x0

    new-instance v6, Landroid/content/Intent$FilterComparison;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;

    invoke-virtual {v3}, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;->disconnect()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a9
    move-object v4, v3

    iget-object v13, v7, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget v13, v13, Lcom/android/server/AppWidgetServiceImpl$Provider;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    if-eq v12, v13, :cond_e0

    const-string v13, "AppWidgetServiceImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "AppWidgetServiceImpl of user "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " binding to provider on user "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_e3
    .catchall {:try_start_5b .. :try_end_e3} :catchall_1e

    move-result-wide v10

    :try_start_e4
    new-instance v3, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;

    move-object/from16 v0, p3

    invoke-direct {v3, v8, v0}, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;-><init>(Landroid/util/Pair;Landroid/os/IBinder;)V
    :try_end_eb
    .catchall {:try_start_e4 .. :try_end_eb} :catchall_112

    :try_start_eb
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v3, v15, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v13, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_105
    .catchall {:try_start_eb .. :try_end_105} :catchall_118

    :try_start_105
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/android/server/AppWidgetServiceImpl;->incrementAppWidgetServiceRefCount(ILandroid/content/Intent$FilterComparison;)V

    monitor-exit v14

    goto/16 :goto_c

    :catchall_112
    move-exception v13

    move-object v3, v4

    :goto_114
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13
    :try_end_118
    .catchall {:try_start_105 .. :try_end_118} :catchall_1e

    :catchall_118
    move-exception v13

    goto :goto_114
.end method

.method canAccessAppWidgetId(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;I)Z
    .registers 6

    const/4 v0, 0x1

    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    invoke-virtual {v1, p2}, Lcom/android/server/AppWidgetServiceImpl$Host;->uidMatches(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v1, :cond_14

    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget v1, v1, Lcom/android/server/AppWidgetServiceImpl$Provider;->uid:I

    if-eq v1, p2, :cond_9

    :cond_14
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BIND_APPWIDGET"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method cancelBroadcasts(Lcom/android/server/AppWidgetServiceImpl$Provider;)V
    .registers 6

    sget-boolean v2, Lcom/android/server/AppWidgetServiceImpl;->DBG:Z

    if-eqz v2, :cond_1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelBroadcasts for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    :cond_1a
    iget-object v2, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_29
    iget-object v2, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_35

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    :cond_34
    return-void

    :catchall_35
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method computeMaximumWidgetBitmapMemory()V
    .registers 6

    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v3, v1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v3, v3, 0x6

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    return-void
.end method

.method public deleteAllHosts()V
    .registers 8

    iget-object v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_3
    iget-boolean v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v5, :cond_9

    monitor-exit v6

    :goto_8
    return-void

    :cond_9
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    add-int/lit8 v4, v0, -0x1

    :goto_19
    if-ltz v4, :cond_30

    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$Host;

    invoke-virtual {v3, v1}, Lcom/android/server/AppWidgetServiceImpl$Host;->uidMatches(I)Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V

    const/4 v2, 0x1

    :cond_2d
    add-int/lit8 v4, v4, -0x1

    goto :goto_19

    :cond_30
    if-eqz v2, :cond_35

    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateAsync()V

    :cond_35
    monitor-exit v6

    goto :goto_8

    :catchall_37
    move-exception v5

    monitor-exit v6
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v5
.end method

.method public deleteAppWidgetId(I)V
    .registers 5

    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v1, :cond_9

    monitor-exit v2

    :goto_8
    return-void

    :cond_9
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p0, v0}, Lcom/android/server/AppWidgetServiceImpl;->deleteAppWidgetLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V

    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateAsync()V

    :cond_18
    monitor-exit v2

    goto :goto_8

    :catchall_1a
    move-exception v1

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method deleteAppWidgetLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->unbindAppWidgetRemoteViewsServicesLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v3, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/android/server/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V

    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v2, :cond_65

    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-boolean v3, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v3, :cond_65

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "appWidgetId"

    iget v4, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_65

    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/AppWidgetServiceImpl$Provider;)V

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_65
    return-void
.end method

.method public deleteHost(I)V
    .registers 6

    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_3
    iget-boolean v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v2, :cond_9

    monitor-exit v3

    :goto_8
    return-void

    :cond_9
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupHostLocked(II)Lcom/android/server/AppWidgetServiceImpl$Host;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {p0, v1}, Lcom/android/server/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V

    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateAsync()V

    :cond_1c
    monitor-exit v3

    goto :goto_8

    :catchall_1e
    move-exception v2

    monitor-exit v3
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method deleteHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V
    .registers 6

    iget-object v3, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_8
    if-ltz v1, :cond_18

    iget-object v3, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetServiceImpl;->deleteAppWidgetLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_18
    iget-object v3, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_33

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_32
    return-void

    :cond_33
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_36
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v2, "Providers:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_42
    if-ge v1, v0, :cond_52

    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Provider;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/AppWidgetServiceImpl;->dumpProvider(Lcom/android/server/AppWidgetServiceImpl$Provider;ILjava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_52
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "AppWidgetIds:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_63
    if-ge v1, v0, :cond_73

    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/AppWidgetServiceImpl;->dumpAppWidgetId(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;ILjava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    :cond_73
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "Hosts:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_84
    if-ge v1, v0, :cond_94

    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Host;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/AppWidgetServiceImpl;->dumpHost(Lcom/android/server/AppWidgetServiceImpl$Host;ILjava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    :cond_94
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "Deleted Providers:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_a5
    if-ge v1, v0, :cond_b5

    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Provider;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/AppWidgetServiceImpl;->dumpProvider(Lcom/android/server/AppWidgetServiceImpl$Provider;ILjava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a5

    :cond_b5
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedHosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "Deleted Hosts:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_c6
    if-ge v1, v0, :cond_d6

    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedHosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Host;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/AppWidgetServiceImpl;->dumpHost(Lcom/android/server/AppWidgetServiceImpl$Host;ILjava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c6

    :cond_d6
    monitor-exit v3

    goto/16 :goto_32

    :catchall_d9
    move-exception v2

    monitor-exit v3
    :try_end_db
    .catchall {:try_start_36 .. :try_end_db} :catchall_d9

    throw v2
.end method

.method enforceCallingUid(Ljava/lang/String;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_7} :catch_27

    move-result v2

    invoke-static {v0, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_41

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName and uid don\'t match packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_27
    move-exception v1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName and uid don\'t match packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_41
    return v0
.end method

.method enforceSystemOrCallingUid(Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_e

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->enforceCallingUid(Ljava/lang/String;)I

    move-result v0

    goto :goto_e
.end method

.method errFile(Lcom/android/server/AppWidgetServiceImpl$errState;)V
    .registers 8

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-static {v5}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "appwidgets.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".~"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/AppWidgetServiceImpl$errState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-static {v5}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "appwidgets.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/AppWidgetServiceImpl$errState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-static {v5}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "detect"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-virtual {p0, v4}, Lcom/android/server/AppWidgetServiceImpl;->savedStateRealFile(I)Ljava/io/File;

    move-result-object v2

    const-string v4, "WRITE_ERR"

    invoke-virtual {p1}, Lcom/android/server/AppWidgetServiceImpl$errState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a1

    :goto_a0
    return-void

    :cond_a1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_aa

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_aa
    :try_start_aa
    const-string v4, "WRITE_ERR"

    invoke-virtual {p1}, Lcom/android/server/AppWidgetServiceImpl$errState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b9

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_b9
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_bc} :catch_da

    :goto_bc
    const-string v4, "WRITE_ERR"

    invoke-virtual {p1}, Lcom/android/server/AppWidgetServiceImpl$errState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d6

    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetServiceImpl;->writeStateToFileLocked(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_d6

    const-string v4, "AppWidgetServiceImpl"

    const-string v5, "Failed to persist new settings"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    :cond_d6
    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_a0

    :catch_da
    move-exception v4

    goto :goto_bc
.end method

.method public getAllWidgets(Ljava/lang/String;)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    if-eq v8, v9, :cond_20

    new-instance v8, Ljava/lang/SecurityException;

    const-string v9, "Can only be called by system user"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_17

    :catch_17
    move-exception v0

    const-string v8, "AppWidgetServiceImpl"

    const-string v9, "error in getAllWidgets"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    return-object v6

    :cond_20
    :try_start_20
    iget-object v8, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetServiceImpl$Host;

    if-eqz p1, :cond_3e

    if-eqz p1, :cond_26

    iget-object v8, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    :cond_3e
    iget-object v8, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_44
    :goto_44
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_70

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget v8, v7, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v7, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v8, :cond_44

    iget-object v8, v7, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-object v8, v8, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-interface {v6, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    :cond_70
    iget-object v8, v7, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-object v8, v8, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_91

    iget v8, v7, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v7, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v8, :cond_44

    iget-object v8, v7, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-object v8, v8, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-interface {v6, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    :cond_91
    if-nez v4, :cond_44

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget v8, v7, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v7, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v8, :cond_44

    iget-object v8, v7, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-object v8, v8, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-interface {v6, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_ac} :catch_17

    goto :goto_44
.end method

.method public getAppWidgetIds(Landroid/content/ComponentName;)[I
    .registers 6

    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget v3, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->uid:I

    if-ne v1, v3, :cond_1a

    invoke-static {v0}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetIds(Lcom/android/server/AppWidgetServiceImpl$Provider;)[I

    move-result-object v1

    monitor-exit v2

    :goto_19
    return-object v1

    :cond_1a
    const/4 v1, 0x0

    new-array v1, v1, [I

    monitor-exit v2

    goto :goto_19

    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public getAppWidgetIdsForHost(I)[I
    .registers 6

    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupHostLocked(II)Lcom/android/server/AppWidgetServiceImpl$Host;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-static {v1}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetIds(Lcom/android/server/AppWidgetServiceImpl$Host;)[I

    move-result-object v2

    monitor-exit v3

    :goto_15
    return-object v2

    :cond_16
    const/4 v2, 0x0

    new-array v2, v2, [I

    monitor-exit v3

    goto :goto_15

    :catchall_1b
    move-exception v2

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method public getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_4
    iget-boolean v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v3, :cond_a

    monitor-exit v2

    :goto_9
    return-object v1

    :cond_a
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v3, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v3, :cond_2a

    iget-object v3, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-boolean v3, v3, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v3, :cond_2a

    iget-object v1, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-object v1, v1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {p0, v1}, Lcom/android/server/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    monitor-exit v2

    goto :goto_9

    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_27

    throw v1

    :cond_2a
    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_27

    goto :goto_9
.end method

.method public getAppWidgetOptions(I)Landroid/os/Bundle;
    .registers 5

    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v1, :cond_b

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    monitor-exit v2

    :goto_a
    return-object v1

    :cond_b
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v1, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    if-eqz v1, :cond_23

    iget-object v1, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/android/server/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v2

    goto :goto_a

    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1

    :cond_23
    :try_start_23
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_20

    goto :goto_a
.end method

.method public getAppWidgetViews(I)Landroid/widget/RemoteViews;
    .registers 6

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/server/AppWidgetServiceImpl;->DBG:Z

    if-eqz v2, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppWidgetViews id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    :cond_1b
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_1e
    iget-boolean v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v3, :cond_24

    monitor-exit v2

    :goto_23
    return-object v1

    :cond_24
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v1, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->views:Landroid/widget/RemoteViews;

    invoke-direct {p0, v1}, Lcom/android/server/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    monitor-exit v2

    goto :goto_23

    :catchall_35
    move-exception v1

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_1e .. :try_end_37} :catchall_35

    throw v1

    :cond_38
    :try_start_38
    sget-boolean v3, Lcom/android/server/AppWidgetServiceImpl;->DBG:Z

    if-eqz v3, :cond_41

    const-string v3, "   couldn\'t find appwidgetid"

    invoke-direct {p0, v3}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    :cond_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_35

    goto :goto_23
.end method

.method getBackupFile()Ljava/io/File;
    .registers 6

    const/16 v0, 0x20

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x20

    if-ge v2, v3, :cond_3f

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-static {v4}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "appwidgets.xml.tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3c

    :goto_3b
    return-object v1

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3f
    const/4 v1, 0x0

    goto :goto_3b
.end method

.method public getInstalledProviders(I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_3
    iget-boolean v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v4, :cond_f

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    monitor-exit v5

    :goto_e
    return-object v3

    :cond_f
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v0, :cond_3f

    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-boolean v4, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v4, :cond_3c

    iget-object v4, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/2addr v4, p1

    if-eqz v4, :cond_3c

    iget-object v4, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {p0, v4}, Lcom/android/server/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_3f
    monitor-exit v5

    goto :goto_e

    :catchall_41
    move-exception v4

    monitor-exit v5
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v4
.end method

.method public getSecretAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method getUidForPackage(Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_1b

    move-result-object v0

    :goto_a
    if-eqz v0, :cond_10

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_16

    :cond_10
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v1

    :cond_16
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    return v1

    :catch_1b
    move-exception v1

    goto :goto_a
.end method

.method public hasBindAppWidgetPermission(Ljava/lang/String;)Z
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_APPWIDGET_BIND_PERMISSIONS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasBindAppWidgetPermission packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_23
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_5

    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_23 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method loadAppWidgetListLocked()V
    .registers 10

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_7
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    iget-object v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    iget v8, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-interface {v5, v3, v6, v7, v8}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2d

    const/4 v0, 0x0

    :goto_1e
    const/4 v2, 0x0

    :goto_1f
    if-ge v2, v0, :cond_33

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, v4}, Lcom/android/server/AppWidgetServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_2d
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_30} :catch_32

    move-result v0

    goto :goto_1e

    :catch_32
    move-exception v5

    :cond_33
    return-void
.end method

.method loadSecretAppWidgetListLocked()V
    .registers 1

    return-void
.end method

.method loadSecretStateLocked()V
    .registers 1

    return-void
.end method

.method loadStateLocked()V
    .registers 6

    iget v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetServiceImpl;->savedStateTempFile(I)Ljava/io/File;

    move-result-object v1

    iget v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetServiceImpl;->savedStateRealFile(I)Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".tmp3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "AppWidgetServiceImpl"

    const-string v4, "AppwidgetNewLogic"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_3e
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_47
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_4a
    :goto_4a
    invoke-virtual {p0, v0}, Lcom/android/server/AppWidgetServiceImpl;->readStateFromFileLocked(Ljava/io/File;)V

    return-void

    :cond_4e
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_5d
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_4a
.end method

.method lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    .registers 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_23

    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    iget v4, v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    if-ne v4, p1, :cond_20

    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetServiceImpl;->canAccessAppWidgetId(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;I)Z

    move-result v4

    if-eqz v4, :cond_20

    :goto_1f
    return-object v3

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_23
    const/4 v3, 0x0

    goto :goto_1f
.end method

.method lookupHostLocked(II)Lcom/android/server/AppWidgetServiceImpl$Host;
    .registers 7

    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_1f

    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetServiceImpl$Host;

    invoke-virtual {v1, p1}, Lcom/android/server/AppWidgetServiceImpl$Host;->uidMatches(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget v3, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->hostId:I

    if-ne v3, p2, :cond_1c

    :goto_1b
    return-object v1

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1f
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method lookupOrAddHostLocked(ILjava/lang/String;I)Lcom/android/server/AppWidgetServiceImpl$Host;
    .registers 9

    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v0, :cond_21

    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetServiceImpl$Host;

    iget v4, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->hostId:I

    if-ne v4, p3, :cond_1e

    iget-object v4, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    :goto_1d
    return-object v1

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_21
    new-instance v2, Lcom/android/server/AppWidgetServiceImpl$Host;

    invoke-direct {v2}, Lcom/android/server/AppWidgetServiceImpl$Host;-><init>()V

    iput-object p2, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    iput p1, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->uid:I

    iput p3, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->hostId:I

    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    goto :goto_1d
.end method

.method lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetServiceImpl$Provider;
    .registers 6

    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1f

    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    :goto_1b
    return-object v2

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1f
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method lookupSecretAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method lookupSecretHostLocked(II)Lcom/android/server/AppWidgetServiceImpl$Host;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method lookupSecretProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetServiceImpl$Provider;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyAppWidgetViewDataChanged([II)V
    .registers 8

    iget-boolean v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v3, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    if-eqz p1, :cond_4

    array-length v3, p1

    if-eqz v3, :cond_4

    array-length v0, p1

    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_e
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_20

    aget v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/android/server/AppWidgetServiceImpl;->notifyAppWidgetViewDataChangedInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_20
    monitor-exit v4

    goto :goto_4

    :catchall_22
    move-exception v3

    monitor-exit v4
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_22

    throw v3
.end method

.method notifyAppWidgetViewDataChangedInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;I)V
    .registers 15

    if-eqz p1, :cond_83

    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v9, :cond_83

    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-boolean v9, v9, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v9, :cond_83

    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-boolean v9, v9, Lcom/android/server/AppWidgetServiceImpl$Host;->zombie:Z

    if-nez v9, :cond_83

    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v9, v9, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v9, :cond_23

    :try_start_18
    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v9, v9, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iget v10, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    iget v11, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-interface {v9, v10, p2, v11}, Lcom/android/internal/appwidget/IAppWidgetHost;->viewDataChanged(III)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_23} :catch_77

    :cond_23
    :goto_23
    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v9, v9, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez v9, :cond_83

    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_33
    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_83

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent$FilterComparison;

    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashSet;

    iget v10, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    invoke-virtual {v4}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    new-instance v0, Lcom/android/server/AppWidgetServiceImpl$3;

    invoke-direct {v0, p0}, Lcom/android/server/AppWidgetServiceImpl$3;-><init>(Lcom/android/server/AppWidgetServiceImpl;)V

    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget v9, v9, Lcom/android/server/AppWidgetServiceImpl$Provider;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_68
    iget-object v9, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v9, v3, v0, v10, v11}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_73
    .catchall {:try_start_68 .. :try_end_73} :catchall_7e

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_33

    :catch_77
    move-exception v1

    iget-object v9, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    goto :goto_23

    :catchall_7e
    move-exception v9

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    :cond_83
    return-void
.end method

.method notifyHostsForProvidersChangedLocked()V
    .registers 7

    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :goto_8
    if-ltz v3, :cond_25

    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Host;

    :try_start_12
    iget-object v4, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v4, :cond_1d

    iget-object v4, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iget v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-interface {v4, v5}, Lcom/android/internal/appwidget/IAppWidgetHost;->providersChanged(I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1d} :catch_20

    :cond_1d
    :goto_1d
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    :catch_20
    move-exception v1

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    goto :goto_1d

    :cond_25
    return-void
.end method

.method onBroadcastReceived(Landroid/content/Intent;)V
    .registers 16

    const/4 v13, 0x0

    sget-boolean v11, Lcom/android/server/AppWidgetServiceImpl;->DBG:Z

    if-eqz v11, :cond_1b

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onBroadcast "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    :cond_1b
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    const-string v11, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_38

    const-string v11, "android.intent.extra.changed_package_list"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x1

    :goto_32
    if-eqz v7, :cond_37

    array-length v11, v7

    if-nez v11, :cond_66

    :cond_37
    :goto_37
    return-void

    :cond_38
    const-string v11, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_48

    const-string v11, "android.intent.extra.changed_package_list"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    goto :goto_32

    :cond_48
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_37

    invoke-virtual {v10}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_37

    const/4 v11, 0x1

    new-array v7, v11, [Ljava/lang/String;

    aput-object v8, v7, v13

    const-string v11, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v11, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_32

    :cond_66
    if-nez v1, :cond_6a

    if-eqz v3, :cond_b7

    :cond_6a
    iget-object v12, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v12

    :try_start_6d
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-nez v3, :cond_81

    if-eqz v4, :cond_91

    const-string v11, "android.intent.extra.REPLACING"

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_91

    :cond_81
    move-object v2, v7

    array-length v6, v2

    const/4 v5, 0x0

    :goto_84
    if-ge v5, v6, :cond_a0

    aget-object v8, v2, v5

    const/4 v11, 0x0

    invoke-virtual {p0, v8, v11}, Lcom/android/server/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v11

    or-int/2addr v9, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_84

    :cond_91
    move-object v2, v7

    array-length v6, v2

    const/4 v5, 0x0

    :goto_94
    if-ge v5, v6, :cond_a0

    aget-object v8, v2, v5

    invoke-virtual {p0, v8}, Lcom/android/server/AppWidgetServiceImpl;->addProvidersForPackageLocked(Ljava/lang/String;)Z

    move-result v11

    or-int/2addr v9, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_94

    :cond_a0
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateAsync()V

    monitor-exit v12
    :try_end_a4
    .catchall {:try_start_6d .. :try_end_a4} :catchall_b4

    :cond_a4
    :goto_a4
    if-eqz v9, :cond_37

    iget-object v12, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v12

    :try_start_a9
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl;->notifyHostsForProvidersChangedLocked()V

    monitor-exit v12

    goto :goto_37

    :catchall_b1
    move-exception v11

    monitor-exit v12
    :try_end_b3
    .catchall {:try_start_a9 .. :try_end_b3} :catchall_b1

    throw v11

    :catchall_b4
    move-exception v11

    :try_start_b5
    monitor-exit v12
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    throw v11

    :cond_b7
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_c5

    const-string v11, "android.intent.extra.REPLACING"

    invoke-virtual {v4, v11, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_a4

    :cond_c5
    iget-object v12, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v12

    :try_start_c8
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    move-object v2, v7

    array-length v6, v2

    const/4 v5, 0x0

    :goto_ce
    if-ge v5, v6, :cond_dd

    aget-object v8, v2, v5

    invoke-virtual {p0, v8}, Lcom/android/server/AppWidgetServiceImpl;->removeProvidersForPackageLocked(Ljava/lang/String;)Z

    move-result v11

    or-int/2addr v9, v11

    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateAsync()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_ce

    :cond_dd
    monitor-exit v12

    goto :goto_a4

    :catchall_df
    move-exception v11

    monitor-exit v12
    :try_end_e1
    .catchall {:try_start_c8 .. :try_end_e1} :catchall_df

    throw v11
.end method

.method onConfigurationChanged()V
    .registers 10

    sget-boolean v7, Lcom/android/server/AppWidgetServiceImpl;->DBG:Z

    if-eqz v7, :cond_9

    const-string v7, "Got onConfigurationChanged()"

    invoke-direct {p0, v7}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    :cond_9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    if-eqz v6, :cond_17

    iget-object v7, p0, Lcom/android/server/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_51

    :cond_17
    iput-object v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    iget-object v8, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_1c
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    new-instance v3, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_31
    if-ltz v2, :cond_4d

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-object v7, v4, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4a

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v5}, Lcom/android/server/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;Ljava/util/Set;)Z

    :cond_4a
    add-int/lit8 v2, v2, -0x1

    goto :goto_31

    :cond_4d
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateAsync()V

    monitor-exit v8

    :cond_51
    return-void

    :catchall_52
    move-exception v7

    monitor-exit v8
    :try_end_54
    .catchall {:try_start_1c .. :try_end_54} :catchall_52

    throw v7
.end method

.method onUserRemoved()V
    .registers 2

    iget v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-static {v0}, Lcom/android/server/AppWidgetServiceImpl;->getSettingsFile(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method onUserStopping()V
    .registers 5

    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_8
    if-ltz v1, :cond_18

    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$Provider;

    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/AppWidgetServiceImpl$Provider;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public partiallyUpdateAppWidgetIds([ILandroid/widget/RemoteViews;)V
    .registers 10

    iget-boolean v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v3, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    if-eqz p1, :cond_4

    array-length v3, p1

    if-eqz v3, :cond_4

    array-length v0, p1

    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_e
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_4b

    aget v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v2

    if-nez v2, :cond_3f

    const-string v3, "AppWidgetServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "widget id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, p1, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    :goto_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_3f
    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->views:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_3c

    const/4 v3, 0x1

    invoke-virtual {p0, v2, p2, v3}, Lcom/android/server/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;Landroid/widget/RemoteViews;Z)V

    goto :goto_3c

    :catchall_48
    move-exception v3

    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_e .. :try_end_4a} :catchall_48

    throw v3

    :cond_4b
    :try_start_4b
    monitor-exit v4
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_48

    goto :goto_4
.end method

.method pruneHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V
    .registers 3

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method readSecretStateFromFileLocked(Ljava/io/FileInputStream;)V
    .registers 2

    return-void
.end method

.method readStateFromFileLocked(Ljava/io/File;)V
    .registers 39

    const/16 v29, 0x0

    const/16 v31, 0x0

    :try_start_4
    new-instance v30, Ljava/io/FileInputStream;

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_46d
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_d} :catch_4d2
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_d} :catch_4cf
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_d} :catch_4cc
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_4c9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_d} :catch_43a

    :try_start_d
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v24

    const/16 v34, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v27, 0x0

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    :cond_23
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v33

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_df

    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v32

    const-string v34, "p"

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_146

    const/16 v34, 0x0

    const-string v35, "pkg"

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v34, 0x0

    const-string v35, "cl"

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;
    :try_end_5e
    .catchall {:try_start_d .. :try_end_5e} :catchall_4c0
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_5e} :catch_1ac
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_5e} :catch_1e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_5e} :catch_249
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_5e} :catch_40e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_5e} :catch_4c4

    move-result-object v22

    :try_start_5f
    new-instance v34, Landroid/content/ComponentName;

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    move/from16 v36, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_7b
    .catchall {:try_start_5f .. :try_end_7b} :catchall_4c0
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_7b} :catch_125
    .catch Ljava/lang/NullPointerException; {:try_start_5f .. :try_end_7b} :catch_1ac
    .catch Ljava/lang/NumberFormatException; {:try_start_5f .. :try_end_7b} :catch_1e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5f .. :try_end_7b} :catch_249
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_7b} :catch_40e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5f .. :try_end_7b} :catch_4c4

    :goto_7b
    :try_start_7b
    new-instance v34, Landroid/content/ComponentName;

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-result-object v20

    if-nez v20, :cond_d0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mSafeMode:Z

    move/from16 v34, v0

    if-eqz v34, :cond_d0

    new-instance v20, Lcom/android/server/AppWidgetServiceImpl$Provider;

    invoke-direct/range {v20 .. v20}, Lcom/android/server/AppWidgetServiceImpl$Provider;-><init>()V

    new-instance v34, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct/range {v34 .. v34}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v34, v0

    new-instance v35, Landroid/content/ComponentName;

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d0
    if-eqz v20, :cond_dd

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_dd
    .catchall {:try_start_7b .. :try_end_dd} :catchall_4c0
    .catch Ljava/lang/NullPointerException; {:try_start_7b .. :try_end_dd} :catch_1ac
    .catch Ljava/lang/NumberFormatException; {:try_start_7b .. :try_end_dd} :catch_1e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7b .. :try_end_dd} :catch_249
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_dd} :catch_40e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7b .. :try_end_dd} :catch_4c4

    :cond_dd
    add-int/lit8 v27, v27, 0x1

    :cond_df
    :goto_df
    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_23

    const/16 v31, 0x1

    if-nez v31, :cond_4d5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppWidgetServiceImpl;->getBackupFile()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_f6

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    :cond_f6
    move-object/from16 v29, v30

    :cond_f8
    :goto_f8
    if-eqz v29, :cond_fd

    :try_start_fa
    invoke-virtual/range {v29 .. v29}, Ljava/io/FileInputStream;->close()V
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_fd} :catch_4bc

    :cond_fd
    :goto_fd
    if-eqz v31, :cond_47c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    add-int/lit8 v12, v34, -0x1

    :goto_10b
    if-ltz v12, :cond_4bf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V

    add-int/lit8 v12, v12, -0x1

    goto :goto_10b

    :catch_125
    move-exception v8

    :try_start_126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v34

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput-object v25, v35, v36

    invoke-virtual/range {v34 .. v35}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    const/16 v34, 0x0

    aget-object v25, v26, v34

    goto/16 :goto_7b

    :cond_146
    const-string v34, "h"

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_21e

    new-instance v11, Lcom/android/server/AppWidgetServiceImpl$Host;

    invoke-direct {v11}, Lcom/android/server/AppWidgetServiceImpl$Host;-><init>()V

    const/16 v34, 0x0

    const-string v35, "pkg"

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    iput-object v0, v11, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;
    :try_end_169
    .catchall {:try_start_126 .. :try_end_169} :catchall_4c0
    .catch Ljava/lang/NullPointerException; {:try_start_126 .. :try_end_169} :catch_1ac
    .catch Ljava/lang/NumberFormatException; {:try_start_126 .. :try_end_169} :catch_1e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_126 .. :try_end_169} :catch_249
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_169} :catch_40e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_126 .. :try_end_169} :catch_4c4

    :try_start_169
    iget-object v0, v11, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    iput v0, v11, Lcom/android/server/AppWidgetServiceImpl$Host;->uid:I
    :try_end_179
    .catchall {:try_start_169 .. :try_end_179} :catchall_4c0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_169 .. :try_end_179} :catch_1e1
    .catch Ljava/lang/NullPointerException; {:try_start_169 .. :try_end_179} :catch_1ac
    .catch Ljava/lang/NumberFormatException; {:try_start_169 .. :try_end_179} :catch_1e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_169 .. :try_end_179} :catch_249
    .catch Ljava/io/IOException; {:try_start_169 .. :try_end_179} :catch_40e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_169 .. :try_end_179} :catch_4c4

    :goto_179
    :try_start_179
    iget-boolean v0, v11, Lcom/android/server/AppWidgetServiceImpl$Host;->zombie:Z

    move/from16 v34, v0

    if-eqz v34, :cond_187

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mSafeMode:Z

    move/from16 v34, v0

    if-eqz v34, :cond_df

    :cond_187
    const/16 v34, 0x0

    const-string v35, "id"

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x10

    invoke-static/range {v34 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v34

    move/from16 v0, v34

    iput v0, v11, Lcom/android/server/AppWidgetServiceImpl$Host;->hostId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1aa
    .catchall {:try_start_179 .. :try_end_1aa} :catchall_4c0
    .catch Ljava/lang/NullPointerException; {:try_start_179 .. :try_end_1aa} :catch_1ac
    .catch Ljava/lang/NumberFormatException; {:try_start_179 .. :try_end_1aa} :catch_1e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_179 .. :try_end_1aa} :catch_249
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_1aa} :catch_40e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_179 .. :try_end_1aa} :catch_4c4

    goto/16 :goto_df

    :catch_1ac
    move-exception v8

    move-object/from16 v29, v30

    :goto_1af
    :try_start_1af
    sget-object v34, Lcom/android/server/AppWidgetServiceImpl$errState;->PARSING_NULL_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetServiceImpl;->errFile(Lcom/android/server/AppWidgetServiceImpl$errState;)V

    const-string v34, "AppWidgetServiceImpl"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "failed parsing "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d2
    .catchall {:try_start_1af .. :try_end_1d2} :catchall_46d

    if-nez v31, :cond_f8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppWidgetServiceImpl;->getBackupFile()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_f8

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto/16 :goto_f8

    :catch_1e1
    move-exception v9

    const/16 v34, 0x1

    :try_start_1e4
    move/from16 v0, v34

    iput-boolean v0, v11, Lcom/android/server/AppWidgetServiceImpl$Host;->zombie:Z
    :try_end_1e8
    .catchall {:try_start_1e4 .. :try_end_1e8} :catchall_4c0
    .catch Ljava/lang/NullPointerException; {:try_start_1e4 .. :try_end_1e8} :catch_1ac
    .catch Ljava/lang/NumberFormatException; {:try_start_1e4 .. :try_end_1e8} :catch_1e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e4 .. :try_end_1e8} :catch_249
    .catch Ljava/io/IOException; {:try_start_1e4 .. :try_end_1e8} :catch_40e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e4 .. :try_end_1e8} :catch_4c4

    goto :goto_179

    :catch_1e9
    move-exception v8

    move-object/from16 v29, v30

    :goto_1ec
    :try_start_1ec
    sget-object v34, Lcom/android/server/AppWidgetServiceImpl$errState;->PARSING_NUMBERFORMAT_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetServiceImpl;->errFile(Lcom/android/server/AppWidgetServiceImpl$errState;)V

    const-string v34, "AppWidgetServiceImpl"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "failed parsing "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20f
    .catchall {:try_start_1ec .. :try_end_20f} :catchall_46d

    if-nez v31, :cond_f8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppWidgetServiceImpl;->getBackupFile()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_f8

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto/16 :goto_f8

    :cond_21e
    :try_start_21e
    const-string v34, "b"

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_27e

    const/16 v34, 0x0

    const-string v35, "packageName"

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_df

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Ljava/util/HashSet;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_247
    .catchall {:try_start_21e .. :try_end_247} :catchall_4c0
    .catch Ljava/lang/NullPointerException; {:try_start_21e .. :try_end_247} :catch_1ac
    .catch Ljava/lang/NumberFormatException; {:try_start_21e .. :try_end_247} :catch_1e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_21e .. :try_end_247} :catch_249
    .catch Ljava/io/IOException; {:try_start_21e .. :try_end_247} :catch_40e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_21e .. :try_end_247} :catch_4c4

    goto/16 :goto_df

    :catch_249
    move-exception v8

    move-object/from16 v29, v30

    :goto_24c
    :try_start_24c
    sget-object v34, Lcom/android/server/AppWidgetServiceImpl$errState;->PARSING_XMLPULLPARSER_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetServiceImpl;->errFile(Lcom/android/server/AppWidgetServiceImpl$errState;)V

    const-string v34, "AppWidgetServiceImpl"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "failed parsing "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26f
    .catchall {:try_start_24c .. :try_end_26f} :catchall_46d

    if-nez v31, :cond_f8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppWidgetServiceImpl;->getBackupFile()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_f8

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto/16 :goto_f8

    :cond_27e
    :try_start_27e
    const-string v34, "g"

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_df

    new-instance v13, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    invoke-direct {v13}, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;-><init>()V

    const/16 v34, 0x0

    const-string v35, "id"

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x10

    invoke-static/range {v34 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v34

    move/from16 v0, v34

    iput v0, v13, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    iget v0, v13, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mNextAppWidgetId:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_2c3

    iget v0, v13, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AppWidgetServiceImpl;->mNextAppWidgetId:I

    :cond_2c3
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    const/16 v34, 0x0

    const-string v35, "min_width"

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_2ed

    const-string v34, "appWidgetMinWidth"

    const/16 v35, 0x10

    move-object/from16 v0, v18

    move/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v35

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2ed
    const/16 v34, 0x0

    const-string v35, "min_height"

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_312

    const-string v34, "appWidgetMinHeight"

    const/16 v35, 0x10

    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v35

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_312
    const/16 v34, 0x0

    const-string v35, "max_width"

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_337

    const-string v34, "appWidgetMaxWidth"

    const/16 v35, 0x10

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v35

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_337
    const/16 v34, 0x0

    const-string v35, "max_height"

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_35a

    const-string v34, "appWidgetMaxHeight"

    const/16 v35, 0x10

    move/from16 v0, v35

    invoke-static {v15, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v35

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_35a
    const/16 v34, 0x0

    const-string v35, "host_category"

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_37d

    const-string v34, "appWidgetCategory"

    const/16 v35, 0x10

    move/from16 v0, v35

    invoke-static {v6, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v35

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_37d
    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    const/16 v34, 0x0

    const-string v35, "p"

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_3b1

    const/16 v34, 0x10

    move-object/from16 v0, v28

    move/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-object/from16 v0, v34

    iput-object v0, v13, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-object v0, v13, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-object/from16 v34, v0

    if-eqz v34, :cond_df

    :cond_3b1
    const/16 v34, 0x0

    const-string v35, "h"

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x10

    invoke-static/range {v34 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v0, v34

    iput-object v0, v13, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v0, v13, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v34, v0

    if-eqz v34, :cond_df

    iget-object v0, v13, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-object/from16 v34, v0

    if-eqz v34, :cond_3f2

    iget-object v0, v13, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f2
    iget-object v0, v13, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_40c
    .catchall {:try_start_27e .. :try_end_40c} :catchall_4c0
    .catch Ljava/lang/NullPointerException; {:try_start_27e .. :try_end_40c} :catch_1ac
    .catch Ljava/lang/NumberFormatException; {:try_start_27e .. :try_end_40c} :catch_1e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_27e .. :try_end_40c} :catch_249
    .catch Ljava/io/IOException; {:try_start_27e .. :try_end_40c} :catch_40e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_27e .. :try_end_40c} :catch_4c4

    goto/16 :goto_df

    :catch_40e
    move-exception v8

    move-object/from16 v29, v30

    :goto_411
    :try_start_411
    const-string v34, "AppWidgetServiceImpl"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "failed parsing "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42b
    .catchall {:try_start_411 .. :try_end_42b} :catchall_46d

    if-nez v31, :cond_f8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppWidgetServiceImpl;->getBackupFile()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_f8

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto/16 :goto_f8

    :catch_43a
    move-exception v8

    :goto_43b
    :try_start_43b
    sget-object v34, Lcom/android/server/AppWidgetServiceImpl$errState;->PARSING_INBOUND_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetServiceImpl;->errFile(Lcom/android/server/AppWidgetServiceImpl$errState;)V

    const-string v34, "AppWidgetServiceImpl"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "failed parsing "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45e
    .catchall {:try_start_43b .. :try_end_45e} :catchall_46d

    if-nez v31, :cond_f8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppWidgetServiceImpl;->getBackupFile()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_f8

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto/16 :goto_f8

    :catchall_46d
    move-exception v34

    :goto_46e
    if-nez v31, :cond_47b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppWidgetServiceImpl;->getBackupFile()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_47b

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    :cond_47b
    throw v34

    :cond_47c
    const-string v34, "AppWidgetServiceImpl"

    const-string v35, "Failed to read state, clearing widgets and hosts."

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v12, 0x0

    :goto_4a0
    if-ge v12, v4, :cond_4bf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_4a0

    :catch_4bc
    move-exception v34

    goto/16 :goto_fd

    :cond_4bf
    return-void

    :catchall_4c0
    move-exception v34

    move-object/from16 v29, v30

    goto :goto_46e

    :catch_4c4
    move-exception v8

    move-object/from16 v29, v30

    goto/16 :goto_43b

    :catch_4c9
    move-exception v8

    goto/16 :goto_411

    :catch_4cc
    move-exception v8

    goto/16 :goto_24c

    :catch_4cf
    move-exception v8

    goto/16 :goto_1ec

    :catch_4d2
    move-exception v8

    goto/16 :goto_1af

    :cond_4d5
    move-object/from16 v29, v30

    goto/16 :goto_f8
.end method

.method registerForBroadcastsLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V
    .registers 14

    const/4 v7, 0x1

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    if-lez v0, :cond_55

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    if-eqz v0, :cond_56

    :goto_b
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "appWidgetIds"

    invoke-virtual {v8, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_22
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/high16 v2, 0x800

    new-instance v3, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-direct {v3, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v0, v1, v8, v2, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_58

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v7, :cond_55

    iget-object v0, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    int-to-long v4, v0

    const-wide/32 v0, 0x1b7740

    cmp-long v0, v4, v0

    if-gez v0, :cond_48

    const-wide/32 v4, 0x1b7740

    :cond_48
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    iget-object v6, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    :cond_55
    return-void

    :cond_56
    const/4 v7, 0x0

    goto :goto_b

    :catchall_58
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method removeProviderLocked(ILcom/android/server/AppWidgetServiceImpl$Provider;)V
    .registers 8

    const/4 v4, 0x0

    iget-object v3, p2, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_30

    iget-object v3, p2, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    invoke-virtual {p0, v2, v4}, Lcom/android/server/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;Landroid/widget/RemoteViews;)V

    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/AppWidgetServiceImpl$Provider;)V

    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v3, v3, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v4, v2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V

    iput-object v4, v2, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_30
    iget-object v3, p2, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mDeletedProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/AppWidgetServiceImpl$Provider;)V

    return-void
.end method

.method removeProvidersForPackageLocked(Ljava/lang/String;)Z
    .registers 8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_9
    if-ltz v2, :cond_28

    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-object v5, v3, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-virtual {p0, v2, v3}, Lcom/android/server/AppWidgetServiceImpl;->removeProviderLocked(ILcom/android/server/AppWidgetServiceImpl$Provider;)V

    const/4 v4, 0x1

    :cond_25
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :cond_28
    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_30
    if-ltz v2, :cond_48

    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v5, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-virtual {p0, v1}, Lcom/android/server/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V

    :cond_45
    add-int/lit8 v2, v2, -0x1

    goto :goto_30

    :cond_48
    return v4
.end method

.method saveSecretStateLocked()V
    .registers 1

    return-void
.end method

.method saveStateLocked()V
    .registers 5

    iget v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetServiceImpl;->savedStateTempFile(I)Ljava/io/File;

    move-result-object v1

    iget v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetServiceImpl;->savedStateRealFile(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/android/server/AppWidgetServiceImpl;->writeStateToFileLocked(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_1f

    sget-object v2, Lcom/android/server/AppWidgetServiceImpl$errState;->WRITE_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetServiceImpl;->errFile(Lcom/android/server/AppWidgetServiceImpl$errState;)V

    const-string v2, "AppWidgetServiceImpl"

    const-string v3, "Failed to persist new settings"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    return-void

    :cond_1f
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_1e
.end method

.method savedSecretStateFile()Landroid/util/AtomicFile;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method savedStateFile()Landroid/util/AtomicFile;
    .registers 5

    iget v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-static {v3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    iget v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-static {v3}, Lcom/android/server/AppWidgetServiceImpl;->getSettingsFile(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_29

    iget v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    if-nez v3, :cond_29

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1f
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/appwidgets.xml"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_29
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v3
.end method

.method savedStateRealFile(I)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "appwidgets.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method savedStateTempFile(I)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "appwidgets.xml.tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method sendEnableIntentLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method sendInitialBroadcasts()V
    .registers 7

    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_2f

    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-object v4, v3, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2c

    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetServiceImpl;->sendEnableIntentLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;)V

    invoke-static {v3}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetIds(Lcom/android/server/AppWidgetServiceImpl$Provider;)[I

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V

    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_2f
    monitor-exit v5

    return-void

    :catchall_31
    move-exception v4

    monitor-exit v5
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v4
.end method

.method sendUpdateIntentLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V
    .registers 7

    if-eqz p2, :cond_24

    array-length v1, p2

    if-lez v1, :cond_24

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_24
    return-void
.end method

.method public setBindAppWidgetPermission(Ljava/lang/String;Z)V
    .registers 7

    iget-boolean v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_APPWIDGET_BIND_PERMISSIONS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBindAppWidgetPermission packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_22
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    if-eqz p2, :cond_34

    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_2c
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateAsync()V

    monitor-exit v1

    goto :goto_4

    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_22 .. :try_end_33} :catchall_31

    throw v0

    :cond_34
    :try_start_34
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_31

    goto :goto_2c
.end method

.method public startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;ILjava/util/List;)[I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/appwidget/IAppWidgetHost;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;)[I"
        }
    .end annotation

    iget-boolean v7, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v7, :cond_8

    const/4 v7, 0x0

    new-array v6, v7, [I

    :goto_7
    return-object v6

    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetServiceImpl;->enforceCallingUid(Ljava/lang/String;)I

    move-result v1

    iget-object v8, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_f
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/AppWidgetServiceImpl;->lookupOrAddHostLocked(ILjava/lang/String;I)Lcom/android/server/AppWidgetServiceImpl$Host;

    move-result-object v2

    iput-object p1, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-interface {p4}, Ljava/util/List;->clear()V

    iget-object v5, v2, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v6, v0, [I

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v0, :cond_3c

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    iget v7, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    aput v7, v6, v3

    iget-object v7, v4, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->views:Landroid/widget/RemoteViews;

    invoke-direct {p0, v7}, Lcom/android/server/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v7

    invoke-interface {p4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_3c
    monitor-exit v8

    goto :goto_7

    :catchall_3e
    move-exception v7

    monitor-exit v8
    :try_end_40
    .catchall {:try_start_f .. :try_end_40} :catchall_3e

    throw v7
.end method

.method public stopListening(I)V
    .registers 5

    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v1, :cond_9

    monitor-exit v2

    :goto_8
    return-void

    :cond_9
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupHostLocked(II)Lcom/android/server/AppWidgetServiceImpl$Host;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-virtual {p0, v0}, Lcom/android/server/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/AppWidgetServiceImpl$Host;)V

    :cond_1c
    monitor-exit v2

    goto :goto_8

    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public systemReady(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/android/server/AppWidgetServiceImpl;->mSafeMode:Z

    iget-object v1, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_5
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public unbindRemoteViewsService(ILandroid/content/Intent;)V
    .registers 9

    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_3
    iget-boolean v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v3, :cond_9

    monitor-exit v4

    :goto_8
    return-void

    :cond_9
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Landroid/content/Intent$FilterComparison;

    invoke-direct {v5, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-static {v3, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v1

    if-nez v1, :cond_32

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "bad appWidgetId"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_2f
    move-exception v3

    monitor-exit v4
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v3

    :cond_32
    :try_start_32
    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;

    invoke-virtual {v0}, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;->disconnect()V

    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    monitor-exit v4
    :try_end_48
    .catchall {:try_start_32 .. :try_end_48} :catchall_2f

    goto :goto_8
.end method

.method public updateAppWidgetIds([ILandroid/widget/RemoteViews;)V
    .registers 10

    iget-boolean v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v4, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    if-eqz p1, :cond_4

    sget-boolean v4, Lcom/android/server/AppWidgetServiceImpl;->DBG:Z

    if-eqz v4, :cond_21

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAppWidgetIds views: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/AppWidgetServiceImpl;->log(Ljava/lang/String;)V

    :cond_21
    const/4 v1, 0x0

    if-eqz p2, :cond_28

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v1

    :cond_28
    iget v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    if-le v1, v4, :cond_5d

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteViews for widget update exceeds maximum bitmap memory usage (used: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", max: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") The total memory cannot exceed that required to"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " fill the device\'s screen once."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5d
    array-length v4, p1

    if-eqz v4, :cond_4

    array-length v0, p1

    iget-object v5, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_64
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    const/4 v2, 0x0

    :goto_68
    if-ge v2, v0, :cond_76

    aget v4, p1, v2

    invoke-virtual {p0, v4}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/android/server/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;Landroid/widget/RemoteViews;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_68

    :cond_76
    monitor-exit v5

    goto :goto_4

    :catchall_78
    move-exception v4

    monitor-exit v5
    :try_end_7a
    .catchall {:try_start_64 .. :try_end_7a} :catchall_78

    throw v4
.end method

.method updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;Landroid/widget/RemoteViews;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;Landroid/widget/RemoteViews;Z)V

    return-void
.end method

.method updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;Landroid/widget/RemoteViews;Z)V
    .registers 8

    if-eqz p1, :cond_27

    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    if-eqz v1, :cond_27

    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-boolean v1, v1, Lcom/android/server/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v1, :cond_27

    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-boolean v1, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->zombie:Z

    if-nez v1, :cond_27

    if-nez p3, :cond_28

    iput-object p2, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->views:Landroid/widget/RemoteViews;

    :goto_16
    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v1, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v1, :cond_27

    :try_start_1c
    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    iget-object v1, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iget v2, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    iget v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-interface {v1, v2, p2, v3}, Lcom/android/internal/appwidget/IAppWidgetHost;->updateAppWidget(ILandroid/widget/RemoteViews;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_27} :catch_2e

    :cond_27
    :goto_27
    return-void

    :cond_28
    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->views:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p2}, Landroid/widget/RemoteViews;->mergeRemoteViews(Landroid/widget/RemoteViews;)V

    goto :goto_16

    :catch_2e
    move-exception v0

    iget-object v1, p1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    goto :goto_27
.end method

.method public updateAppWidgetOptions(ILandroid/os/Bundle;)V
    .registers 10

    iget-object v4, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_3
    iget-boolean v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v3, :cond_9

    monitor-exit v4

    :goto_8
    return-void

    :cond_9
    invoke-direct {p0, p2}, Lcom/android/server/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    move-result-object v0

    if-nez v0, :cond_1b

    monitor-exit v4

    goto :goto_8

    :catchall_18
    move-exception v3

    monitor-exit v4
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v3

    :cond_1b
    :try_start_1b
    iget-object v2, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-object v3, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    invoke-virtual {v3, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "appWidgetId"

    iget v5, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "appWidgetOptions"

    iget-object v5, v0, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateAsync()V

    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_1b .. :try_end_4e} :catchall_18

    goto :goto_8
.end method

.method public updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .registers 13

    iget-boolean v6, p0, Lcom/android/server/AppWidgetServiceImpl;->mHasFeature:Z

    if-nez v6, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v7, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_8
    invoke-direct {p0}, Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V

    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-result-object v5

    if-nez v5, :cond_2e

    const-string v6, "AppWidgetServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateAppWidgetProvider: provider doesn\'t exist: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    goto :goto_4

    :catchall_2b
    move-exception v6

    monitor-exit v7
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_2b

    throw v6

    :cond_2e
    :try_start_2e
    iget-object v4, v5, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_39
    if-ge v2, v0, :cond_4d

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetServiceImpl;->canAccessAppWidgetId(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;I)Z

    move-result v6

    if-eqz v6, :cond_4a

    invoke-virtual {p0, v3, p2}, Lcom/android/server/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;Landroid/widget/RemoteViews;)V

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_4d
    monitor-exit v7
    :try_end_4e
    .catchall {:try_start_2e .. :try_end_4e} :catchall_2b

    goto :goto_4
.end method

.method updateProvidersForPackageLocked(Ljava/lang/String;Ljava/util/Set;)Z
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)Z"
        }
    .end annotation

    const/16 v18, 0x0

    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    new-instance v13, Landroid/content/Intent;

    const-string v21, "android.appwidget.action.APPWIDGET_UPDATE"

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mPm:Landroid/content/pm/IPackageManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    move/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-interface {v0, v13, v1, v2, v3}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_3e} :catch_62

    move-result-object v8

    if-nez v8, :cond_66

    const/4 v5, 0x0

    :goto_42
    const/4 v11, 0x0

    :goto_43
    if-ge v11, v5, :cond_147

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v21, v0

    const/high16 v22, 0x4

    and-int v21, v21, v22

    if-eqz v21, :cond_6b

    :cond_5f
    :goto_5f
    add-int/lit8 v11, v11, 0x1

    goto :goto_43

    :catch_62
    move-exception v19

    const/16 v21, 0x0

    :goto_65
    return v21

    :cond_66
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_42

    :cond_6b
    iget-object v0, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5f

    new-instance v9, Landroid/content/ComponentName;

    iget-object v0, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v9, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/AppWidgetServiceImpl;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-result-object v16

    if-nez v16, :cond_a8

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    move-result v21

    if-eqz v21, :cond_5f

    iget-object v0, v6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v18, 0x1

    goto :goto_5f

    :cond_a8
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v9, v1}, Lcom/android/server/AppWidgetServiceImpl;->parseProviderInfoXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-result-object v17

    if-eqz v17, :cond_5f

    iget-object v0, v6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5f

    invoke-static/range {v16 .. v16}, Lcom/android/server/AppWidgetServiceImpl;->getAppWidgetIds(Lcom/android/server/AppWidgetServiceImpl$Provider;)[I

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/AppWidgetServiceImpl$Provider;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v7}, Lcom/android/server/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V

    const/4 v14, 0x0

    :goto_e6
    if-ge v14, v4, :cond_13c

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    iput-object v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->views:Landroid/widget/RemoteViews;

    iget-object v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v21, v0

    if-eqz v21, :cond_12b

    iget-object v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    move-object/from16 v21, v0

    if-eqz v21, :cond_12b

    :try_start_10e
    iget-object v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    move-object/from16 v21, v0

    iget v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mUserId:I

    move/from16 v24, v0

    invoke-interface/range {v21 .. v24}, Lcom/android/internal/appwidget/IAppWidgetHost;->providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;I)V
    :try_end_12b
    .catch Landroid/os/RemoteException; {:try_start_10e .. :try_end_12b} :catch_12e

    :cond_12b
    :goto_12b
    add-int/lit8 v14, v14, 0x1

    goto :goto_e6

    :catch_12e
    move-exception v10

    iget-object v0, v12, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    goto :goto_12b

    :cond_13c
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v7}, Lcom/android/server/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/AppWidgetServiceImpl$Provider;[I)V

    const/16 v18, 0x1

    goto/16 :goto_5f

    :cond_147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v11, v5, -0x1

    :goto_153
    if-ltz v11, :cond_1b6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1b3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1b3

    if-eqz p2, :cond_1aa

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1aa
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v11, v1}, Lcom/android/server/AppWidgetServiceImpl;->removeProviderLocked(ILcom/android/server/AppWidgetServiceImpl$Provider;)V

    const/16 v18, 0x1

    :cond_1b3
    add-int/lit8 v11, v11, -0x1

    goto :goto_153

    :cond_1b6
    move/from16 v21, v18

    goto/16 :goto_65
.end method

.method writeSecretStateToFileLocked(Ljava/io/FileOutputStream;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method writeStateToFileLocked(Ljava/io/File;)Z
    .registers 24

    new-instance v16, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".tmp2"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v17, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".tmp3"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_47

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    :cond_47
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_54

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_54
    :try_start_54
    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_5b} :catch_306

    :try_start_5b
    new-instance v15, Ljava/io/BufferedOutputStream;

    invoke-direct {v15, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_60} :catch_308

    :try_start_60
    new-instance v11, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v11}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string v18, "utf-8"

    move-object/from16 v0, v18

    invoke-interface {v11, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/16 v18, 0x0

    const-string v19, "gs"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v8, 0x0

    :goto_92
    if-ge v8, v3, :cond_ff

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AppWidgetServiceImpl$Provider;

    iget-object v0, v12, Lcom/android/server/AppWidgetServiceImpl$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_fc

    const/16 v18, 0x0

    const-string v19, "p"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v18, 0x0

    const-string v19, "pkg"

    iget-object v0, v12, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v11, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v18, 0x0

    const-string v19, "cl"

    iget-object v0, v12, Lcom/android/server/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v11, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v18, 0x0

    const-string v19, "p"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iput v13, v12, Lcom/android/server/AppWidgetServiceImpl$Provider;->tag:I

    add-int/lit8 v13, v13, 0x1

    :cond_fc
    add-int/lit8 v8, v8, 0x1

    goto :goto_92

    :cond_ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v8, 0x0

    :goto_10a
    if-ge v8, v3, :cond_15b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppWidgetServiceImpl$Host;

    const/16 v18, 0x0

    const-string v19, "h"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v18, 0x0

    const-string v19, "pkg"

    iget-object v0, v7, Lcom/android/server/AppWidgetServiceImpl$Host;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v11, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v18, 0x0

    const-string v19, "id"

    iget v0, v7, Lcom/android/server/AppWidgetServiceImpl$Host;->hostId:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v11, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v18, 0x0

    const-string v19, "h"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iput v8, v7, Lcom/android/server/AppWidgetServiceImpl$Host;->tag:I

    add-int/lit8 v8, v8, 0x1

    goto :goto_10a

    :cond_15b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v8, 0x0

    :goto_166
    if-ge v8, v3, :cond_26e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    const/16 v18, 0x0

    const-string v19, "g"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v18, 0x0

    const-string v19, "id"

    iget v0, v9, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v11, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v18, 0x0

    const-string v19, "h"

    iget-object v0, v9, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->host:Lcom/android/server/AppWidgetServiceImpl$Host;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl$Host;->tag:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v11, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, v9, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1d2

    const/16 v18, 0x0

    const-string v19, "p"

    iget-object v0, v9, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/AppWidgetServiceImpl$Provider;->tag:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v11, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1d2
    iget-object v0, v9, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    move-object/from16 v18, v0

    if-eqz v18, :cond_25f

    const/16 v18, 0x0

    const-string v19, "min_width"

    iget-object v0, v9, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    move-object/from16 v20, v0

    const-string v21, "appWidgetMinWidth"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v11, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v18, 0x0

    const-string v19, "min_height"

    iget-object v0, v9, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    move-object/from16 v20, v0

    const-string v21, "appWidgetMinHeight"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v11, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v18, 0x0

    const-string v19, "max_width"

    iget-object v0, v9, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    move-object/from16 v20, v0

    const-string v21, "appWidgetMaxWidth"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v11, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v18, 0x0

    const-string v19, "max_height"

    iget-object v0, v9, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    move-object/from16 v20, v0

    const-string v21, "appWidgetMaxHeight"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v11, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v18, 0x0

    const-string v19, "host_category"

    iget-object v0, v9, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->options:Landroid/os/Bundle;

    move-object/from16 v20, v0

    const-string v21, "appWidgetCategory"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v11, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_25f
    const/16 v18, 0x0

    const-string v19, "g"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_166

    :cond_26e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Ljava/util/HashSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_278
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2d2

    const/16 v18, 0x0

    const-string v19, "b"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v19, 0x0

    const-string v20, "packageName"

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-interface {v11, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v18, 0x0

    const-string v19, "b"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2a7
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_2a7} :catch_2a8

    goto :goto_278

    :catch_2a8
    move-exception v4

    move-object v5, v6

    move-object v14, v15

    :goto_2ab
    if-eqz v14, :cond_2b0

    :try_start_2ad
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V

    :cond_2b0
    if-eqz v5, :cond_2b5

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2b5
    .catch Ljava/io/IOException; {:try_start_2ad .. :try_end_2b5} :catch_304

    :cond_2b5
    :goto_2b5
    const-string v18, "AppWidgetServiceImpl"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to write state: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    :goto_2d1
    return v18

    :cond_2d2
    const/16 v18, 0x0

    :try_start_2d4
    const-string v19, "gs"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-static {v6}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2e9
    .catch Ljava/io/IOException; {:try_start_2d4 .. :try_end_2e9} :catch_2a8

    const/4 v14, 0x0

    :try_start_2ea
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2ed
    .catch Ljava/io/IOException; {:try_start_2ea .. :try_end_2ed} :catch_308

    const/4 v5, 0x0

    :try_start_2ee
    invoke-virtual/range {v16 .. v17}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_2fa

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    :cond_2fa
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_301
    .catch Ljava/io/IOException; {:try_start_2ee .. :try_end_301} :catch_306

    const/16 v18, 0x1

    goto :goto_2d1

    :catch_304
    move-exception v18

    goto :goto_2b5

    :catch_306
    move-exception v4

    goto :goto_2ab

    :catch_308
    move-exception v4

    move-object v5, v6

    goto :goto_2ab
.end method
