.class Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;
.super Lcom/sec/enterprise/knox/EnterpriseContainerCallback;
.source "EnterpriseContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerServiceCallback"
.end annotation


# instance fields
.field private final mAdminCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

.field private final mAdminUid:I

.field private final mContainerId:I

.field final synthetic this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;IILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    invoke-direct {p0}, Lcom/sec/enterprise/knox/EnterpriseContainerCallback;-><init>()V

    iput p2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mAdminUid:I

    iput p3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mContainerId:I

    iput-object p4, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mAdminCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    return-void
.end method


# virtual methods
.method public updateStatus(ILandroid/os/Bundle;)V
    .registers 10

    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ContainerServiceCallback:updateStatus( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_15c

    :pswitch_2d
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mContainerId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") - errorCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    :goto_53
    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mAdminCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    if-eqz v4, :cond_86

    :try_start_57
    iget v4, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mContainerId:I

    if-lez v4, :cond_6a

    const-string v4, "containerid"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6a

    const-string v4, "containerid"

    iget v5, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mContainerId:I

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_6a
    const-string v4, "packageName"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_81

    const-string v4, "packageName"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getNonContainerizedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "packageName"

    invoke-virtual {p2, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_81
    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mAdminCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    invoke-interface {v4, p1, p2}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_86} :catch_13e

    :cond_86
    :goto_86
    return-void

    :pswitch_87
    const-string v4, "containerid"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container created with Id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_53

    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    #getter for: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v4}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$500(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mAdminUid:I

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->isAdminActive(I)Z

    move-result v4

    if-eqz v4, :cond_bf

    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    iget v5, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mAdminUid:I

    #calls: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->addContainerToDB(II)Z
    invoke-static {v4, v0, v5}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$600(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;II)Z

    goto :goto_53

    :cond_bf
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin is no more active: DELETE CONTAINER "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_d9
    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    #getter for: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;
    invoke-static {v4}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$700(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;)Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v4

    invoke-interface {v4, v0, p0}, Lcom/sec/knox/container/IEnterpriseContainerService;->removeContainer(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v3

    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ContainerService.removeContainer("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_107} :catch_109

    goto/16 :goto_53

    :catch_109
    move-exception v1

    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Exception:"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_53

    :pswitch_115
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container Removed with Id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mContainerId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mContainerId:I

    if-lez v4, :cond_53

    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    iget v5, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;->mContainerId:I

    #calls: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->removeContainerFromDB(I)Z
    invoke-static {v4, v5}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$300(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;I)Z

    goto/16 :goto_53

    :catch_13e
    move-exception v1

    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException in updateStatus"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_86

    nop

    :pswitch_data_15c
    .packed-switch 0x3e9
        :pswitch_87
        :pswitch_2d
        :pswitch_115
    .end packed-switch
.end method
