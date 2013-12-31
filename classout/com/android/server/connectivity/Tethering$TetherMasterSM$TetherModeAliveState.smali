.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;
.super Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherModeAliveState"
.end annotation


# instance fields
.field mTryCell:Z

.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->turnOnMasterTetherSettings()Z

    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->chooseUpstreamType(Z)V

    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    if-nez v1, :cond_12

    :goto_f
    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    return-void

    :cond_12
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public exit()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->turnOffUpstreamMobileConnection()Z

    invoke-virtual {p0, v0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->notifyTetheredOfNewUpstreamIface(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 14

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TetherModeAliveState.processMessage what="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_1ae

    const/4 v5, 0x0

    :cond_24
    :goto_24
    move v7, v5

    :goto_25
    return v7

    :pswitch_26
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const-string v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Tether Mode requested by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v7, "iface"

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "actualIface"

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mActualUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0xc

    invoke-virtual {v6, v7, v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(ILjava/lang/Object;)V

    goto :goto_24

    :pswitch_6c
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const-string v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Tether Mode unrequested by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_124

    const-string v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TetherModeAlive removing notifyee "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_cd

    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->turnOffMasterTetherSettings()Z

    :cond_c5
    :goto_c5
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const/4 v8, 0x0

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetheredIfaceName:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7602(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_24

    :cond_cd
    const-string v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TetherModeAlive still has "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " live requests:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ff
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const-string v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ff

    :cond_124
    const-string v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TetherModeAliveState UNREQUESTED has unknown who: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c5

    :pswitch_13d
    iput-boolean v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    iget-boolean v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    invoke-virtual {p0, v9}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->chooseUpstreamType(Z)V

    iget-boolean v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    if-nez v9, :cond_14c

    :goto_148
    iput-boolean v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    goto/16 :goto_24

    :cond_14c
    move v7, v8

    goto :goto_148

    :pswitch_14e
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mCurrentConnectionSequence:I
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v8, :cond_24

    const-string v7, "Tethering"

    const-string v8, "renewing mobile connection - requeuing for another 40000ms"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->turnOnUpstreamMobileConnection(I)Z

    goto/16 :goto_24

    :pswitch_16a
    iget-boolean v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    invoke-virtual {p0, v9}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->chooseUpstreamType(Z)V

    iget-boolean v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    if-nez v9, :cond_177

    :goto_173
    iput-boolean v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    goto/16 :goto_24

    :cond_177
    move v7, v8

    goto :goto_173

    :pswitch_179
    const-string v7, "Tethering"

    const-string v8, "renewing mobile connection -  "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_180
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$5100(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_18c
    .catch Landroid/os/RemoteException; {:try_start_180 .. :try_end_18c} :catch_1ab

    move-result-object v2

    :goto_18d
    if-eqz v2, :cond_1a2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_1a2

    const-string v7, "Tethering"

    const-string v8, "wifi is connected, so disconnect dun connection"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->turnOffUpstreamMobileConnection()Z

    move-result v7

    goto/16 :goto_25

    :cond_1a2
    const-string v7, "Tethering"

    const-string v8, "wifi is not available "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    :catch_1ab
    move-exception v7

    goto :goto_18d

    nop

    :pswitch_data_1ae
    .packed-switch 0x1
        :pswitch_26
        :pswitch_6c
        :pswitch_13d
        :pswitch_14e
        :pswitch_16a
        :pswitch_179
    .end packed-switch
.end method
