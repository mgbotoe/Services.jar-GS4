.class Lcom/android/server/power/ShutdownThread$7;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(ILandroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;Landroid/net/wifi/WifiManager;J[Z)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$7;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    iput-wide p3, p0, Lcom/android/server/power/ShutdownThread$7;->val$endTime:J

    iput-object p5, p0, Lcom/android/server/power/ShutdownThread$7;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 20

    const-string v15, "ShutdownThread"

    const-string v16, "!@Start shutdown radios"

    invoke-static/range {v15 .. v16}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "sys.deviceOffReq"

    const-string v16, "1"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "sys.radio.shutdown"

    const-string v16, "true"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "nfc"

    invoke-static {v15}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v8

    const-string v15, "phone"

    invoke-static {v15}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v10

    const-string v15, "bluetooth_manager"

    invoke-static {v15}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    const-string v15, "connectivity"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v5

    const/4 v11, 0x0

    const/4 v4, 0x1

    if-eqz v10, :cond_47

    :try_start_41
    invoke-interface {v10}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v15

    if-nez v15, :cond_182

    :cond_47
    const/4 v12, 0x1

    :goto_48
    if-eqz v5, :cond_51

    const/4 v15, 0x0

    invoke-interface {v5, v15}, Landroid/net/IConnectivityManager;->isNetworkSupported(I)Z

    move-result v15

    if-eqz v15, :cond_59

    :cond_51
    if-eqz v10, :cond_59

    invoke-interface {v10}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v15

    if-nez v15, :cond_5a

    :cond_59
    const/4 v12, 0x1

    :cond_5a
    if-nez v12, :cond_185

    const-string v15, "ShutdownThread"

    const-string v16, "Turning off radio..."

    invoke-static/range {v15 .. v16}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    invoke-interface {v10, v15}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_67} :catch_18e

    :goto_67
    if-eqz v11, :cond_6f

    :try_start_69
    invoke-interface {v11}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v15

    if-nez v15, :cond_19b

    :cond_6f
    const/4 v13, 0x1

    :goto_70
    if-nez v13, :cond_7d

    const-string v15, "ShutdownThread"

    const-string v16, "Turning off radio2..."

    invoke-static/range {v15 .. v16}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    invoke-interface {v11, v15}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_7d} :catch_19e

    :cond_7d
    :goto_7d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/ShutdownThread$7;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v15, :cond_9f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/ShutdownThread$7;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1ab

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/ShutdownThread$7;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v15

    const/16 v16, 0xb

    move/from16 v0, v16

    if-ne v15, v0, :cond_1ab

    :cond_9f
    const/4 v2, 0x1

    :goto_a0
    if-nez v2, :cond_b0

    const-string v15, "ShutdownThread"

    const-string v16, "Disabling WiFi..."

    invoke-static/range {v15 .. v16}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/ShutdownThread$7;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->shutdown()Z

    :cond_b0
    const-string v15, "ShutdownThread"

    const-string v16, "Waiting for NFC, Bluetooth, Wi-Fi and Radio..."

    invoke-static/range {v15 .. v16}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_c3

    :try_start_b9
    invoke-interface {v8}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1ae

    :cond_c3
    const/4 v9, 0x1

    :goto_c4
    if-nez v9, :cond_d1

    const-string v15, "ShutdownThread"

    const-string v16, "Turning off NFC..."

    invoke-static/range {v15 .. v16}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    invoke-interface {v8, v15}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_d1
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_d1} :catch_1b1

    :cond_d1
    :goto_d1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/ShutdownThread$7;->val$endTime:J

    move-wide/from16 v17, v0

    cmp-long v15, v15, v17

    if-gez v15, :cond_181

    if-nez v4, :cond_f1

    :try_start_e1
    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z
    :try_end_e4
    .catch Landroid/os/RemoteException; {:try_start_e1 .. :try_end_e4} :catch_1c1

    move-result v15

    if-nez v15, :cond_1be

    const/4 v4, 0x1

    :goto_e8
    if-eqz v4, :cond_f1

    const-string v15, "ShutdownThread"

    const-string v16, "Bluetooth turned off."

    invoke-static/range {v15 .. v16}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f1
    if-nez v12, :cond_103

    :try_start_f3
    invoke-interface {v10}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_f6
    .catch Landroid/os/RemoteException; {:try_start_f3 .. :try_end_f6} :catch_1d1

    move-result v15

    if-nez v15, :cond_1ce

    const/4 v12, 0x1

    :goto_fa
    if-eqz v12, :cond_103

    const-string v15, "ShutdownThread"

    const-string v16, "Radio turned off."

    invoke-static/range {v15 .. v16}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    :cond_103
    if-nez v13, :cond_115

    :try_start_105
    invoke-interface {v11}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_108
    .catch Landroid/os/RemoteException; {:try_start_105 .. :try_end_108} :catch_1e1

    move-result v15

    if-nez v15, :cond_1de

    const/4 v13, 0x1

    :goto_10c
    if-eqz v13, :cond_115

    const-string v15, "ShutdownThread"

    const-string v16, "Radio2 turned off."

    invoke-static/range {v15 .. v16}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    :cond_115
    if-nez v2, :cond_150

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/ShutdownThread$7;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_133

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/ShutdownThread$7;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v15

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_1ee

    :cond_133
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/ShutdownThread$7;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v15

    const/16 v16, 0xb

    move/from16 v0, v16

    if-eq v15, v0, :cond_14f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/ShutdownThread$7;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v15

    const/16 v16, 0xe

    move/from16 v0, v16

    if-ne v15, v0, :cond_1ee

    :cond_14f
    const/4 v2, 0x1

    :cond_150
    :goto_150
    if-nez v9, :cond_166

    :try_start_152
    invoke-interface {v8}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_155
    .catch Landroid/os/RemoteException; {:try_start_152 .. :try_end_155} :catch_1f4

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1f1

    const/4 v9, 0x1

    :goto_15d
    if-eqz v9, :cond_166

    const-string v15, "ShutdownThread"

    const-string v16, "NFC turned off."

    invoke-static/range {v15 .. v16}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    :cond_166
    if-eqz v12, :cond_201

    if-eqz v13, :cond_201

    if-eqz v4, :cond_201

    if-eqz v9, :cond_201

    if-eqz v2, :cond_201

    const-string v15, "ShutdownThread"

    const-string v16, "NFC, Radio, Bluetooth and WiFi shutdown complete."

    invoke-static/range {v15 .. v16}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/ShutdownThread$7;->val$done:[Z

    const/16 v16, 0x0

    const/16 v17, 0x1

    aput-boolean v17, v15, v16

    :cond_181
    return-void

    :cond_182
    const/4 v12, 0x0

    goto/16 :goto_48

    :cond_185
    :try_start_185
    const-string v15, "ShutdownThread"

    const-string v16, "radio already turned off"

    invoke-static/range {v15 .. v16}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18c
    .catch Landroid/os/RemoteException; {:try_start_185 .. :try_end_18c} :catch_18e

    goto/16 :goto_67

    :catch_18e
    move-exception v7

    const-string v15, "ShutdownThread"

    const-string v16, "RemoteException during radio shutdown"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v12, 0x1

    goto/16 :goto_67

    :cond_19b
    const/4 v13, 0x0

    goto/16 :goto_70

    :catch_19e
    move-exception v7

    const-string v15, "ShutdownThread"

    const-string v16, "RemoteException during radio2 shutdown"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v13, 0x1

    goto/16 :goto_7d

    :cond_1ab
    const/4 v2, 0x0

    goto/16 :goto_a0

    :cond_1ae
    const/4 v9, 0x0

    goto/16 :goto_c4

    :catch_1b1
    move-exception v7

    const-string v15, "ShutdownThread"

    const-string v16, "RemoteException during NFC shutdown"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v9, 0x1

    goto/16 :goto_d1

    :cond_1be
    const/4 v4, 0x0

    goto/16 :goto_e8

    :catch_1c1
    move-exception v7

    const-string v15, "ShutdownThread"

    const-string v16, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v4, 0x1

    goto/16 :goto_e8

    :cond_1ce
    const/4 v12, 0x0

    goto/16 :goto_fa

    :catch_1d1
    move-exception v7

    const-string v15, "ShutdownThread"

    const-string v16, "RemoteException during radio shutdown"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v12, 0x1

    goto/16 :goto_fa

    :cond_1de
    const/4 v13, 0x0

    goto/16 :goto_10c

    :catch_1e1
    move-exception v7

    const-string v15, "ShutdownThread"

    const-string v16, "RemoteException during radio2 shutdown"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v13, 0x1

    goto/16 :goto_10c

    :cond_1ee
    const/4 v2, 0x0

    goto/16 :goto_150

    :cond_1f1
    const/4 v9, 0x0

    goto/16 :goto_15d

    :catch_1f4
    move-exception v7

    const-string v15, "ShutdownThread"

    const-string v16, "RemoteException during NFC shutdown"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v9, 0x1

    goto/16 :goto_15d

    :cond_201
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "RadioOff:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", BluetoothOff:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", NFC Off:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", WiFiOff:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, "ShutdownThread"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "ShutdownThread"

    const-string v16, "!@before sleep"

    invoke-static/range {v15 .. v16}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v15, 0x1f4

    :try_start_23f
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_242
    .catch Ljava/lang/InterruptedException; {:try_start_23f .. :try_end_242} :catch_2a7

    :goto_242
    const-string v15, "ShutdownThread"

    const-string v16, "!@after sleep"

    invoke-static/range {v15 .. v16}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "ShutdownThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "!@[Phone off retry:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "] : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/ShutdownThread$7;->val$endTime:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " radio="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " radio2="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " bluetooth="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " nfc="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d1

    :catch_2a7
    move-exception v6

    const-string v15, "ShutdownThread"

    const-string v16, "InterruptedException"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_242
.end method
