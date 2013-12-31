.class public Lcom/android/server/enterprise/application/ApplicationUsage;
.super Ljava/lang/Object;
.source "ApplicationUsage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/application/ApplicationUsage$1;,
        Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;,
        Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;,
        Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ApplicationUsage"

.field private static appBackGroundStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;",
            ">;"
        }
    .end annotation
.end field

.field private static appForeGroundStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;",
            ">;"
        }
    .end annotation
.end field

.field private static mStatsLock:Ljava/lang/Object;

.field private static mUsageHandler:Landroid/os/Handler;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    if-nez v1, :cond_e

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    :cond_e
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    if-nez v1, :cond_19

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    :cond_19
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    if-nez v1, :cond_26

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    :cond_26
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    if-nez v1, :cond_41

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MDMAppUsageHandlerThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;-><init>(Lcom/android/server/enterprise/application/ApplicationUsage;Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    :cond_41
    return-void
.end method

.method private calculateAvgPerMonth(ILjava/lang/String;)I
    .registers 15

    const/4 v0, 0x0

    if-eqz p1, :cond_3c

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationUsage;->getAppInstallTimeInMiliSec(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v10, -0x1

    cmp-long v10, v10, v4

    if-eqz v10, :cond_18

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/application/ApplicationUsage;->getMonth(J)I

    move-result v3

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/application/ApplicationUsage;->getYear(J)I

    move-result v6

    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {p0, v10, v11}, Lcom/android/server/enterprise/application/ApplicationUsage;->getYear(J)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {p0, v10, v11}, Lcom/android/server/enterprise/application/ApplicationUsage;->getMonth(J)I

    move-result v1

    if-eqz v3, :cond_38

    if-eqz v6, :cond_38

    if-le v2, v6, :cond_33

    sub-int v9, v2, v6

    mul-int/lit8 v10, v9, 0xc

    add-int/2addr v8, v10

    :cond_33
    if-le v1, v3, :cond_38

    sub-int v7, v1, v3

    add-int/2addr v8, v7

    :cond_38
    if-eqz v8, :cond_3d

    div-int v0, p1, v8

    :cond_3c
    :goto_3c
    return v0

    :cond_3d
    move v0, p1

    goto :goto_3c
.end method

.method private filterUnInstalledApps([Landroid/app/enterprise/AppInfoLastUsage;I)[Landroid/app/enterprise/AppInfoLastUsage;
    .registers 12

    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    const-string v7, "enterprise_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    const/4 v3, 0x0

    :goto_f
    if-ge v3, p2, :cond_24

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v6

    aget-object v7, p1, v3

    iget-object v7, v7, Landroid/app/enterprise/AppInfoLastUsage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v8, :cond_21

    add-int/lit8 v4, v4, 0x1

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_24
    if-nez v4, :cond_28

    move-object v1, v0

    :goto_27
    return-object v1

    :cond_28
    new-array v0, v4, [Landroid/app/enterprise/AppInfoLastUsage;

    if-eqz v0, :cond_47

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_2e
    if-ge v3, p2, :cond_47

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v6

    aget-object v7, p1, v3

    iget-object v7, v7, Landroid/app/enterprise/AppInfoLastUsage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v8, :cond_44

    aget-object v6, p1, v3

    aput-object v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_47
    move-object v1, v0

    goto :goto_27
.end method

.method private getAppInstallTimeInMiliSec(Ljava/lang/String;)J
    .registers 10

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    :try_start_7
    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_15} :catch_17

    move-result-wide v4

    :goto_16
    return-wide v4

    :catch_17
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-wide/16 v4, -0x1

    goto :goto_16
.end method

.method private getMonth(J)I
    .registers 5

    const-string v1, "GMT+0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private getYear(J)I
    .registers 5

    const-string v1, "GMT+0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method private updateBackGroundUsageDetails()V
    .registers 12

    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsageDb;

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/application/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    if-eqz v2, :cond_6c

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6c

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_22
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;

    iget-wide v2, v6, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_49

    iget-wide v2, v6, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    iget-wide v4, v6, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->updateBackGroundUsageDetails(Ljava/lang/String;JJ)Z

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_49
    iget-wide v2, v6, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->updateBackGroundUsageDetails(Ljava/lang/String;JJ)Z

    goto :goto_22

    :cond_53
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_6c

    const/4 v7, 0x0

    :goto_5a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_6c

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_5a

    :cond_6c
    return-void
.end method

.method private updateForeGroundUsageData()V
    .registers 13

    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsageDb;

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/application/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    if-eqz v2, :cond_70

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_70

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_22
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    iget-wide v2, v7, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4b

    iget v2, v7, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    iget-wide v3, v7, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    iget-wide v5, v7, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->updateForeGroundUsageDetails(Ljava/lang/String;IJJ)Z

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_4b
    iget v2, v7, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    iget-wide v3, v7, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->updateForeGroundUsageDetails(Ljava/lang/String;IJJ)Z

    goto :goto_22

    :cond_57
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_70

    const/4 v8, 0x0

    :goto_5e
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_70

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_5e

    :cond_70
    return-void
.end method


# virtual methods
.method public _appLaunchCount(Ljava/lang/String;)V
    .registers 7

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    if-nez v1, :cond_9

    monitor-exit v2

    :goto_8
    return-void

    :cond_9
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    iget v1, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    :goto_29
    monitor-exit v2

    goto :goto_8

    :catchall_2b
    move-exception v1

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1

    :cond_2e
    :try_start_2e
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;-><init>(Lcom/android/server/enterprise/application/ApplicationUsage;Lcom/android/server/enterprise/application/ApplicationUsage$1;)V

    iget v1, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catchall {:try_start_2e .. :try_end_45} :catchall_2b

    goto :goto_29
.end method

.method public _appPauseTime(Ljava/lang/String;)V
    .registers 7

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    :cond_19
    monitor-exit v2

    return-void

    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public _appServiceStartTime(Landroid/app/ActivityManager$RunningServiceInfo;)V
    .registers 10

    const-wide/16 v6, 0x0

    if-eqz p1, :cond_8

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    if-nez v2, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-boolean v2, p1, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-nez v2, :cond_11

    iget v2, p1, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v2, :cond_8

    :cond_11
    iget v2, p1, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_8

    iget-object v2, p1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_20
    sget-object v2, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;

    iget-wide v4, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_3c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    :cond_3c
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    :goto_40
    monitor-exit v3

    goto :goto_8

    :catchall_42
    move-exception v2

    monitor-exit v3
    :try_end_44
    .catchall {:try_start_20 .. :try_end_44} :catchall_42

    throw v2

    :cond_45
    :try_start_45
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;-><init>(Lcom/android/server/enterprise/application/ApplicationUsage;Lcom/android/server/enterprise/application/ApplicationUsage$1;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catchall {:try_start_45 .. :try_end_56} :catchall_42

    goto :goto_40
.end method

.method public _appServiceStopTime(Ljava/lang/String;)V
    .registers 7

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    if-nez v1, :cond_9

    monitor-exit v2

    :goto_8
    return-void

    :cond_9
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    :cond_1f
    monitor-exit v2

    goto :goto_8

    :catchall_21
    move-exception v1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public _insertToAppControlDB()V
    .registers 5

    const-string v0, "ApplicationUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating Usage Statistics in DB @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1c
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_46

    :try_start_1f
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationUsage;->updateForeGroundUsageData()V

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationUsage;->updateBackGroundUsageDetails()V

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_43

    :goto_26
    const-string v0, "ApplicationUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Done Updating Usage Statistics in DB @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    :try_start_45
    throw v0
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_46} :catch_46

    :catch_46
    move-exception v0

    goto :goto_26
.end method

.method public appLaunchCount(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public appPauseTime(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public appServiceStartTime(Landroid/app/ActivityManager$RunningServiceInfo;)V
    .registers 4

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public appServiceStopTime(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public deletePackageFromDb(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.MDM_APP_MGMT"

    const-string v2, "ApplicationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsageDb;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->deletePackageFromDb(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAllAppLastUsage()[Landroid/app/enterprise/AppInfoLastUsage;
    .registers 12

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.sec.MDM_APP_MGMT"

    const-string v10, "ApplicationPolicy"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationUsage;->insertToAppControlDB()V

    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_10
    new-instance v8, Lcom/android/server/enterprise/application/ApplicationUsageDb;

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/server/enterprise/application/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppUsageData()Ljava/util/HashMap;

    move-result-object v7

    if-eqz v7, :cond_48

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_48

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v8

    new-array v0, v8, [Landroid/app/enterprise/AppInfoLastUsage;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/AppInfoLastUsage;

    aput-object v8, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_48
    invoke-direct {p0, v0, v3}, Lcom/android/server/enterprise/application/ApplicationUsage;->filterUnInstalledApps([Landroid/app/enterprise/AppInfoLastUsage;I)[Landroid/app/enterprise/AppInfoLastUsage;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_4b} :catch_4e

    move-result-object v1

    move-object v8, v1

    :goto_4d
    return-object v8

    :catch_4e
    move-exception v2

    const/4 v8, 0x0

    goto :goto_4d
.end method

.method public getAvgNoAppUsagePerMonth()[Landroid/app/enterprise/AppInfoLastUsage;
    .registers 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "android.permission.sec.MDM_APP_MGMT"

    const-string v19, "ApplicationPolicy"

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v6, 0x0

    :try_start_12
    sget-object v18, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    monitor-enter v18
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_6b

    :try_start_15
    const-string v17, "getAvgNoUsagePerMonthOfApp=================="

    const-string v19, "called"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_17e

    :try_start_25
    sget-object v17, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v15

    if-eqz v15, :cond_78

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_35
    :goto_35
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_78

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v17, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    iget v0, v14, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    move/from16 v17, v0

    if-eqz v17, :cond_35

    iget v0, v14, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v8}, Lcom/android/server/enterprise/application/ApplicationUsage;->calculateAvgPerMonth(ILjava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_66
    .catchall {:try_start_25 .. :try_end_66} :catchall_67

    goto :goto_35

    :catchall_67
    move-exception v17

    move-object v11, v12

    :goto_69
    :try_start_69
    monitor-exit v18
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_17e

    :try_start_6a
    throw v17
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6b} :catch_6b

    :catch_6b
    move-exception v5

    :goto_6c
    const-string v17, "ApplicationUsage::getAvgNoAppUsagePerMonth"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x0

    :goto_77
    return-object v17

    :cond_78
    :try_start_78
    new-instance v17, Lcom/android/server/enterprise/application/ApplicationUsageDb;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getLaunchCountOfAllApplication()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_12a

    if-eqz v13, :cond_ee

    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_ee

    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a1
    :goto_a1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_ee

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d8

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    add-int v16, v2, v17

    if-eqz v16, :cond_a1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a1

    :cond_d8
    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    if-eqz v17, :cond_a1

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a1

    :cond_ee
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v3, v0, [Landroid/app/enterprise/AppInfoLastUsage;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_fe
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_16e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v17, Landroid/app/enterprise/AppInfoLastUsage;

    invoke-direct/range {v17 .. v17}, Landroid/app/enterprise/AppInfoLastUsage;-><init>()V

    aput-object v17, v3, v6

    aget-object v17, v3, v6

    move-object/from16 v0, v17

    iput-object v8, v0, Landroid/app/enterprise/AppInfoLastUsage;->mPackageName:Ljava/lang/String;

    aget-object v17, v3, v6

    move-object/from16 v0, v17

    iput v2, v0, Landroid/app/enterprise/AppInfoLastUsage;->mLaunchCountPerMonth:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_fe

    :cond_12a
    if-eqz v13, :cond_16e

    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_16e

    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v3, v0, [Landroid/app/enterprise/AppInfoLastUsage;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_142
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_16e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v17, Landroid/app/enterprise/AppInfoLastUsage;

    invoke-direct/range {v17 .. v17}, Landroid/app/enterprise/AppInfoLastUsage;-><init>()V

    aput-object v17, v3, v6

    aget-object v17, v3, v6

    move-object/from16 v0, v17

    iput-object v8, v0, Landroid/app/enterprise/AppInfoLastUsage;->mPackageName:Ljava/lang/String;

    aget-object v17, v3, v6

    move-object/from16 v0, v17

    iput v2, v0, Landroid/app/enterprise/AppInfoLastUsage;->mLaunchCountPerMonth:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_142

    :cond_16e
    monitor-exit v18
    :try_end_16f
    .catchall {:try_start_78 .. :try_end_16f} :catchall_67

    :try_start_16f
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6}, Lcom/android/server/enterprise/application/ApplicationUsage;->filterUnInstalledApps([Landroid/app/enterprise/AppInfoLastUsage;I)[Landroid/app/enterprise/AppInfoLastUsage;
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_16f .. :try_end_174} :catch_17a

    move-result-object v4

    move-object v11, v12

    move-object/from16 v17, v4

    goto/16 :goto_77

    :catch_17a
    move-exception v5

    move-object v11, v12

    goto/16 :goto_6c

    :catchall_17e
    move-exception v17

    goto/16 :goto_69
.end method

.method public getLastUsageTime(Ljava/lang/String;)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public insertToAppControlDB()V
    .registers 3

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
