.class final Lcom/android/server/am/ActivityRecord;
.super Ljava/lang/Object;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityRecord$Token;
    }
.end annotation


# instance fields
.field app:Lcom/android/server/am/ProcessRecord;

.field final appToken:Landroid/view/IApplicationToken$Stub;

.field bMultiInstance:Z

.field final baseDir:Ljava/lang/String;

.field compat:Landroid/content/res/CompatibilityInfo;

.field final componentSpecified:Z

.field configChangeFlags:I

.field configDestroy:Z

.field configuration:Landroid/content/res/Configuration;

.field connections:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field cpuTimeAtResume:J

.field currentWindowMode:I

.field final dataDir:Ljava/lang/String;

.field delayedResume:Z

.field finishing:Z

.field forceNewConfig:Z

.field frontOfTask:Z

.field frozenBeforeDestroy:Z

.field final fullscreen:Z

.field hasBeenLaunched:Z

.field haveState:Z

.field icicle:Landroid/os/Bundle;

.field icon:I

.field idle:Z

.field immersive:Z

.field private inHistory:Z

.field final info:Landroid/content/pm/ActivityInfo;

.field final intent:Landroid/content/Intent;

.field final isHomeActivity:Z

.field keysPaused:Z

.field labelRes:I

.field lastLaunchTime:J

.field lastRelaunchedWindowMode:I

.field lastVisibleTime:J

.field launchCount:I

.field launchFailed:Z

.field launchMode:I

.field launchTickTime:J

.field launchTime:J

.field final launchedFromPackage:Ljava/lang/String;

.field final launchedFromUid:I

.field newIntents:Ljava/util/ArrayList;

.field final noDisplay:Z

.field nonLocalizedLabel:Ljava/lang/CharSequence;

.field nowVisible:Z

.field otherAppTouched:Z

.field final packageName:Ljava/lang/String;

.field pauseTime:J

.field pendingNotifyWindowState:Z

.field pendingOptions:Landroid/app/ActivityOptions;

.field pendingResults:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field final processName:Ljava/lang/String;

.field final realActivity:Landroid/content/ComponentName;

.field realTheme:I

.field final requestCode:I

.field requestedFullOpaque:Z

.field final resDir:Ljava/lang/String;

.field final resolvedType:Ljava/lang/String;

.field resultTo:Lcom/android/server/am/ActivityRecord;

.field final resultWho:Ljava/lang/String;

.field results:Ljava/util/ArrayList;

.field final service:Lcom/android/server/am/ActivityManagerService;

.field final shortComponentName:Ljava/lang/String;

.field sleeping:Z

.field sourceActivity:Landroid/content/ComponentName;

.field final stack:Lcom/android/server/am/ActivityStack;

.field startTime:J

.field state:Lcom/android/server/am/ActivityStack$ActivityState;

.field final stateNotNeeded:Z

.field stopped:Z

.field stringName:Ljava/lang/String;

.field task:Lcom/android/server/am/TaskRecord;

.field final taskAffinity:Ljava/lang/String;

.field theme:I

.field thumbHolder:Lcom/android/server/am/ThumbnailHolder;

.field thumbnailNeeded:Z

.field uriPermissions:Lcom/android/server/am/UriPermissionOwner;

.field final userId:I

.field visible:Z

.field waitingVisible:Z

.field windowFlags:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZI)V
    .registers 37

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    new-instance v17, Lcom/android/server/am/ActivityRecord$Token;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityRecord$Token;-><init>(Lcom/android/server/am/ActivityRecord;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->resolvedType:Ljava/lang/String;

    move/from16 v0, p13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->componentSpecified:Z

    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move/from16 v0, p12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    sget-object v17, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->visible:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->idle:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->requestedFullOpaque:Z

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-eqz p8, :cond_409

    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_126

    move-object/from16 v0, p8

    iget v0, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_126

    move-object/from16 v0, p8

    iget v0, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3b9

    :cond_126
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    :goto_130
    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, p8

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x10

    if-eqz v17, :cond_3d2

    const/16 v17, 0x1

    :goto_148
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->baseDir:Ljava/lang/String;

    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->resDir:Ljava/lang/String;

    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->dataDir:Ljava/lang/String;

    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p8

    iget v0, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    if-nez v17, :cond_1c4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move/from16 v17, v0

    if-nez v17, :cond_1c4

    move-object/from16 v0, p8

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget v0, v6, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->labelRes:I

    :cond_1c4
    invoke-virtual/range {p8 .. p8}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->icon:I

    invoke-virtual/range {p8 .. p8}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->realTheme:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    move/from16 v17, v0

    if-nez v17, :cond_209

    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v17, v0

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3d6

    const v17, 0x1030005

    :goto_203
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->realTheme:I

    :cond_209
    move-object/from16 v0, p8

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x200

    move/from16 v17, v0

    if-eqz v17, :cond_227

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    move/from16 v17, v0

    const/high16 v18, 0x100

    or-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    :cond_227
    move-object/from16 v0, p8

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_3db

    if-eqz p3, :cond_3db

    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v0

    const/16 v18, 0x3e8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_265

    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3db

    :cond_265
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    if-eqz v17, :cond_28e

    move-object/from16 v0, p8

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x20

    if-eqz v17, :cond_28e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    const/high16 v18, 0x80

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_28e
    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p8

    iget v0, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->launchMode:I

    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    move/from16 v19, v0

    sget-object v20, Lcom/android/internal/R$styleable;->Window:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v21, v0

    invoke-virtual/range {v17 .. v21}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v11

    if-eqz v11, :cond_3e9

    iget-object v0, v11, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    if-nez v17, :cond_3e9

    iget-object v0, v11, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    if-nez v17, :cond_3e9

    const/16 v17, 0x1

    :goto_2e8
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v11, :cond_3ed

    iget-object v0, v11, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    move-object/from16 v17, v0

    const/16 v18, 0xa

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    if-eqz v17, :cond_3ed

    const/16 v17, 0x1

    :goto_300
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz p13, :cond_314

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v17

    move/from16 v0, p4

    move/from16 v1, v17

    if-eq v0, v1, :cond_314

    if-nez p4, :cond_3fb

    :cond_314
    const-string v17, "android.intent.action.MAIN"

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3f1

    const-string v17, "android.intent.category.HOME"

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3f1

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3f1

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    if-nez v17, :cond_3f1

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_3f1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getFlags()I

    move-result v17

    const/high16 v18, 0x1000

    and-int v17, v17, v18

    if-eqz v17, :cond_3f1

    const-class v17, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3f1

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    :goto_376
    move-object/from16 v0, p8

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x800

    move/from16 v17, v0

    if-eqz v17, :cond_405

    const/16 v17, 0x1

    :goto_386
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->immersive:Z

    :goto_38c
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    const/high16 v17, 0x100

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->lastRelaunchedWindowMode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    move/from16 v17, v0

    if-nez v17, :cond_46b

    const/high16 v17, 0x100

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    :goto_3b8
    return-void

    :cond_3b9
    new-instance v17, Landroid/content/ComponentName;

    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    goto/16 :goto_130

    :cond_3d2
    const/16 v17, 0x0

    goto/16 :goto_148

    :cond_3d6
    const v17, 0x103006b

    goto/16 :goto_203

    :cond_3db
    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    goto/16 :goto_271

    :cond_3e9
    const/16 v17, 0x0

    goto/16 :goto_2e8

    :cond_3ed
    const/16 v17, 0x0

    goto/16 :goto_300

    :cond_3f1
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    goto/16 :goto_376

    :cond_3fb
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    goto/16 :goto_376

    :cond_405
    const/16 v17, 0x0

    goto/16 :goto_386

    :cond_409
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->baseDir:Ljava/lang/String;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->resDir:Ljava/lang/String;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->dataDir:Ljava/lang/String;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->immersive:Z

    goto/16 :goto_38c

    :cond_46b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    move/from16 v17, v0

    if-eqz v17, :cond_47d

    const/high16 v17, 0x100

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_3b8

    :cond_47d
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/am/MultiWindowManagerService;->checkSupportAllApps()Z

    move-result v14

    const/4 v15, 0x0

    move/from16 v0, p14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->lastRelaunchedWindowMode:I

    move/from16 v0, p14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_695

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    :goto_4b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const/16 v16, 0x0

    if-eqz v7, :cond_698

    const-string v17, "com.sec.android.support.multiwindow"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_4d2

    const-string v17, "com.samsung.android.sdk.multiwindow.enable"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_698

    :cond_4d2
    const/4 v15, 0x1

    :cond_4d3
    :goto_4d3
    if-eqz v7, :cond_52d

    const-string v17, "com.sec.android.multiwindow.STYLE"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_52d

    new-instance v9, Ljava/util/ArrayList;

    const-string v17, "\\|"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v17, "freestyleOnly"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_52d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v17, v0

    const v18, -0x1000001

    and-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v17, v0

    const/high16 v18, 0x280

    or-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x10

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v16, 0x3

    :cond_52d
    if-eqz v3, :cond_56b

    const-string v17, "com.sec.android.multiwindow.activity.STYLE"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_56b

    new-instance v5, Ljava/util/ArrayList;

    const-string v17, "\\|"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_56b

    const-string v17, "forceTitleBar"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_560

    const/high16 v17, 0x4

    or-int v16, v16, v17

    :cond_560
    const-string v17, "fullscreenOnly"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_56b

    const/4 v15, 0x0

    :cond_56b
    move/from16 v0, p14

    and-int/lit16 v0, v0, 0x800

    move/from16 v17, v0

    if-eqz v17, :cond_582

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/server/am/MultiWindowManagerService;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v17

    if-eqz v17, :cond_582

    const/4 v15, 0x1

    :cond_582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/server/am/MultiWindowManagerService;->isSupportPopupApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v17

    if-eqz v17, :cond_59d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v17

    if-eqz v17, :cond_6a9

    const/4 v15, 0x1

    :cond_59d
    :goto_59d
    if-nez v15, :cond_5eb

    if-eqz p3, :cond_5eb

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5eb

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    add-int/lit8 v18, v2, -0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    if-eqz v10, :cond_5eb

    iget v0, v10, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v17, v0

    const/high16 v18, 0x40

    and-int v17, v17, v18

    if-eqz v17, :cond_5eb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/server/am/MultiWindowManagerService;->isSupportPopup(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5d6

    const/4 v15, 0x1

    :cond_5d6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move/from16 v17, v0

    if-nez v17, :cond_5eb

    iget v0, v10, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x800

    move/from16 v17, v0

    if-eqz v17, :cond_5eb

    const/4 v15, 0x1

    :cond_5eb
    if-eqz v15, :cond_61f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/server/am/MultiWindowManagerService;->isSupporMultiInstance(Landroid/content/pm/ActivityInfo;)Z

    move-result v17

    if-eqz v17, :cond_61f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6ea

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6ea

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    :cond_61f
    :goto_61f
    invoke-virtual {v13}, Lcom/android/server/am/MultiWindowManagerService;->isSupportControlbar()Z

    move-result v17

    if-nez v17, :cond_629

    const/high16 v17, 0x8

    or-int v16, v16, v17

    :cond_629
    move/from16 v0, p14

    and-int/lit16 v0, v0, 0x2000

    move/from16 v17, v0

    if-eqz v17, :cond_636

    const v17, 0x882000

    or-int v16, v16, v17

    :cond_636
    if-eqz v15, :cond_726

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v17, v0

    const/high16 v18, 0x40

    or-int v18, v18, v16

    or-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    :goto_64a
    move/from16 v0, p14

    and-int/lit16 v0, v0, 0x1000

    move/from16 v17, v0

    if-eqz v17, :cond_663

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v17, v0

    const v18, -0x400001

    and-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    :cond_663
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->pendingNotifyWindowState:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPortraitLayoutOnlyPackage(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Z

    move-result v17

    if-eqz v17, :cond_68b

    :cond_68b
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->sourceActivity:Landroid/content/ComponentName;

    goto/16 :goto_3b8

    :cond_695
    const/4 v7, 0x0

    goto/16 :goto_4b0

    :cond_698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/server/am/MultiWindowManagerService;->isSupportApp(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4d3

    const/4 v15, 0x1

    goto/16 :goto_4d3

    :cond_6a9
    if-eqz p3, :cond_59d

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_59d

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    add-int/lit8 v18, v2, -0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v0

    if-eqz v17, :cond_59d

    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    if-eqz v17, :cond_59d

    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v17

    if-eqz v17, :cond_59d

    const/4 v15, 0x1

    goto/16 :goto_59d

    :cond_6ea
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_61f

    if-eqz v7, :cond_61f

    const-string v17, "com.samsung.android.sdk.multiwindow.multiinstance.launchmode"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_61f

    if-eqz v15, :cond_61f

    const-string v17, "android.intent.category.LAUNCHER"

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_61f

    const-string v17, "singleTask"

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_61f

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    goto/16 :goto_61f

    :cond_726
    if-eqz v14, :cond_73a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v17, v0

    const/high16 v18, 0x40

    or-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_64a

    :cond_73a
    const/high16 v17, 0x100

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_64a
.end method

.method static forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .registers 7

    const/4 v3, 0x0

    if-eqz p0, :cond_11

    :try_start_3
    move-object v0, p0

    check-cast v0, Lcom/android/server/am/ActivityRecord$Token;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_f} :catch_13

    :goto_f
    move-object v3, v2

    :goto_10
    return-object v3

    :cond_11
    move-object v2, v3

    goto :goto_f

    :catch_13
    move-exception v1

    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad activity token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method private getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;
    .registers 4

    const/4 v1, 0x0

    move-object v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_29

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v2, v2, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_2d

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    move-object v0, v1

    :cond_29
    :goto_29
    if-nez v0, :cond_2c

    move-object v0, p0

    :cond_2c
    return-object v0

    :cond_2d
    move-object v0, v1

    goto :goto_29

    :cond_2f
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_29

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_29
.end method


# virtual methods
.method addNewIntentLocked(Landroid/content/Intent;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 12

    new-instance v0, Lcom/android/server/am/ActivityResult;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityResult;-><init>(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    if-nez v1, :cond_15

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    :cond_15
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method applyOptionsLocked()V
    .registers 10

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v6

    packed-switch v6, :pswitch_data_f0

    :cond_d
    :goto_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    :cond_10
    return-void

    :pswitch_11
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getCustomEnterResId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getCustomExitResId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    goto :goto_d

    :pswitch_31
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionScaleUp(IIII)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v4

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getStartWidth()I

    move-result v7

    add-int/2addr v4, v7

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getStartHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v1, v2, v3, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto :goto_d

    :pswitch_89
    const/4 v0, 0x3

    if-ne v6, v0, :cond_ee

    const/4 v5, 0x1

    :goto_8d
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v4

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    add-int/2addr v4, v7

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v1, v2, v3, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_d

    :cond_ee
    const/4 v5, 0x0

    goto :goto_8d

    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_31
        :pswitch_89
        :pswitch_89
    .end packed-switch
.end method

.method clearOptionsLocked()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    :cond_c
    return-void
.end method

.method continueLaunchTickingLocked()Z
    .registers 7

    const/16 v5, 0x6b

    iget-wide v1, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v1, 0x1

    :goto_25
    return v1

    :cond_26
    const/4 v1, 0x0

    goto :goto_25
.end method

.method final deliverNewIntentLocked(ILandroid/content/Intent;)V
    .registers 10

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v6

    invoke-virtual {v4, p1, v5, p2, v6}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_21

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-eqz v4, :cond_43

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-ne v4, p0, :cond_43

    :cond_21
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_43

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_43

    :try_start_2b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_35} :catch_4e
    .catch Ljava/lang/NullPointerException; {:try_start_2b .. :try_end_35} :catch_68

    :try_start_35
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v4, v0, v5}, Landroid/app/IApplicationThread;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_41} :catch_85
    .catch Ljava/lang/NullPointerException; {:try_start_35 .. :try_end_41} :catch_82

    const/4 v3, 0x1

    move-object p2, v2

    :cond_43
    :goto_43
    if-nez v3, :cond_4d

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityRecord;->addNewIntentLocked(Landroid/content/Intent;)V

    :cond_4d
    return-void

    :catch_4e
    move-exception v1

    :goto_4f
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception thrown sending new intent to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43

    :catch_68
    move-exception v1

    :goto_69
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception thrown sending new intent to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43

    :catch_82
    move-exception v1

    move-object p2, v2

    goto :goto_69

    :catch_85
    move-exception v1

    move-object p2, v2

    goto :goto_4f
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "packageName="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, " processName="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "launchedFromUid="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, p0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, " launchedFromPackage="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v11, " userId="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "app="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->toInsecureStringWithClip()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "frontOfTask="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string v11, " task="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "taskAffinity="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "realActivity="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "baseDir="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->baseDir:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->resDir:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/server/am/ActivityRecord;->baseDir:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e0

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "resDir="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->resDir:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_e0
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "dataDir="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->dataDir:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "stateNotNeeded="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string v11, " componentSpecified="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/am/ActivityRecord;->componentSpecified:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string v11, " isHomeActivity="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "compat="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v11, " labelRes=0x"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, p0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, " icon=0x"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, p0, Lcom/android/server/am/ActivityRecord;->icon:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, " theme=0x"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, p0, Lcom/android/server/am/ActivityRecord;->theme:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "config="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v11, :cond_17e

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v11, :cond_1ab

    :cond_17e
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "resultTo="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v11, " resultWho="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, " resultCode="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, p0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    :cond_1ab
    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v11, :cond_1c0

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "results="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1c0
    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v11, :cond_227

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v11

    if-lez v11, :cond_227

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "Pending Results:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1dc
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_227

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/WeakReference;

    if-eqz v10, :cond_205

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/PendingIntentRecord;

    move-object v8, v11

    :goto_1f1
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  - "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v8, :cond_207

    const-string v11, "null"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1dc

    :cond_205
    const/4 v8, 0x0

    goto :goto_1f1

    :cond_207
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v11}, Lcom/android/server/am/PendingIntentRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_1dc

    :cond_227
    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v11, :cond_272

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_272

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "Pending New Intents:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_23e
    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_272

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  - "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v4, :cond_264

    const-string v11, "null"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_261
    add-int/lit8 v2, v2, 0x1

    goto :goto_23e

    :cond_264
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v4, v11, v12, v13, v14}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_261

    :cond_272
    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v11, :cond_287

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "pendingOptions="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_287
    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-eqz v11, :cond_2bd

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    iget-object v11, v11, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    if-eqz v11, :cond_2a4

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "readUriPermissions="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    iget-object v11, v11, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2a4
    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    iget-object v11, v11, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    if-eqz v11, :cond_2bd

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "writeUriPermissions="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    iget-object v11, v11, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2bd
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "launchFailed="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string v11, " launchCount="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, p0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, " lastLaunchTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v11, p0, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_63c

    const-string v11, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_2f2
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, " haveState="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string v11, " icicle="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "state="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v11, " stopped="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string v11, " delayedResume="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string v11, " finishing="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "keysPaused="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string v11, " inHistory="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string v11, " visible="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string v11, " sleeping="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string v11, " idle="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/am/ActivityRecord;->idle:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "fullscreen="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string v11, " noDisplay="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string v11, " immersive="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/am/ActivityRecord;->immersive:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string v11, " launchMode="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, p0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "frozenBeforeDestroy="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string v11, " thumbnailNeeded="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string v11, " forceNewConfig="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "thumbHolder: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    invoke-static {v11}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-eqz v11, :cond_43d

    const-string v11, " bm="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    iget-object v11, v11, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v11, " desc="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    iget-object v11, v11, Lcom/android/server/am/ThumbnailHolder;->lastDescription:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    :cond_43d
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    iget-wide v11, p0, Lcom/android/server/am/ActivityRecord;->launchTime:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_450

    iget-wide v11, p0, Lcom/android/server/am/ActivityRecord;->startTime:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_482

    :cond_450
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "launchTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v11, p0, Lcom/android/server/am/ActivityRecord;->launchTime:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_645

    const-string v11, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_469
    const-string v11, " startTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v11, p0, Lcom/android/server/am/ActivityRecord;->startTime:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_64e

    const-string v11, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_47f
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_482
    iget-wide v11, p0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_492

    iget-boolean v11, p0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-nez v11, :cond_492

    iget-boolean v11, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v11, :cond_4ca

    :cond_492
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "waitingVisible="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string v11, " nowVisible="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string v11, " lastVisibleTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v11, p0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_657

    const-string v11, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_4c7
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_4ca
    iget-boolean v11, p0, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-nez v11, :cond_4d2

    iget v11, p0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    if-eqz v11, :cond_4f5

    :cond_4d2
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "configDestroy="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string v11, " configChangeFlags="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, p0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4f5
    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v11, :cond_50a

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "connections="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_50a
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "windowMode="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, p0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v11}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v11

    sparse-switch v11, :sswitch_data_6d4

    :goto_51d
    iget v11, p0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v11}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v11

    const/high16 v12, 0x80

    and-int/2addr v11, v12

    if-eqz v11, :cond_52f

    const-string v11, "pinup, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_52f
    iget v11, p0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v11}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v11

    const/high16 v12, 0x20

    and-int/2addr v11, v12

    if-eqz v11, :cond_541

    const-string v11, "minimized, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_541
    iget v11, p0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v11}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v11

    and-int/lit16 v11, v11, 0x2000

    if-eqz v11, :cond_552

    const-string v11, "toolkit, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_552
    iget v11, p0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v11}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v11

    const/high16 v12, 0x10

    and-int/2addr v11, v12

    if-eqz v11, :cond_564

    const-string v11, "hidden, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_564
    iget v11, p0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v11}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v11

    const/high16 v12, 0x40

    and-int/2addr v11, v12

    if-eqz v11, :cond_576

    const-string v11, "resize, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_576
    iget v11, p0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v11}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v11

    const/high16 v12, 0x4

    and-int/2addr v11, v12

    if-eqz v11, :cond_588

    const-string v11, "forcetitlebar, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_588
    iget v11, p0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v11, v11, 0x800

    if-eqz v11, :cond_595

    const-string v11, "scale, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_595
    iget v11, p0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v11, v11, 0x1000

    if-eqz v11, :cond_5a2

    const-string v11, "external, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5a2
    iget v11, p0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v11}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v11

    and-int/lit8 v11, v11, 0x3

    const/4 v12, 0x3

    if-ne v11, v12, :cond_672

    const-string v11, "zoneA, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5b4
    :goto_5b4
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v11, :cond_5ff

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v5

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v11, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v12, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v12, v12, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v11, v12}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v1

    const-string v11, "android.intent.extra.WINDOW_MINIMUM_SIZE"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    if-eqz v9, :cond_5ff

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "MIN_WIDTH="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, ", MIN_HEIGHT="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_5ff
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "bMultiInstance="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "otherAppTouched="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "pendingNotifyWindowState="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/am/ActivityRecord;->pendingNotifyWindowState:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :cond_63c
    iget-wide v11, p0, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    move-object/from16 v0, p1

    invoke-static {v11, v12, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto/16 :goto_2f2

    :cond_645
    iget-wide v11, p0, Lcom/android/server/am/ActivityRecord;->launchTime:J

    move-object/from16 v0, p1

    invoke-static {v11, v12, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto/16 :goto_469

    :cond_64e
    iget-wide v11, p0, Lcom/android/server/am/ActivityRecord;->startTime:J

    move-object/from16 v0, p1

    invoke-static {v11, v12, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto/16 :goto_47f

    :cond_657
    iget-wide v11, p0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    move-object/from16 v0, p1

    invoke-static {v11, v12, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto/16 :goto_4c7

    :sswitch_660
    const-string v11, "normal, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_51d

    :sswitch_669
    const-string v11, "freestyle, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_51d

    :cond_672
    iget v11, p0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v11}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v11

    and-int/lit8 v11, v11, 0xc

    const/16 v12, 0xc

    if-ne v11, v12, :cond_687

    const-string v11, "zoneB, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_5b4

    :cond_687
    iget v11, p0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v11}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v11

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_69a

    const-string v11, "zoneC, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_5b4

    :cond_69a
    iget v11, p0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v11}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v11

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_6ad

    const-string v11, "zoneD, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_5b4

    :cond_6ad
    iget v11, p0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v11}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v11

    and-int/lit8 v11, v11, 0x4

    if-eqz v11, :cond_6c0

    const-string v11, "zoneE, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_5b4

    :cond_6c0
    iget v11, p0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v11}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v11

    and-int/lit8 v11, v11, 0x8

    if-eqz v11, :cond_5b4

    const-string v11, "zoneF, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_5b4

    nop

    :sswitch_data_6d4
    .sparse-switch
        0x1000000 -> :sswitch_660
        0x2000000 -> :sswitch_669
    .end sparse-switch
.end method

.method finishLaunchTickingLocked()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public getKeyDispatchingTimeout()J
    .registers 6

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/am/ActivityRecord;->getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->getInputDispatchingTimeoutLocked(Lcom/android/server/am/ActivityRecord;)J

    move-result-wide v3

    monitor-exit v2

    return-wide v3

    :catchall_d
    move-exception v1

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-nez v0, :cond_d

    new-instance v0, Lcom/android/server/am/UriPermissionOwner;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/UriPermissionOwner;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    :cond_d
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    return-object v0
.end method

.method isInHistory()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    return v0
.end method

.method public isInterestingToUserLocked()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public keyDispatchingTimedOut()Z
    .registers 5

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/am/ActivityRecord;->getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    :goto_b
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_16

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, p0, v3}, Lcom/android/server/am/ActivityManagerService;->inputDispatchingTimedOut(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Z)Z

    move-result v2

    return v2

    :cond_14
    const/4 v0, 0x0

    goto :goto_b

    :catchall_16
    move-exception v2

    :try_start_17
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v2
.end method

.method makeFinishing()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v0, Lcom/android/server/am/TaskRecord;->numActivities:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/am/TaskRecord;->numActivities:I

    :cond_17
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    :cond_1e
    return-void
.end method

.method public mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 3

    if-eqz p1, :cond_c

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v0, :cond_c

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method pauseKeyDispatchingLocked()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->pauseKeyDispatching(Landroid/os/IBinder;)V

    :cond_10
    return-void
.end method

.method putInHistory()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    if-nez v0, :cond_17

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v0, Lcom/android/server/am/TaskRecord;->numActivities:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/am/TaskRecord;->numActivities:I

    :cond_17
    return-void
.end method

.method removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_c
    if-ltz v0, :cond_36

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityResult;

    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mFrom:Lcom/android/server/am/ActivityRecord;

    if-eq v2, p1, :cond_1d

    :cond_1a
    :goto_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_1d
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mResultWho:Ljava/lang/String;

    if-nez v2, :cond_2d

    if-nez p2, :cond_1a

    :cond_23
    iget v2, v1, Lcom/android/server/am/ActivityResult;->mRequestCode:I

    if-ne v2, p3, :cond_1a

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1a

    :cond_2d
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mResultWho:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_1a

    :cond_36
    return-void
.end method

.method removeUriPermissionsLocked()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    invoke-virtual {v0}, Lcom/android/server/am/UriPermissionOwner;->removeUriPermissionsLocked()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    :cond_c
    return-void
.end method

.method resumeKeyDispatchingLocked()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->resumeKeyDispatching(Landroid/os/IBinder;)V

    :cond_10
    return-void
.end method

.method public setSleeping(Z)V
    .registers 6

    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    if-ne v1, p1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_4

    :try_start_f
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v1, v2, p1}, Landroid/app/IApplicationThread;->scheduleSleeping(Landroid/os/IBinder;Z)V

    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->sleeping:Z
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_2f} :catch_30

    goto :goto_4

    :catch_30
    move-exception v0

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown when sleeping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v0, Lcom/android/server/am/TaskRecord;->numActivities:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/am/TaskRecord;->numActivities:I

    :cond_14
    if-eqz p1, :cond_1c

    iget v0, p1, Lcom/android/server/am/TaskRecord;->numActivities:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/server/am/TaskRecord;->numActivities:I

    :cond_1c
    if-nez p2, :cond_1f

    move-object p2, p1

    :cond_1f
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez p3, :cond_3a

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-nez v0, :cond_39

    new-instance v0, Lcom/android/server/am/ThumbnailHolder;

    invoke-direct {v0}, Lcom/android/server/am/ThumbnailHolder;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    :cond_39
    :goto_39
    return-void

    :cond_3a
    iput-object p2, p0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    goto :goto_39
.end method

.method public startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/WindowManagerService;->startAppFreezingScreen(Landroid/os/IBinder;I)V

    :cond_f
    return-void
.end method

.method startLaunchTickingLocked()V
    .registers 5

    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->continueLaunchTickingLocked()Z

    goto :goto_4
.end method

.method public stopFreezingScreenLocked(Z)V
    .registers 4

    if-nez p1, :cond_6

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    if-eqz v0, :cond_12

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerService;->stopAppFreezingScreen(Landroid/os/IBinder;Z)V

    :cond_12
    return-void
.end method

.method takeFromHistory()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v0, Lcom/android/server/am/TaskRecord;->numActivities:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/am/TaskRecord;->numActivities:I

    :cond_17
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    :cond_1a
    return-void
.end method

.method takeOptionsLocked()Landroid/app/ActivityOptions;
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    :goto_6
    return-object v1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ActivityRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    goto :goto_6
.end method

.method updateOptionsLocked(Landroid/app/ActivityOptions;)V
    .registers 3

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    :cond_b
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    :cond_d
    return-void
.end method

.method updateOptionsLocked(Landroid/os/Bundle;)V
    .registers 3

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    :cond_b
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0, p1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    :cond_12
    return-void
.end method

.method updateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .registers 5

    iget v0, p0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v0

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_17

    :cond_17
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_21

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    iput-object p1, v0, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    :cond_21
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    iput-object p2, v0, Lcom/android/server/am/ThumbnailHolder;->lastDescription:Ljava/lang/CharSequence;

    goto :goto_b
.end method

.method public windowsDrawn()V
    .registers 15

    const-wide/16 v12, 0x0

    iget-object v10, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_5
    iget-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTime:J

    cmp-long v0, v0, v12

    if-eqz v0, :cond_c4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTime:J

    sub-long v3, v7, v0

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-wide v0, v0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    cmp-long v0, v0, v12

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-wide v0, v0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    sub-long v5, v7, v0

    :goto_21
    const/16 v0, 0x7539

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v11, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v1, v2

    const/4 v2, 0x2

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v11, v1, v2

    const/4 v2, 0x3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v1, v2

    const/4 v2, 0x4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, "Displayed "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    cmp-long v0, v3, v5

    if-eqz v0, :cond_7b

    const-string v0, " (total "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7b
    const-string v0, "ActivityManager"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string v1, "com.android.vending/.AssetBrowserActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string v1, "com.android.vending/com.google.android.finsky.activities.TosActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    :cond_9e
    const-string v0, "GATE"

    const-string v1, "<GATE-M> MARKET_LAUNCHED </GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    :goto_a5
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x0

    move-object v2, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    cmp-long v0, v5, v12

    if-lez v0, :cond_ba

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Lcom/android/server/am/UsageStatsService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    long-to-int v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/UsageStatsService;->noteLaunchTime(Landroid/content/ComponentName;I)V

    :cond_ba
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTime:J

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    :cond_c4
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ActivityRecord;->startTime:J

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    monitor-exit v10

    return-void

    :cond_cd
    move-wide v5, v3

    goto/16 :goto_21

    :cond_d0
    const-string v0, "GATE"

    const-string v1, "<GATE-M> APP_OPENED </GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a5

    :catchall_d8
    move-exception v0

    monitor-exit v10
    :try_end_da
    .catchall {:try_start_5 .. :try_end_da} :catchall_d8

    throw v0
.end method

.method public windowsGone()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    return-void
.end method

.method public windowsVisible()V
    .registers 11

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_3
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, p0}, Lcom/android/server/am/ActivityStack;->reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V

    iget-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v4, :cond_24

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iget-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->idle:Z

    if-nez v4, :cond_33

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStack;->processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;

    :cond_1f
    :goto_1f
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    :cond_24
    iget-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-nez v4, :cond_6a

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    :goto_31
    monitor-exit v5

    return-void

    :cond_33
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v4, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1f

    const/4 v1, 0x0

    :goto_3e
    if-ge v1, v0, :cond_50

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v4, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_50
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v4, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v4, 0x67

    iput v4, v2, Landroid/os/Message;->what:I

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v4, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1f

    :catchall_67
    move-exception v4

    monitor-exit v5
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_67

    throw v4

    :cond_6a
    :try_start_6a
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V
    :try_end_73
    .catchall {:try_start_6a .. :try_end_73} :catchall_67

    goto :goto_31
.end method
