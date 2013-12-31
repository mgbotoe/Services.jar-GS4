.class Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/WfdBridgeBase$BridgeListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBridgeConnected()I
    .registers 3

    const-string v0, "WfdBridgeAdapter"

    const-string v1, "Bridge is connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onConnRequest(IILjava/net/InetAddress;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->startWFDEngine(IILjava/net/InetAddress;)V

    return-void
.end method

.method public onError(I)V
    .registers 6

    const/4 v3, -0x1

    const-string v0, "WfdBridgeAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mPendingDev:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->access$2500(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;)I

    move-result v0

    if-ltz v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/display/WifiDisplayController;->broadcastWfdState(I)V

    :cond_2c
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    #setter for: Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mPendingDev:I
    invoke-static {v0, v3}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->access$2502(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;I)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    #setter for: Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mPendingType:I
    invoke-static {v0, v3}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->access$2602(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;I)I

    return-void
.end method

.method public onGetStatus()I
    .registers 5

    const-string v1, "WfdBridgeAdapter"

    const-string v2, "onGetStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc8

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mScreenState:I
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->access$2400(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;)I

    move-result v1

    if-nez v1, :cond_13

    const/16 v0, 0x12d

    :cond_13
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->isWfdEngineRunning()Z

    move-result v1

    if-eqz v1, :cond_1d

    const/16 v0, 0x12e

    :cond_1d
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mPendingDev:I
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->access$2500(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;)I

    move-result v1

    if-ltz v1, :cond_27

    const/16 v0, 0x130

    :cond_27
    const-string v1, "WfdBridgeAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetStatus return :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onOK(Ljava/net/InetAddress;)V
    .registers 6

    const/4 v3, -0x1

    const-string v0, "WfdBridgeAdapter"

    const-string v1, "onOK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mPendingDev:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->access$2500(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;)I

    move-result v0

    if-ltz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mPendingDev:I
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->access$2500(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mPendingType:I
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->access$2600(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->startWFDEngine(IILjava/net/InetAddress;)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    #setter for: Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mPendingDev:I
    invoke-static {v0, v3}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->access$2502(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;I)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    #setter for: Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mPendingType:I
    invoke-static {v0, v3}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->access$2602(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;I)I

    :cond_2b
    return-void
.end method
