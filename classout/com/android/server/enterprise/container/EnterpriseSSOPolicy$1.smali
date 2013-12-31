.class Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseSSOPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "EnterpriseSSOPolicy Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "enterprise.container.setup.success"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    const-string v4, "containerid"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v4, "EnterpriseSSOPolicy Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container created recieved: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_56

    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    #calls: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->isSSOServiceInstalled(I)Z
    invoke-static {v4, v1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$000(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;I)Z

    move-result v4

    if-eqz v4, :cond_56

    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    #calls: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfaces(I)I
    invoke-static {v4, v1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$100(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;I)I

    move-result v3

    packed-switch v3, :pswitch_data_120

    :cond_56
    :goto_56
    return-void

    :pswitch_57
    const-string v4, "EnterpriseSSOPolicy Service"

    const-string v5, "service added to Container: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :pswitch_5f
    const-string v4, "EnterpriseSSOPolicy Service"

    const-string v5, "Failed to add service to container: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :pswitch_67
    const-string v4, "EnterpriseSSOPolicy Service"

    const-string v5, "service already bound"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :cond_6f
    const-string v4, "enterprise.container.uninstalled"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cd

    const-string v4, "containerid"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v4, "EnterpriseSSOPolicy Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container Removed is recieved: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_56

    const/4 v3, 0x1

    if-eqz v3, :cond_b4

    const-string v4, "EnterpriseSSOPolicy Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container removed from DB: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :cond_b4
    const-string v4, "EnterpriseSSOPolicy Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to remove container from DB: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :cond_cd
    const-string v4, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_de

    const-string v4, "EnterpriseSSOPolicy Service"

    const-string v5, "ACTION_PACKAGE_REPLACED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_56

    :cond_de
    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    const-string v4, "EnterpriseSSOPolicy Service"

    const-string v5, "ACTION_PACKAGE_REPLACED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.centrify.sso.samsung"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_56

    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    const/4 v5, 0x1

    #calls: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfaces(I)I
    invoke-static {v4, v5}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$100(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;I)I

    move-result v3

    packed-switch v3, :pswitch_data_12a

    goto/16 :goto_56

    :pswitch_105
    const-string v4, "EnterpriseSSOPolicy Service"

    const-string v5, "Failed to add service to container: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_56

    :pswitch_10e
    const-string v4, "EnterpriseSSOPolicy Service"

    const-string v5, "service added to Container: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_56

    :pswitch_117
    const-string v4, "EnterpriseSSOPolicy Service"

    const-string v5, "service already bound"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_56

    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_57
        :pswitch_67
    .end packed-switch

    :pswitch_data_12a
    .packed-switch 0x0
        :pswitch_105
        :pswitch_10e
        :pswitch_117
    .end packed-switch
.end method
