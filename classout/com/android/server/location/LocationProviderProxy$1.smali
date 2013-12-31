.class Lcom/android/server/location/LocationProviderProxy$1;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationProviderProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationProviderProxy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const-string v6, "LocationProviderProxy"

    const-string v7, "applying state to connected service"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/location/LocationProviderProxy;->access$000(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_f
    iget-object v6, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z
    invoke-static {v6}, Lcom/android/server/location/LocationProviderProxy;->access$100(Lcom/android/server/location/LocationProviderProxy;)Z

    move-result v1

    iget-object v6, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;
    invoke-static {v6}, Lcom/android/server/location/LocationProviderProxy;->access$200(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/internal/location/ProviderRequest;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mWorksource:Landroid/os/WorkSource;
    invoke-static {v6}, Lcom/android/server/location/LocationProviderProxy;->access$300(Lcom/android/server/location/LocationProviderProxy;)Landroid/os/WorkSource;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #calls: Lcom/android/server/location/LocationProviderProxy;->getService()Lcom/android/internal/location/ILocationProvider;
    invoke-static {v6}, Lcom/android/server/location/LocationProviderProxy;->access$400(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/internal/location/ILocationProvider;

    move-result-object v4

    monitor-exit v7

    if-nez v4, :cond_2e

    :goto_2a
    return-void

    :catchall_2b
    move-exception v6

    monitor-exit v7
    :try_end_2d
    .catchall {:try_start_f .. :try_end_2d} :catchall_2b

    throw v6

    :cond_2e
    :try_start_2e
    invoke-interface {v4}, Lcom/android/internal/location/ILocationProvider;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v2

    if-nez v2, :cond_56

    const-string v6, "LocationProviderProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;
    invoke-static {v8}, Lcom/android/server/location/LocationProviderProxy;->access$500(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/ServiceWatcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has invalid locatino provider properties"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    if-eqz v1, :cond_60

    invoke-interface {v4}, Lcom/android/internal/location/ILocationProvider;->enable()V

    if-eqz v3, :cond_60

    invoke-interface {v4, v3, v5}, Lcom/android/internal/location/ILocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_60} :catch_71
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_60} :catch_78

    :cond_60
    :goto_60
    iget-object v6, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/location/LocationProviderProxy;->access$000(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_67
    iget-object v6, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #setter for: Lcom/android/server/location/LocationProviderProxy;->mProperties:Lcom/android/internal/location/ProviderProperties;
    invoke-static {v6, v2}, Lcom/android/server/location/LocationProviderProxy;->access$602(Lcom/android/server/location/LocationProviderProxy;Lcom/android/internal/location/ProviderProperties;)Lcom/android/internal/location/ProviderProperties;

    monitor-exit v7

    goto :goto_2a

    :catchall_6e
    move-exception v6

    monitor-exit v7
    :try_end_70
    .catchall {:try_start_67 .. :try_end_70} :catchall_6e

    throw v6

    :catch_71
    move-exception v0

    const-string v6, "LocationProviderProxy"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_60

    :catch_78
    move-exception v0

    const-string v6, "LocationProviderProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;
    invoke-static {v8}, Lcom/android/server/location/LocationProviderProxy;->access$500(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/ServiceWatcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_60
.end method
