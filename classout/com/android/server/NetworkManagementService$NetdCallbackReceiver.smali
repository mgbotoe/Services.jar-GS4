.class Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdCallbackReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public onDaemonConnected()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #getter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$100(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #getter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$100(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0, v1}, Lcom/android/server/NetworkManagementService;->access$102(Lcom/android/server/NetworkManagementService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #getter for: Lcom/android/server/NetworkManagementService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$300(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;-><init>(Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_17
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 14

    const/4 v0, 0x5

    const/4 v9, 0x3

    const/4 v1, 0x4

    const/4 v8, 0x2

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_2b4

    const/4 v2, 0x0

    :goto_9
    return v2

    :sswitch_a
    array-length v3, p3

    if-lt v3, v1, :cond_17

    aget-object v3, p3, v2

    const-string v4, "Iface"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid event from daemon (%s)"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    aget-object v3, p3, v8

    const-string v4, "added"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    iget-object v3, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v4, p3, v9

    #calls: Lcom/android/server/NetworkManagementService;->notifyInterfaceAdded(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/NetworkManagementService;->access$400(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Added Wi-Fi hotspot "

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_4b
    aget-object v3, p3, v8

    const-string v4, "removed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    iget-object v3, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v4, p3, v9

    #calls: Lcom/android/server/NetworkManagementService;->notifyInterfaceRemoved(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/NetworkManagementService;->access$500(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Removed Wi-Fi hotspot"

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_6e
    aget-object v3, p3, v8

    const-string v4, "changed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9d

    array-length v3, p3

    if-ne v3, v0, :cond_9d

    iget-object v3, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v4, p3, v9

    aget-object v5, p3, v1

    const-string v8, "up"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #calls: Lcom/android/server/NetworkManagementService;->notifyInterfaceStatusChanged(Ljava/lang/String;Z)V
    invoke-static {v3, v4, v5}, Lcom/android/server/NetworkManagementService;->access$600(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Changed Wi-Fi hotspot"

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_9d
    aget-object v3, p3, v8

    const-string v4, "linkstate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cc

    array-length v3, p3

    if-ne v3, v0, :cond_cc

    iget-object v3, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v4, p3, v9

    aget-object v5, p3, v1

    const-string v8, "up"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #calls: Lcom/android/server/NetworkManagementService;->notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    invoke-static {v3, v4, v5}, Lcom/android/server/NetworkManagementService;->access$700(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Linkstate Wi-Fi hotspot"

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_cc
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid event from daemon (%s)"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_dd
    array-length v3, p3

    if-lt v3, v0, :cond_ea

    aget-object v0, p3, v2

    const-string v3, "limit"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fb

    :cond_ea
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid event from daemon (%s)"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_fb
    aget-object v0, p3, v8

    const-string v3, "alert"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_110

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v3, p3, v9

    aget-object v1, p3, v1

    #calls: Lcom/android/server/NetworkManagementService;->notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v3, v1}, Lcom/android/server/NetworkManagementService;->access$800(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_110
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid event from daemon (%s)"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_121
    array-length v0, p3

    if-lt v0, v1, :cond_12e

    aget-object v0, p3, v2

    const-string v1, "IfaceClass"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13f

    :cond_12e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid event from daemon (%s)"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13f
    aget-object v0, p3, v8

    const-string v1, "active"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v1, p3, v9

    #calls: Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v7}, Lcom/android/server/NetworkManagementService;->access$900(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    goto/16 :goto_9

    :sswitch_150
    aget-object v3, p3, v8

    const-string v4, "sta_join"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_164

    aget-object v3, p3, v8

    const-string v4, "sta_leave"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20b

    :cond_164
    aget-object v3, p3, v8

    const-string v4, "sta_join"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ee

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Client device connected to Wi-Fi hotspot"

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :cond_17f
    :goto_17f
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "EVENT"

    aget-object v3, p3, v8

    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "NetworkManagementService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiAp Sta Event, EVENT = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p3

    if-le v0, v9, :cond_1cf

    const-string v0, "NUM"

    aget-object v3, p3, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "NetworkManagementService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NUM = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1cf
    aget-object v0, p3, v8

    const-string v3, "sta_leave"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e3

    array-length v0, p3

    if-le v0, v1, :cond_1e3

    const-string v0, "MAC"

    aget-object v1, p3, v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1e3
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #getter for: Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$1000(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_9

    :cond_1ee
    aget-object v3, p3, v8

    const-string v4, "sta_leave"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17f

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Client device disconnected from Wi-Fi hotspot"

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17f

    :cond_20b
    aget-object v0, p3, v8

    const-string v1, "sta_assoc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_252

    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.net.wifi.WIFI_AP_STA_ASSOCIATED_ACTION"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "EVENT"

    aget-object v1, p3, v8

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "NetworkManagementService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiAp Sta Event, EVENT = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, p3, v8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p3

    if-le v0, v9, :cond_247

    const-string v0, "MAC"

    aget-object v1, p3, v9

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_247
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #getter for: Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$1000(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_9

    :cond_252
    aget-object v0, p3, v8

    const-string v1, "wps_success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_270

    aget-object v0, p3, v8

    const-string v1, "wps_fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_270

    aget-object v0, p3, v8

    const-string v1, "wps_timeout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a3

    :cond_270
    const-string v0, "NetworkManagementService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wps State Action : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, p3, v8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.net.wifi.WIFI_AP_WPS_STATE_ACTION"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "EVENT"

    aget-object v1, p3, v8

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    #getter for: Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$1000(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_9

    :cond_2a3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid event from daemon (%s)"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_2b4
    .sparse-switch
        0x258 -> :sswitch_a
        0x259 -> :sswitch_dd
        0x265 -> :sswitch_121
        0x28b -> :sswitch_150
    .end sparse-switch
.end method
