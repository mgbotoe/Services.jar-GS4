.class Lcom/android/server/pm/PackageManagerService$12;
.super Landroid/content/IIntentReceiver$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->unloadMediaPackages(Ljava/util/HashMap;[IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$keys:Ljava/util/Set;

.field final synthetic val$reportStatus:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ZLjava/util/Set;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$12;->val$reportStatus:Z

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$12;->val$keys:Ljava/util/Set;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$12;->val$reportStatus:Z

    if-eqz v0, :cond_e

    move v0, v1

    :goto_8
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$12;->val$keys:Ljava/util/Set;

    #calls: Lcom/android/server/pm/PackageManagerService;->updateMediaStatus(IILjava/util/Set;)V
    invoke-static {v2, v0, v1, v3}, Lcom/android/server/pm/PackageManagerService;->access$4700(Lcom/android/server/pm/PackageManagerService;IILjava/util/Set;)V

    return-void

    :cond_e
    const/4 v0, 0x0

    goto :goto_8
.end method
