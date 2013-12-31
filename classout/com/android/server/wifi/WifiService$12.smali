.class Lcom/android/server/wifi/WifiService$12;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wifi/WifiService$12;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16

    const/4 v12, 0x0

    const/16 v11, 0xe

    const/4 v10, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2a

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v9

    if-eqz v9, :cond_1d

    const-string v9, "WifiService"

    const-string v10, "ACTION_SCREEN_ON"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget-object v9, p0, Lcom/android/server/wifi/WifiService$12;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v9}, Lcom/android/server/wifi/WifiService;->access$500(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v9

    const v10, 0x26002

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    :cond_29
    :goto_29
    return-void

    :cond_2a
    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4c

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v9

    if-eqz v9, :cond_3f

    const-string v9, "WifiService"

    const-string v10, "ACTION_SCREEN_OFF"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    iget-object v9, p0, Lcom/android/server/wifi/WifiService$12;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v9}, Lcom/android/server/wifi/WifiService;->access$500(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v9

    const v10, 0x26003

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_29

    :cond_4c
    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_67

    const-string v9, "plugged"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iget-object v9, p0, Lcom/android/server/wifi/WifiService$12;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v9}, Lcom/android/server/wifi/WifiService;->access$500(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v9

    const v11, 0x26004

    invoke-virtual {v9, v11, v7, v10, v12}, Lcom/android/server/wifi/WifiController;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_29

    :cond_67
    const-string v9, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7d

    const-string v9, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiService$12;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v9, v9, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v9, v8}, Landroid/net/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto :goto_29

    :cond_7d
    const-string v9, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9d

    const-string v9, "phoneinECMState"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iget-object v9, p0, Lcom/android/server/wifi/WifiService$12;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v9}, Lcom/android/server/wifi/WifiService;->access$500(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v11

    const v12, 0x26001

    if-eqz v4, :cond_9b

    const/4 v9, 0x1

    :goto_97
    invoke-virtual {v11, v12, v9, v10}, Lcom/android/server/wifi/WifiController;->sendMessage(III)V

    goto :goto_29

    :cond_9b
    move v9, v10

    goto :goto_97

    :cond_9d
    const-string v9, "android.provider.Telephony.SMS_CB_WIFI_RECEIVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_29

    const-string v9, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c7

    const-string v9, "wifi_state"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v11, :cond_29

    iget-object v9, p0, Lcom/android/server/wifi/WifiService$12;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v9}, Lcom/android/server/wifi/WifiService;->access$500(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v9

    const v11, 0x2600a

    invoke-virtual {v9, v11, v10, v10, v12}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_29

    :cond_c7
    const-string v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_29

    const-string v9, "ss"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sim state changed : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "IMSI"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fc

    iget-object v9, p0, Lcom/android/server/wifi/WifiService$12;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v9, v9, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v9}, Landroid/net/wifi/WifiStateMachine;->reloadSIMState()V

    :cond_fc
    iget-object v9, p0, Lcom/android/server/wifi/WifiService$12;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_29

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_108
    :goto_108
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_29

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v9

    const/4 v11, 0x5

    if-ne v9, v11, :cond_108

    const-string v9, "ABSENT"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12d

    const-string v9, "LOCKED"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13c

    :cond_12d
    const-string v9, "WifiService"

    const-string v11, "disconnect aka ap."

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/wifi/WifiService$12;->this$0:Lcom/android/server/wifi/WifiService;

    iget v11, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v9, v11}, Lcom/android/server/wifi/WifiService;->disableNetwork(I)Z

    goto :goto_108

    :cond_13c
    const-string v9, "WifiService"

    const-string v11, "enableNetwork"

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/wifi/WifiService$12;->this$0:Lcom/android/server/wifi/WifiService;

    iget v11, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v9, v11, v10}, Lcom/android/server/wifi/WifiService;->enableNetwork(IZ)Z

    goto :goto_108
.end method
