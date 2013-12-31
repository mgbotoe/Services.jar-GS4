.class Lcom/android/server/pm/PackageManagerService$16;
.super Landroid/content/BroadcastReceiver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const-string v2, "com.samsung.android.intent.action.REMOVE_SB_BACKUP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const-string v2, "PackageManager"

    const-string v3, "Remove Backup!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/pm/PackageManagerService$FileHandle;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v3, "/data/backup_sb"

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$FileHandle;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #calls: Lcom/android/server/pm/PackageManagerService$FileHandle;->deleteFile(Ljava/util/List;)V
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService$FileHandle;->access$5200(Lcom/android/server/pm/PackageManagerService$FileHandle;Ljava/util/List;)V

    :cond_29
    return-void
.end method
