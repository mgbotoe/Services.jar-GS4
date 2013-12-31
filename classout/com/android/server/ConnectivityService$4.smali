.class Lcom/android/server/ConnectivityService$4;
.super Lcom/android/server/ConnectivityService$CheckMp$CallBack;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ConnectivityService;->checkMobileProvisioning(ZILandroid/os/ResultReceiver;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;

.field final synthetic val$resultReceiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/ResultReceiver;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    iput-object p2, p0, Lcom/android/server/ConnectivityService$4;->val$resultReceiver:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Lcom/android/server/ConnectivityService$CheckMp$CallBack;-><init>()V

    return-void
.end method


# virtual methods
.method onComplete(Ljava/lang/Integer;)V
    .registers 8

    const/4 v5, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckMp.onComplete: result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/ConnectivityService$4;->val$resultReceiver:Landroid/os/ResultReceiver;

    if-eqz v2, :cond_2a

    const-string v2, "CheckMp.onComplete: send result"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/ConnectivityService$4;->val$resultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_2a
    iget-object v2, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_c8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckMp.onComplete: ignore unexpected result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$5200(Ljava/lang/String;)V

    :goto_54
    return-void

    :pswitch_55
    const-string v2, "CheckMp.onComplete: ignore, connected or no connection"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    goto :goto_54

    :pswitch_5b
    const-string v2, "CheckMp.onComplete: warm sim"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v2}, Lcom/android/server/ConnectivityService;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_72

    iget-object v2, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->getMobileRedirectedProvisioningUrl()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$5000(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v1

    :cond_72
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_94

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckMp.onComplete: warm sim (redirected), url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->setNotificationVisible(ZLandroid/net/NetworkInfo;Ljava/lang/String;)V
    invoke-static {v2, v5, v0, v1}, Lcom/android/server/ConnectivityService;->access$5100(Lcom/android/server/ConnectivityService;ZLandroid/net/NetworkInfo;Ljava/lang/String;)V

    goto :goto_54

    :cond_94
    const-string v2, "CheckMp.onComplete: warm sim (redirected), no url"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    goto :goto_54

    :pswitch_9a
    iget-object v2, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v2}, Lcom/android/server/ConnectivityService;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckMp.onComplete: warm sim (no dns/tcp), url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->setNotificationVisible(ZLandroid/net/NetworkInfo;Ljava/lang/String;)V
    invoke-static {v2, v5, v0, v1}, Lcom/android/server/ConnectivityService;->access$5100(Lcom/android/server/ConnectivityService;ZLandroid/net/NetworkInfo;Ljava/lang/String;)V

    goto :goto_54

    :cond_c2
    const-string v2, "CheckMp.onComplete: warm sim (no dns/tcp), no url"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    goto :goto_54

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_55
        :pswitch_55
        :pswitch_5b
        :pswitch_9a
        :pswitch_9a
    .end packed-switch
.end method
