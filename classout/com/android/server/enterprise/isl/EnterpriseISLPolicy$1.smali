.class Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$1;
.super Ljava/lang/Object;
.source "EnterpriseISLPolicy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$1;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$1;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {p2}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    #setter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-static {v1, v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$002(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISA Service connected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$1;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-static {v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISA ComponentName className: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$1;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->setISLCallBack()V
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_73

    :try_start_53
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$1;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubcriber:Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    invoke-static {v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v1

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$1;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubcriber:Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    invoke-static {v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;->onReady()V
    :try_end_64
    .catchall {:try_start_53 .. :try_end_64} :catchall_73
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_64} :catch_66

    :cond_64
    :goto_64
    monitor-exit p0

    return-void

    :catch_66
    move-exception v0

    :try_start_67
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_67 .. :try_end_72} :catchall_73

    goto :goto_64

    :catchall_73
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISA Service has unexpectedly disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$1;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$002(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    return-void
.end method
