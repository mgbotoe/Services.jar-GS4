.class Lcom/android/server/power/FakeShutdown$Bootup;
.super Ljava/lang/Thread;
.source "FakeShutdown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/FakeShutdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Bootup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/FakeShutdown;


# direct methods
.method private constructor <init>(Lcom/android/server/power/FakeShutdown;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/FakeShutdown;Lcom/android/server/power/FakeShutdown$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/power/FakeShutdown$Bootup;-><init>(Lcom/android/server/power/FakeShutdown;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    const-string v2, "FakeShutdown"

    const-string v3, "!@call powermanager wakeup()"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v17

    :try_start_11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v3}, Landroid/os/IPowerManager;->wakeUp(J)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1a} :catch_14c

    :goto_1a
    const/4 v1, 0x0

    new-instance v1, Landroid/os/DVFSHelper;

    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$200()Landroid/content/Context;

    move-result-object v2

    const-string v3, "AMS_CAMERA_LAUNCH_BOOST"

    const/16 v4, 0xe

    const-wide/16 v5, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v14

    if-eqz v14, :cond_152

    const-string v2, "CORE_NUM"

    const/4 v3, 0x0

    aget v3, v14, v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :goto_39
    if-eqz v1, :cond_42

    const/16 v7, 0xbb8

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_42
    const-string v8, "/system/media/warmboot.qmg"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    const/16 v3, 0x1f4

    const/4 v4, 0x0

    #calls: Lcom/android/server/power/FakeShutdown;->vibrate(IZ)V
    invoke-static {v2, v3, v4}, Lcom/android/server/power/FakeShutdown;->access$300(Lcom/android/server/power/FakeShutdown;IZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->autoPowerOffObserver:Landroid/os/UEventObserver;
    invoke-static {v2}, Lcom/android/server/power/FakeShutdown;->access$400(Lcom/android/server/power/FakeShutdown;)Landroid/os/UEventObserver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UEventObserver;->stopObserving()V

    :try_start_59
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->wakingUp()V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_60} :catch_15b

    :goto_60
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #calls: Lcom/android/server/power/FakeShutdown;->lauchCamera()Z
    invoke-static {v2}, Lcom/android/server/power/FakeShutdown;->access$500(Lcom/android/server/power/FakeShutdown;)Z

    move-result v13

    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$200()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->oldAirplaneMode:I
    invoke-static {v2}, Lcom/android/server/power/FakeShutdown;->access$600(Lcom/android/server/power/FakeShutdown;)I

    move-result v2

    if-eq v9, v2, :cond_90

    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$200()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->oldAirplaneMode:I
    invoke-static {v3}, Lcom/android/server/power/FakeShutdown;->access$600(Lcom/android/server/power/FakeShutdown;)I

    move-result v3

    #calls: Lcom/android/server/power/FakeShutdown;->changeAirplaneMode(Landroid/content/Context;I)V
    invoke-static {v2, v3}, Lcom/android/server/power/FakeShutdown;->access$700(Landroid/content/Context;I)V

    :cond_90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    const/4 v3, 0x2

    #setter for: Lcom/android/server/power/FakeShutdown;->oldAirplaneMode:I
    invoke-static {v2, v3}, Lcom/android/server/power/FakeShutdown;->access$602(Lcom/android/server/power/FakeShutdown;I)I

    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$200()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oldAirplaneMode"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "bluetooth_manager"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$200()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bluetooth_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/server/power/FakeShutdown;->bluetoothOn:I
    invoke-static {v2, v3}, Lcom/android/server/power/FakeShutdown;->access$802(Lcom/android/server/power/FakeShutdown;I)I

    :try_start_c6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->bluetoothOn:I
    invoke-static {v2}, Lcom/android/server/power/FakeShutdown;->access$800(Lcom/android/server/power/FakeShutdown;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_db

    const-string v2, "FakeShutdown"

    const-string v3, "!@ [p9p9] bluetooth.enable();"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v12}, Landroid/bluetooth/IBluetoothManager;->enable()Z
    :try_end_db
    .catch Landroid/os/RemoteException; {:try_start_c6 .. :try_end_db} :catch_165

    :cond_db
    :goto_db
    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$900()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    const/4 v2, 0x5

    :try_start_e1
    invoke-static {v2}, Lcom/android/server/power/FakeShutdown;->access$1002(I)I

    monitor-exit v3
    :try_end_e5
    .catchall {:try_start_e1 .. :try_end_e5} :catchall_171

    if-eqz v13, :cond_ee

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #calls: Lcom/android/server/power/FakeShutdown;->waitForCamera()V
    invoke-static {v2}, Lcom/android/server/power/FakeShutdown;->access$1100(Lcom/android/server/power/FakeShutdown;)V

    :cond_ee
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->dlgAnimation:Lcom/android/server/power/ShutdownDialog;
    invoke-static {v2}, Lcom/android/server/power/FakeShutdown;->access$1200(Lcom/android/server/power/FakeShutdown;)Lcom/android/server/power/ShutdownDialog;

    move-result-object v2

    if-nez v2, :cond_174

    const-string v2, "FakeShutdown"

    const-string v3, "anim dialog not exist"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ff
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->releaseWakeLocks()V

    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$200()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioManager;

    const-string v2, "shutdown"

    const-string v3, "0"

    invoke-virtual {v11, v2, v3}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_115
    const-string v2, "alarm"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v10

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v10, v2, v3}, Landroid/app/IAlarmManager;->shutdownTimeAfterFakeOff(ZI)I
    :try_end_124
    .catch Landroid/os/RemoteException; {:try_start_115 .. :try_end_124} :catch_188

    :goto_124
    const-string v2, "FakeShutdown"

    const-string v3, "!@FAKE_STATE = NOTHING"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$900()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_131
    invoke-static {v2}, Lcom/android/server/power/FakeShutdown;->access$1002(I)I

    const-string v2, "sys.fakeShutdown.state"

    const-string v4, "power_on"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v3
    :try_end_13c
    .catchall {:try_start_131 .. :try_end_13c} :catchall_191

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->setInputKeysDisable(Z)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->cancelHandler()V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/power/FakeShutdown;->access$1302(Lcom/android/server/power/FakeShutdown;)Lcom/android/server/power/FakeShutdown;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/power/FakeShutdown;->access$202(Landroid/content/Context;)Landroid/content/Context;

    return-void

    :catch_14c
    move-exception v15

    invoke-virtual {v15}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1a

    :cond_152
    const-string v2, "FakeShutdown"

    const-string v3, "coreTable is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_39

    :catch_15b
    move-exception v15

    const-string v2, "FakeShutdown"

    const-string v3, "!@is service dead?"

    invoke-static {v2, v3, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_60

    :catch_165
    move-exception v16

    const-string v2, "FakeShutdown"

    const-string v3, "!@RemoteException during bluetooth enable"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_db

    :catchall_171
    move-exception v2

    :try_start_172
    monitor-exit v3
    :try_end_173
    .catchall {:try_start_172 .. :try_end_173} :catchall_171

    throw v2

    :cond_174
    const-string v2, "FakeShutdown"

    const-string v3, "!@anim dlg cancel"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->dlgAnimation:Lcom/android/server/power/ShutdownDialog;
    invoke-static {v2}, Lcom/android/server/power/FakeShutdown;->access$1200(Lcom/android/server/power/FakeShutdown;)Lcom/android/server/power/ShutdownDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/ShutdownDialog;->cancel()V

    goto/16 :goto_ff

    :catch_188
    move-exception v15

    const-string v2, "FakeShutdown"

    const-string v3, "!@is service dead?"

    invoke-static {v2, v3, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_124

    :catchall_191
    move-exception v2

    :try_start_192
    monitor-exit v3
    :try_end_193
    .catchall {:try_start_192 .. :try_end_193} :catchall_191

    throw v2
.end method
