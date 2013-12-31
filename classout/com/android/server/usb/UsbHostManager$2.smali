.class Lcom/android/server/usb/UsbHostManager$2;
.super Landroid/os/UEventObserver;
.source "UsbHostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbHostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbHostManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbHostManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 15

    const-wide/16 v3, 0x1770

    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USB HOST UEVENT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ACTION"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "DEVPATH"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "STATE"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v0, "SWITCH_NAME"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "SWITCH_STATE"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    #calls: Lcom/android/server/usb/UsbHostManager;->getPowerManager()V
    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->access$200(Lcom/android/server/usb/UsbHostManager;)V

    const-string v0, "add"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    #calls: Lcom/android/server/usb/UsbHostManager;->turnOnLcd()V
    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->access$300(Lcom/android/server/usb/UsbHostManager;)V

    :cond_50
    const-string v0, "remove"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$400()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_65

    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$400()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_65
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "set wakelock timeout 6000"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    #getter for: Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;
    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->access$500(Lcom/android/server/usb/UsbHostManager;)Lcom/android/server/usb/UsbNotificationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/usb/UsbNotificationHandler;->clearAllNotificaton()V

    :cond_77
    const-string v0, "change"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    if-eqz v11, :cond_aa

    const-string v0, "/devices/virtual/host_notify"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_aa

    :try_start_89
    const-string v0, "ADD"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    #calls: Lcom/android/server/usb/UsbHostManager;->turnOnLcd()V
    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->access$300(Lcom/android/server/usb/UsbHostManager;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    #getter for: Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;
    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->access$500(Lcom/android/server/usb/UsbHostManager;)Lcom/android/server/usb/UsbNotificationHandler;

    move-result-object v0

    const v1, 0x10407de

    const/4 v2, 0x0

    const v3, 0x1080811

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "UsbDevices"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V

    :cond_aa
    :goto_aa
    return-void

    :cond_ab
    const-string v0, "REMOVE"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_105

    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$400()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_c2

    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$400()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x1770

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_c2
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "set wakelock timeout 6000"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    #getter for: Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;
    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->access$500(Lcom/android/server/usb/UsbHostManager;)Lcom/android/server/usb/UsbNotificationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/usb/UsbNotificationHandler;->clearAllNotificaton()V

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    #getter for: Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;
    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->access$500(Lcom/android/server/usb/UsbHostManager;)Lcom/android/server/usb/UsbNotificationHandler;

    move-result-object v0

    const v1, 0x10407df

    const/4 v2, 0x0

    const v3, 0x1080811

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "UsbDevices"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V
    :try_end_e8
    .catch Ljava/lang/NumberFormatException; {:try_start_89 .. :try_end_e8} :catch_e9

    goto :goto_aa

    :catch_e9
    move-exception v9

    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse state or devPath from event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    :cond_105
    :try_start_105
    const-string v0, "OVERCURRENT"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_124

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    #getter for: Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;
    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->access$500(Lcom/android/server/usb/UsbHostManager;)Lcom/android/server/usb/UsbNotificationHandler;

    move-result-object v0

    const v1, 0x10407db

    const v2, 0x10407dc

    const v3, 0x108008a

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "OVERCURRENT"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V

    goto :goto_aa

    :cond_124
    const-string v0, "UNKNOWN"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_142

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    #getter for: Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;
    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->access$500(Lcom/android/server/usb/UsbHostManager;)Lcom/android/server/usb/UsbNotificationHandler;

    move-result-object v0

    const v1, 0x10407dd

    const/4 v2, 0x0

    const v3, 0x108008a

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "UNKNOWN"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V

    goto/16 :goto_aa

    :cond_142
    const-string v0, "LOWBATT"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    #getter for: Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;
    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->access$500(Lcom/android/server/usb/UsbHostManager;)Lcom/android/server/usb/UsbNotificationHandler;

    move-result-object v0

    const v1, 0x1040521

    const/4 v2, 0x0

    const v3, 0x108008a

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "LOWBATT"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V
    :try_end_15e
    .catch Ljava/lang/NumberFormatException; {:try_start_105 .. :try_end_15e} :catch_e9

    goto/16 :goto_aa
.end method
