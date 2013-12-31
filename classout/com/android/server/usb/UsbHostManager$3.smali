.class Lcom/android/server/usb/UsbHostManager$3;
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

    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager$3;->this$0:Lcom/android/server/usb/UsbHostManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager$3;->this$0:Lcom/android/server/usb/UsbHostManager;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/server/usb/UsbHostManager;->access$600(Lcom/android/server/usb/UsbHostManager;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    :try_start_b
    const-string v17, "DEVPATH"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v17, "ACTION"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v17, "DEVTYPE"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v17, "DEVICE"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v17, "PRODUCT"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v17, "TYPE"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "INTERFACE"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$100()Ljava/lang/String;

    move-result-object v17

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onUEvent(device) :: action = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", devtype = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", device = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", product = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", type = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", interface = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", devpath = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catchall {:try_start_b .. :try_end_bb} :catchall_fc

    :try_start_bb
    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    aget-object v2, v15, v17

    const/16 v17, 0x1

    aget-object v4, v15, v17

    const/16 v17, 0x2

    aget-object v3, v15, v17
    :try_end_cf
    .catchall {:try_start_bb .. :try_end_cf} :catchall_fc
    .catch Ljava/lang/NumberFormatException; {:try_start_bb .. :try_end_cf} :catch_ff
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_bb .. :try_end_cf} :catch_123

    if-eqz v2, :cond_d5

    if-eqz v4, :cond_d5

    if-nez v3, :cond_d7

    :cond_d5
    :try_start_d5
    monitor-exit v18
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_fc

    :goto_d6
    return-void

    :cond_d7
    const/16 v17, 0x0

    :try_start_d9
    aget-object v17, v15, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/16 v17, 0x1

    aget-object v17, v15, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/16 v17, 0x2

    aget-object v17, v15, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager$3;->this$0:Lcom/android/server/usb/UsbHostManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v10, v12, v11}, Lcom/android/server/usb/UsbHostManager;->displayNotification(Ljava/lang/String;III)V
    :try_end_fa
    .catchall {:try_start_d9 .. :try_end_fa} :catchall_fc
    .catch Ljava/lang/NumberFormatException; {:try_start_d9 .. :try_end_fa} :catch_ff
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d9 .. :try_end_fa} :catch_123

    :goto_fa
    :try_start_fa
    monitor-exit v18

    goto :goto_d6

    :catchall_fc
    move-exception v17

    monitor-exit v18
    :try_end_fe
    .catchall {:try_start_fa .. :try_end_fe} :catchall_fc

    throw v17

    :catch_ff
    move-exception v9

    :try_start_100
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$100()Ljava/lang/String;

    move-result-object v17

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Could not parse state or devPath from event "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fa

    :catch_123
    move-exception v9

    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$100()Ljava/lang/String;

    move-result-object v17

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ArrayIndexOutOfBoundsException "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_144
    .catchall {:try_start_100 .. :try_end_144} :catchall_fc

    goto :goto_fa
.end method
