.class final Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;
.super Landroid/os/FileObserver;
.source "EnterpriseISLPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IntegrityObserver"
.end annotation


# instance fields
.field private final mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;->mPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubcriber:Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    invoke-static {v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v2

    if-eqz v2, :cond_5b

    sget-boolean v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->isStopped:Z

    if-nez v2, :cond_5b

    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->convertEventToString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5b

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IntegrityObserver - Path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Event = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubcriber:Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    invoke-static {v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;->onRuntimeViolation(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_5b} :catch_5c

    :cond_5b
    :goto_5b
    return-void

    :catch_5c
    move-exception v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b
.end method
