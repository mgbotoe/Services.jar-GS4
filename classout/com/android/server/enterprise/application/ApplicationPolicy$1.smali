.class Lcom/android/server/enterprise/application/ApplicationPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->registerPackageChangeReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    #calls: Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v7, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$700(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_64

    :try_start_c
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_64

    if-eqz v2, :cond_64

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_64

    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_65

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    #getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$800(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_38
    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v8, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;I)Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v7

    if-eqz v7, :cond_38

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v8, "applicationUninstallationCount"

    #calls: Lcom/android/server/enterprise/application/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v4, v3, v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$900(Lcom/android/server/enterprise/application/ApplicationPolicy;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v8, 0x2

    const/4 v9, 0x0

    #calls: Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    invoke-static {v7, v3, v4, v8, v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1000(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;IIZ)Z
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_5f} :catch_60

    goto :goto_38

    :catch_60
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_64
    :goto_64
    return-void

    :cond_65
    :try_start_65
    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_81

    :cond_6d
    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_64

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    #calls: Lcom/android/server/enterprise/application/ApplicationPolicy;->getProvidersFromPackage(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v8, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1100(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    #calls: Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(Ljava/util/List;)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1200(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/util/List;)V

    goto :goto_64

    :cond_81
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6d

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    #getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$800(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_97
    :goto_97
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v8, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;I)Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v7

    if-eqz v7, :cond_97

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v8, "applicationInstallationCount"

    #calls: Lcom/android/server/enterprise/application/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v4, v3, v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$900(Lcom/android/server/enterprise/application/ApplicationPolicy;ILjava/lang/String;Ljava/lang/String;)V

    const-string v7, "ApplicationPolicy"

    const-string v8, "App install count incremented"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_be} :catch_60

    goto :goto_97
.end method
