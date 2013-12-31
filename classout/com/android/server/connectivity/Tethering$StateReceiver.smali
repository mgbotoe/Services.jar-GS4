.class Lcom/android/server/connectivity/Tethering$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 30

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v23, "android.hardware.usb.action.USB_STATE"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    :try_start_27
    const-string v23, "connected"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    const-string v25, "rndis"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    #setter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$402(Lcom/android/server/connectivity/Tethering;Z)Z

    if-eqz v20, :cond_92

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Z

    move-result v23

    if-eqz v23, :cond_92

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$500(Lcom/android/server/connectivity/Tethering;)Z

    move-result v23

    if-eqz v23, :cond_92

    const-string v23, "enabled"

    const-string v25, "TETHER_ALWAYS_ON_MODE"

    move-object/from16 v0, v25

    invoke-static {v8, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7b
    .catchall {:try_start_27 .. :try_end_7b} :catchall_a3

    move-result v23

    if-eqz v23, :cond_83

    const-wide/16 v25, 0x3e8

    :try_start_80
    invoke-static/range {v25 .. v26}, Ljava/lang/Thread;->sleep(J)V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_a3
    .catch Ljava/lang/InterruptedException; {:try_start_80 .. :try_end_83} :catch_3f9

    :cond_83
    :goto_83
    :try_start_83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    #calls: Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;Z)V

    :cond_92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    #setter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$502(Lcom/android/server/connectivity/Tethering;Z)Z

    monitor-exit v24

    :cond_a2
    :goto_a2
    :pswitch_a2
    return-void

    :catchall_a3
    move-exception v23

    monitor-exit v24
    :try_end_a5
    .catchall {:try_start_83 .. :try_end_a5} :catchall_a3

    throw v23

    :cond_a6
    const-string v23, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e1

    const-string v23, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/net/NetworkInfo;

    if-eqz v15, :cond_a2

    invoke-virtual {v15}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v23

    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_a2

    const-string v23, "Tethering"

    const-string v24, "Tethering got CONNECTIVITY_ACTION"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$700(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v23

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_a2

    :cond_e1
    const-string v23, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1b0

    const-string v23, "Tethering"

    const-string v24, "[ActiveSync] onReceive() ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED intent"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    #calls: Lcom/android/server/connectivity/Tethering;->isInternetSharingBlockedByActiveSync()Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$800(Lcom/android/server/connectivity/Tethering;)Z

    move-result v23

    if-eqz v23, :cond_1a7

    const-string v23, "Tethering"

    const-string v24, "[ActiveSync] onReceive() Internet sharing has banned due to security policy."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v23, "network_management"

    invoke-static/range {v23 .. v23}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v17

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v12, v0, [Ljava/lang/String;

    :try_start_115
    invoke-interface/range {v17 .. v17}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_118} :catch_18a

    move-result-object v12

    move-object v6, v12

    array-length v13, v6

    const/4 v10, 0x0

    :goto_11c
    if-ge v10, v13, :cond_a2

    aget-object v11, v6, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    #calls: Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z
    invoke-static {v0, v11}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_187

    const-string v23, "Tethering"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ActiveSync] onReceive() Internet sharing is banned on "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$1000(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    if-eqz v18, :cond_187

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v23

    if-eqz v23, :cond_187

    const-string v23, "Tethering"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ActiveSync] onReceive() Untether on "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    #calls: Lcom/android/server/connectivity/Tethering;->blockInternetSharingByActiveSync(Ljava/lang/String;)V
    invoke-static {v0, v11}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)V

    :cond_187
    add-int/lit8 v10, v10, 0x1

    goto :goto_11c

    :catch_18a
    move-exception v9

    const-string v23, "Tethering"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ActiveSync] onReceive() Error listing Interfaces :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a2

    :cond_1a7
    const-string v23, "Tethering"

    const-string v24, "[ActiveSync] onReceive() Internet sharing is NOT banned any more."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a2

    :cond_1b0
    const-string v23, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_25b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;)Z

    move-result v23

    if-nez v23, :cond_1d2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->wifiTethered:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$1300(Lcom/android/server/connectivity/Tethering;)Z

    move-result v23

    if-eqz v23, :cond_25b

    :cond_1d2
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1400()I

    move-result v23

    if-nez v23, :cond_25b

    const-string v23, "EVENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v23, "Tethering"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[WIFI] onReceive() WIFI_AP_STA_STATUS_CHANGED_ACTION intent, type of EVENT: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v19, :cond_a2

    const-string v23, "NUM"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    if-gez v16, :cond_212

    const/16 v16, 0x0

    :cond_212
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1500()I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, v16

    if-eq v0, v1, :cond_a2

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1500()I

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$1602(I)I

    invoke-static/range {v16 .. v16}, Lcom/android/server/connectivity/Tethering;->access$1502(I)I

    const-string v23, "Tethering"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "**number of client: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1500()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    #setter for: Lcom/android/server/connectivity/Tethering;->add_client_event:Z
    invoke-static/range {v23 .. v24}, Lcom/android/server/connectivity/Tethering;->access$1702(Lcom/android/server/connectivity/Tethering;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    const v24, 0x108086d

    #calls: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static/range {v23 .. v24}, Lcom/android/server/connectivity/Tethering;->access$1800(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_a2

    :cond_25b
    const-string v23, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_278

    const-string v23, "wifi_state"

    const/16 v24, 0xe

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    packed-switch v5, :pswitch_data_3fc

    goto/16 :goto_a2

    :cond_278
    const-string v23, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2f1

    const-string v23, "Tethering"

    const-string v24, "SCREEN_ON is received"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1900()Z

    move-result v23

    if-eqz v23, :cond_a2

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2000()Z

    move-result v23

    if-nez v23, :cond_a2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v23

    const-string v24, "connectivity"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/ConnectivityManager;

    invoke-virtual {v14}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v23

    if-nez v23, :cond_2bb

    const-string v23, "Tethering"

    const-string v24, "SCREEN_ON --> data enable"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    :cond_2bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v23

    const-string v24, "wifi"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v21

    const/16 v23, 0xa

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_2e1

    const/16 v23, 0xb

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_a2

    :cond_2e1
    const-string v23, "Tethering"

    const-string v24, "SCREEN_ON --> hotspot on"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_a2

    :cond_2f1
    const-string v23, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_a2

    const-string v23, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_381

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->wifiTethered:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$1300(Lcom/android/server/connectivity/Tethering;)Z

    move-result v23

    if-eqz v23, :cond_343

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$2100(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v23

    if-eqz v23, :cond_a2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    #setter for: Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z
    invoke-static/range {v23 .. v24}, Lcom/android/server/connectivity/Tethering;->access$2202(Lcom/android/server/connectivity/Tethering;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->access$2100(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v24, v0

    #calls: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static/range {v23 .. v24}, Lcom/android/server/connectivity/Tethering;->access$1800(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_a2

    :cond_343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;)Z

    move-result v23

    if-eqz v23, :cond_a2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$2100(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v23

    if-eqz v23, :cond_a2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    #setter for: Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z
    invoke-static/range {v23 .. v24}, Lcom/android/server/connectivity/Tethering;->access$2202(Lcom/android/server/connectivity/Tethering;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->access$2100(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v24, v0

    #calls: Lcom/android/server/connectivity/Tethering;->showTetheredVendorNotification(I)V
    invoke-static/range {v23 .. v24}, Lcom/android/server/connectivity/Tethering;->access$2300(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_a2

    :cond_381
    const-string v23, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3ed

    const-string v23, "Tethering"

    const-string v24, "Boot complete."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    #setter for: Lcom/android/server/connectivity/Tethering;->mIsBootComplete:Z
    invoke-static/range {v23 .. v24}, Lcom/android/server/connectivity/Tethering;->access$2402(Lcom/android/server/connectivity/Tethering;Z)Z

    const-string v23, "enabled"

    const-string v24, "TETHER_ALWAYS_ON_MODE"

    move-object/from16 v0, v24

    invoke-static {v8, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3c6

    const-string v23, "Tethering"

    const-string v24, "[Tethering always mode] call setUsbTethering()"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v23, "net.tether.always"

    const-string v24, "1"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    :cond_3c6
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    if-eqz v4, :cond_a2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->access$2500(Lcom/android/server/connectivity/Tethering;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v24

    const/16 v25, 0x5

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v4, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto/16 :goto_a2

    :cond_3ed
    const-string v23, "android.intent.action.TETHERING_DENIED"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a2

    goto/16 :goto_a2

    :catch_3f9
    move-exception v23

    goto/16 :goto_83

    :pswitch_data_3fc
    .packed-switch 0xd
        :pswitch_a2
    .end packed-switch
.end method
