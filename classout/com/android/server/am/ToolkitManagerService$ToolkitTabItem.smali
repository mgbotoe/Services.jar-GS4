.class Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
.super Ljava/lang/Object;
.source "ToolkitManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ToolkitManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToolkitTabItem"
.end annotation


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mClassName:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mPackageName:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mTaskRecordId:I

.field private mbPermanent:Z

.field private mbRunApplication:Z

.field final synthetic this$0:Lcom/android/server/am/ToolkitManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ToolkitManagerService;Landroid/content/Context;Ljava/lang/String;I)V
    .registers 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->this$0:Lcom/android/server/am/ToolkitManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mTaskRecordId:I

    iput-boolean v2, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbRunApplication:Z

    iput-boolean v2, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbPermanent:Z

    const-string v1, ":"

    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v2

    iput-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mTaskRecordId:I

    iput-boolean v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbRunApplication:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ToolkitManagerService;Landroid/content/Intent;)V
    .registers 6

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->this$0:Lcom/android/server/am/ToolkitManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mTaskRecordId:I

    iput-boolean v2, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbRunApplication:Z

    iput-boolean v2, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbPermanent:Z

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    :cond_1f
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ToolkitManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->this$0:Lcom/android/server/am/ToolkitManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mTaskRecordId:I

    iput-boolean v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbRunApplication:Z

    iput-boolean v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbPermanent:Z

    iput-object p2, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ToolkitManagerService;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->this$0:Lcom/android/server/am/ToolkitManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mTaskRecordId:I

    iput-boolean v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbRunApplication:Z

    iput-boolean v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbPermanent:Z

    iput-object p2, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mTaskRecordId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbRunApplication:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ToolkitManagerService;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->this$0:Lcom/android/server/am/ToolkitManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mTaskRecordId:I

    iput-boolean v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbRunApplication:Z

    iput-boolean v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbPermanent:Z

    iput-object p2, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbRunApplication:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mTaskRecordId:I

    return v0
.end method

.method private setDefaultInfo()V
    .registers 7

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPm:Landroid/content/pm/PackageManager;

    if-nez v3, :cond_11

    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #getter for: Lcom/android/server/am/ToolkitManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/am/ToolkitManagerService;->access$1700(Lcom/android/server/am/ToolkitManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPm:Landroid/content/pm/PackageManager;

    :cond_11
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.MULTIWINDOW_TOOLKIT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2e
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_63

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_63

    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    if-nez v3, :cond_4c

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    :cond_4c
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_5e

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_5e
    const-string v3, "android.intent.category.MULTIWINDOW_TOOLKIT"

    iput-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mCategory:Ljava/lang/String;

    :cond_62
    :goto_62
    return-void

    :cond_63
    const-string v3, "android.intent.category.MULTIWINDOW_TOOLKIT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const-string v3, "android.intent.category.MULTIWINDOW_LAUNCHER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_62

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_62

    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    if-nez v3, :cond_8b

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    :cond_8b
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_9d

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_9d
    const-string v3, "android.intent.category.MULTIWINDOW_LAUNCHER"

    iput-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mCategory:Ljava/lang/String;

    goto :goto_62
.end method


# virtual methods
.method public destroyApplication()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbRunApplication:Z

    return-void
.end method

.method public equalPackage(Ljava/lang/Object;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v1

    :cond_5
    if-ne p0, p1, :cond_9

    move v1, v2

    goto :goto_4

    :cond_9
    instance-of v3, p1, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    if-eqz v3, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v1

    :cond_5
    if-ne p0, p1, :cond_9

    move v1, v2

    goto :goto_4

    :cond_9
    instance-of v3, p1, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    if-eqz v3, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    if-ne v1, v3, :cond_26

    move v1, v2

    goto :goto_4

    :cond_26
    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    move v1, v2

    goto :goto_4

    :cond_36
    move v1, v2

    goto :goto_4
.end method

.method public equals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    if-ne v1, p2, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_11

    :cond_1f
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->setDefaultInfo()V

    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskRecordId()I
    .registers 2

    iget v0, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mTaskRecordId:I

    return v0
.end method

.method isPermanent()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbPermanent:Z

    return v0
.end method

.method public makeIntent()Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mCategory:Ljava/lang/String;

    if-nez v1, :cond_17

    :cond_14
    invoke-direct {p0}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->setDefaultInfo()V

    :cond_17
    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.REQUEST_WINDOW_MODE"

    const v2, 0x2002010

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public requestFocus()Z
    .registers 5

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbRunApplication:Z

    if-nez v1, :cond_14

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->makeIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #getter for: Lcom/android/server/am/ToolkitManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/am/ToolkitManagerService;->access$1700(Lcom/android/server/am/ToolkitManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iput-boolean v3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbRunApplication:Z

    :cond_14
    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #getter for: Lcom/android/server/am/ToolkitManagerService;->mFocusedItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    invoke-static {v1}, Lcom/android/server/am/ToolkitManagerService;->access$300(Lcom/android/server/am/ToolkitManagerService;)Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    move-result-object v1

    if-eq v1, p0, :cond_27

    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #setter for: Lcom/android/server/am/ToolkitManagerService;->mFocusedItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    invoke-static {v1, p0}, Lcom/android/server/am/ToolkitManagerService;->access$302(Lcom/android/server/am/ToolkitManagerService;Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;)Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->this$0:Lcom/android/server/am/ToolkitManagerService;

    const/4 v2, 0x2

    #calls: Lcom/android/server/am/ToolkitManagerService;->notifyTabItemChange(Ljava/lang/Object;I)V
    invoke-static {v1, p0, v2}, Lcom/android/server/am/ToolkitManagerService;->access$1500(Lcom/android/server/am/ToolkitManagerService;Ljava/lang/Object;I)V

    :cond_27
    return v3
.end method

.method setPermanent(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mbPermanent:Z

    return-void
.end method

.method public setTaskRecordId(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mTaskRecordId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mPackageName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method
