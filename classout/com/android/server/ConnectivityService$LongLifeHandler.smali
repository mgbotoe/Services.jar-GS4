.class Lcom/android/server/ConnectivityService$LongLifeHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongLifeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/ConnectivityService$LongLifeHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_64

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/ConnectivityService$LongLifeHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mLLM:Lcom/jpn/android/LongLifeManager;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$5700(Lcom/android/server/ConnectivityService;)Lcom/jpn/android/LongLifeManager;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/ConnectivityService$LongLifeHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mLLM:Lcom/jpn/android/LongLifeManager;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$5700(Lcom/android/server/ConnectivityService;)Lcom/jpn/android/LongLifeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jpn/android/LongLifeManager;->isLongLifeMode()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/ConnectivityService$LongLifeHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->emergencyDataOpened:Z
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$6000(Lcom/android/server/ConnectivityService;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/ConnectivityService$LongLifeHandler;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/ConnectivityService;->emergencyDataOpened:Z
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$6002(Lcom/android/server/ConnectivityService;Z)Z

    iget-object v0, p0, Lcom/android/server/ConnectivityService$LongLifeHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mLLM:Lcom/jpn/android/LongLifeManager;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$5700(Lcom/android/server/ConnectivityService;)Lcom/jpn/android/LongLifeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jpn/android/LongLifeManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/ConnectivityService$LongLifeHandler;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v1, 0x1

    #calls: Lcom/android/server/ConnectivityService;->routeTableFlush(Z)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$5900(Lcom/android/server/ConnectivityService;Z)V

    :cond_3a
    const-string v0, "ConnectivityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Emergency Timeout end. Screen["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService$LongLifeHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mLLM:Lcom/jpn/android/LongLifeManager;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$5700(Lcom/android/server/ConnectivityService;)Lcom/jpn/android/LongLifeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jpn/android/LongLifeManager;->isScreenOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jpn/android/LongLifeManager$Elog;->logV(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
