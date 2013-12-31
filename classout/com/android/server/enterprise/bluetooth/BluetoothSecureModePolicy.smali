.class public Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;
.super Landroid/app/enterprise/IBluetoothSecureModePolicy$Stub;
.source "BluetoothSecureModePolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "BTSecureModePolicyService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mSecureManager:Landroid/bluetooth/BluetoothSecureManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Landroid/app/enterprise/IBluetoothSecureModePolicy$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method

.method private enforceBluetoothSecureModePermission()I
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_BLUETOOTH_SECUREMODE"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getInstance()Landroid/bluetooth/BluetoothSecureManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    if-nez v0, :cond_a

    invoke-static {}, Landroid/bluetooth/BluetoothSecureManager;->getInstant()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    :cond_a
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    return-object v0
.end method

.method private validateBluetoothWhiteListConfig(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_9
    const-string v3, "BTSecureModePolicyService"

    const-string v4, "Bluetooth securemode whitelist is null or empty"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_10
    return v2

    :cond_11
    const/4 v1, 0x0

    :goto_12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3a

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;

    iget-object v3, v0, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;->name:Ljava/lang/String;

    if-eqz v3, :cond_2f

    iget v3, v0, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;->cod:I

    if-ltz v3, :cond_2f

    iget-object v3, v0, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;->uuids:[Ljava/lang/String;

    if-eqz v3, :cond_2f

    iget-object v3, v0, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;->uuids:[Ljava/lang/String;

    array-length v3, v3

    if-gtz v3, :cond_37

    :cond_2f
    const-string v3, "BTSecureModePolicyService"

    const-string v4, "Bluetooth securemode whitelist values are invalid"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_3a
    const/4 v2, 0x1

    goto :goto_10
.end method


# virtual methods
.method public addBluetoothDevicesToWhiteList(Ljava/util/List;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->enforceBluetoothSecureModePermission()I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->validateBluetoothWhiteListConfig(Ljava/util/List;)Z

    move-result v9

    if-nez v9, :cond_c

    const/4 v9, 0x0

    :goto_b
    return v9

    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v9

    if-eqz v9, :cond_59

    if-eqz p1, :cond_56

    const/4 v3, 0x0

    :goto_19
    :try_start_19
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_56

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;

    iget-object v4, v1, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;->name:Ljava/lang/String;

    iget v0, v1, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;->cod:I

    iget-object v8, v1, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;->uuids:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v9, v4, v0, v8}, Landroid/bluetooth/BluetoothSecureManager;->addWhiteList(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5b

    const-string v9, "BTSecureModePolicyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addBluetoothDevicesToWhiteList failed: name:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "cod: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_19 .. :try_end_55} :catchall_68
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_55} :catch_5e

    const/4 v5, 0x0

    :cond_56
    :goto_56
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_59
    move v9, v5

    goto :goto_b

    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :catch_5e
    move-exception v2

    :try_start_5f
    const-string v9, "BTSecureModePolicyService"

    const-string v10, "Failed talking to BT Secure Manager "

    invoke-static {v9, v10, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_68

    const/4 v5, 0x0

    goto :goto_56

    :catchall_68
    move-exception v9

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
.end method

.method public disableSecureMode()Z
    .registers 12

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->enforceBluetoothSecureModePermission()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v7

    if-eqz v7, :cond_a9

    :try_start_f
    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "BluetoothSecureModeTable"

    const-string v9, "BluetoothSecureModeEnabled"

    const/4 v10, 0x0

    invoke-virtual {v7, v0, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v8, "scan_mode"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v8, "pairing_mode"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v8, "hfp_enable"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v8, "a2dp_enable"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v8, "hid_enable"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v8, "hdp_enable"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v8, "pan_enable"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v8, "opp_enable"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v8, "pbap_enable"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v8, "gatt_enable"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v8, "map_enable"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v8, "ftp_enable"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v8, "sap_enable"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothSecureManager;->enableWhiteList(Z)Z

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothSecureManager;->enableWhiteList(Z)Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getBluetoothDevicesFromWhiteList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_9f

    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->removeBluetoothDevicesFromWhiteList(Ljava/util/List;)Z

    :cond_9f
    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothSecureManager;->enableSecureMode(Z)Z
    :try_end_a5
    .catchall {:try_start_f .. :try_end_a5} :catchall_c8
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_a5} :catch_aa

    move-result v3

    :goto_a6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_a9
    return v3

    :catch_aa
    move-exception v2

    :try_start_ab
    const-string v7, "BTSecureModePolicyService"

    const-string v8, "Failed talking to BT Secure Manager "

    invoke-static {v7, v8, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b2
    .catchall {:try_start_ab .. :try_end_b2} :catchall_c8

    :try_start_b2
    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "BluetoothSecureModeTable"

    const-string v9, "BluetoothSecureModeEnabled"

    const/4 v10, 0x1

    invoke-virtual {v7, v0, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_c8
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_bc} :catch_bd

    goto :goto_a6

    :catch_bd
    move-exception v1

    :try_start_be
    const-string v7, "BTSecureModePolicyService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c7
    .catchall {:try_start_be .. :try_end_c7} :catchall_c8

    goto :goto_a6

    :catchall_c8
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public enableDeviceWhiteList(Z)Z
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->enforceBluetoothSecureModePermission()I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_8
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v4, p1}, Landroid/bluetooth/BluetoothSecureManager;->enableWhiteList(Z)Z
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_21
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_13} :catch_18

    move-result v1

    :cond_14
    :goto_14
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catch_18
    move-exception v0

    :try_start_19
    const-string v4, "BTSecureModePolicyService"

    const-string v5, "Failed talking to BT Secure Manager "

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_21

    goto :goto_14

    :catchall_21
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public enableSecureMode(Landroid/app/enterprise/BluetoothSecureModeConfig;Ljava/util/List;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/BluetoothSecureModeConfig;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;",
            ">;)Z"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->enforceBluetoothSecureModePermission()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v11

    if-eqz v11, :cond_130

    if-eqz p2, :cond_59

    :try_start_11
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_59

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->validateBluetoothWhiteListConfig(Ljava/util/List;)Z
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_171
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1c} :catch_153

    move-result v11

    if-nez v11, :cond_24

    const/4 v11, 0x0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_23
    return v11

    :cond_24
    const/4 v4, 0x0

    :goto_25
    :try_start_25
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_59

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_56

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;

    iget-object v5, v11, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;

    iget v2, v11, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;->cod:I

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;

    iget-object v10, v11, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;->uuids:[Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v11, v5, v2, v10}, Landroid/bluetooth/BluetoothSecureManager;->addWhiteList(Ljava/lang/String;I[Ljava/lang/String;)Z

    :cond_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_59
    move-object/from16 v0, p1

    iget-boolean v11, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->whitelistEnable:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_66

    iget-object v11, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/bluetooth/BluetoothSecureManager;->enableWhiteList(Z)Z

    :cond_66
    iget-object v11, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "BluetoothSecureModeTable"

    const-string v13, "BluetoothSecureModeEnabled"

    const/4 v14, 0x1

    invoke-virtual {v11, v1, v12, v13, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    iget-object v12, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v13, "scan_mode"

    move-object/from16 v0, p1

    iget-boolean v11, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->scanMode:Z

    if-eqz v11, :cond_133

    const/4 v11, 0x1

    :goto_7b
    invoke-virtual {v12, v13, v11}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v12, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v13, "pairing_mode"

    move-object/from16 v0, p1

    iget-boolean v11, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->pairingMode:Z

    if-eqz v11, :cond_136

    const/4 v11, 0x1

    :goto_89
    invoke-virtual {v12, v13, v11}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v12, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v13, "hfp_enable"

    move-object/from16 v0, p1

    iget-boolean v11, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->hfpEnable:Z

    if-eqz v11, :cond_139

    const/4 v11, 0x1

    :goto_97
    invoke-virtual {v12, v13, v11}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v12, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v13, "a2dp_enable"

    move-object/from16 v0, p1

    iget-boolean v11, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->a2dpEnable:Z

    if-eqz v11, :cond_13c

    const/4 v11, 0x1

    :goto_a5
    invoke-virtual {v12, v13, v11}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v12, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v13, "hid_enable"

    move-object/from16 v0, p1

    iget-boolean v11, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->hidEnable:Z

    if-eqz v11, :cond_13f

    const/4 v11, 0x1

    :goto_b3
    invoke-virtual {v12, v13, v11}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v12, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v13, "hdp_enable"

    move-object/from16 v0, p1

    iget-boolean v11, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->hdpEnable:Z

    if-eqz v11, :cond_142

    const/4 v11, 0x1

    :goto_c1
    invoke-virtual {v12, v13, v11}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v12, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v13, "pan_enable"

    move-object/from16 v0, p1

    iget-boolean v11, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->panEnable:Z

    if-eqz v11, :cond_145

    const/4 v11, 0x1

    :goto_cf
    invoke-virtual {v12, v13, v11}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v12, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v13, "opp_enable"

    move-object/from16 v0, p1

    iget-boolean v11, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->oppEnable:Z

    if-eqz v11, :cond_147

    const/4 v11, 0x1

    :goto_dd
    invoke-virtual {v12, v13, v11}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v12, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v13, "pbap_enable"

    move-object/from16 v0, p1

    iget-boolean v11, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->pbapEnable:Z

    if-eqz v11, :cond_149

    const/4 v11, 0x1

    :goto_eb
    invoke-virtual {v12, v13, v11}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v12, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v13, "gatt_enable"

    move-object/from16 v0, p1

    iget-boolean v11, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->gattEnable:Z

    if-eqz v11, :cond_14b

    const/4 v11, 0x1

    :goto_f9
    invoke-virtual {v12, v13, v11}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v12, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v13, "map_enable"

    move-object/from16 v0, p1

    iget-boolean v11, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->mapEnable:Z

    if-eqz v11, :cond_14d

    const/4 v11, 0x1

    :goto_107
    invoke-virtual {v12, v13, v11}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v12, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v13, "ftp_enable"

    move-object/from16 v0, p1

    iget-boolean v11, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->ftpEnable:Z

    if-eqz v11, :cond_14f

    const/4 v11, 0x1

    :goto_115
    invoke-virtual {v12, v13, v11}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v12, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v13, "sap_enable"

    move-object/from16 v0, p1

    iget-boolean v11, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->sapEnable:Z

    if-eqz v11, :cond_151

    const/4 v11, 0x1

    :goto_123
    invoke-virtual {v12, v13, v11}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    iget-object v11, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/bluetooth/BluetoothSecureManager;->enableSecureMode(Z)Z
    :try_end_12c
    .catchall {:try_start_25 .. :try_end_12c} :catchall_171
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_12c} :catch_153

    move-result v7

    :goto_12d
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_130
    move v11, v7

    goto/16 :goto_23

    :cond_133
    const/4 v11, 0x0

    goto/16 :goto_7b

    :cond_136
    const/4 v11, 0x0

    goto/16 :goto_89

    :cond_139
    const/4 v11, 0x0

    goto/16 :goto_97

    :cond_13c
    const/4 v11, 0x0

    goto/16 :goto_a5

    :cond_13f
    const/4 v11, 0x0

    goto/16 :goto_b3

    :cond_142
    const/4 v11, 0x0

    goto/16 :goto_c1

    :cond_145
    const/4 v11, 0x0

    goto :goto_cf

    :cond_147
    const/4 v11, 0x0

    goto :goto_dd

    :cond_149
    const/4 v11, 0x0

    goto :goto_eb

    :cond_14b
    const/4 v11, 0x0

    goto :goto_f9

    :cond_14d
    const/4 v11, 0x0

    goto :goto_107

    :cond_14f
    const/4 v11, 0x0

    goto :goto_115

    :cond_151
    const/4 v11, 0x0

    goto :goto_123

    :catch_153
    move-exception v6

    :try_start_154
    const-string v11, "BTSecureModePolicyService"

    const-string v12, "Failed talking to BT Secure Manager "

    invoke-static {v11, v12, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_15b
    .catchall {:try_start_154 .. :try_end_15b} :catchall_171

    :try_start_15b
    iget-object v11, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "BluetoothSecureModeTable"

    const-string v13, "BluetoothSecureModeEnabled"

    const/4 v14, 0x0

    invoke-virtual {v11, v1, v12, v13, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_165
    .catchall {:try_start_15b .. :try_end_165} :catchall_171
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_165} :catch_166

    goto :goto_12d

    :catch_166
    move-exception v3

    :try_start_167
    const-string v11, "BTSecureModePolicyService"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_170
    .catchall {:try_start_167 .. :try_end_170} :catchall_171

    goto :goto_12d

    :catchall_171
    move-exception v11

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11
.end method

.method public getBluetoothDevicesFromWhiteList()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v7

    if-eqz v7, :cond_41

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothSecureManager;->getWhiteListFirstIndex()I

    move-result v2

    const/4 v6, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_12
    if-ltz v2, :cond_42

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v7, v2}, Landroid/bluetooth/BluetoothSecureManager;->getWhiteListName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v7, v2}, Landroid/bluetooth/BluetoothSecureManager;->getWhiteListCod(I)I

    move-result v0

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v7, v2}, Landroid/bluetooth/BluetoothSecureManager;->getWhiteListUuids(I)[Ljava/lang/String;

    move-result-object v4

    new-instance v7, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;

    invoke-direct {v7, v3, v0, v4}, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v7, v2}, Landroid/bluetooth/BluetoothSecureManager;->getWhiteListNextIndex(I)I
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_35} :catch_37

    move-result v2

    goto :goto_12

    :catch_37
    move-exception v1

    const-string v7, "BTSecureModePolicyService"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    const/4 v5, 0x0

    :cond_42
    return-object v5
.end method

.method public getSecureModeConfiguration()Landroid/app/enterprise/BluetoothSecureModeConfig;
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Landroid/app/enterprise/BluetoothSecureModeConfig;

    invoke-direct {v0}, Landroid/app/enterprise/BluetoothSecureModeConfig;-><init>()V

    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v4

    if-eqz v4, :cond_ea

    :try_start_d
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v5, "scan_mode"

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_c1

    move v4, v2

    :goto_18
    iput-boolean v4, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->scanMode:Z

    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v5, "pairing_mode"

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_c4

    move v4, v2

    :goto_25
    iput-boolean v4, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->pairingMode:Z

    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v5, "hfp_enable"

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_c7

    move v4, v2

    :goto_32
    iput-boolean v4, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->hfpEnable:Z

    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v5, "a2dp_enable"

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_ca

    move v4, v2

    :goto_3f
    iput-boolean v4, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->a2dpEnable:Z

    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v5, "hid_enable"

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_cd

    move v4, v2

    :goto_4c
    iput-boolean v4, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->hidEnable:Z

    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v5, "hdp_enable"

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_d0

    move v4, v2

    :goto_59
    iput-boolean v4, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->hdpEnable:Z

    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v5, "pan_enable"

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_d2

    move v4, v2

    :goto_66
    iput-boolean v4, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->panEnable:Z

    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v5, "opp_enable"

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_d4

    move v4, v2

    :goto_73
    iput-boolean v4, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->oppEnable:Z

    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v5, "pbap_enable"

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_d6

    move v4, v2

    :goto_80
    iput-boolean v4, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->pbapEnable:Z

    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v5, "gatt_enable"

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_d8

    move v4, v2

    :goto_8d
    iput-boolean v4, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->gattEnable:Z

    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v5, "map_enable"

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_da

    move v4, v2

    :goto_9a
    iput-boolean v4, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->mapEnable:Z

    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v5, "ftp_enable"

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_dc

    move v4, v2

    :goto_a7
    iput-boolean v4, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->ftpEnable:Z

    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v5, "sap_enable"

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_de

    move v4, v2

    :goto_b4
    iput-boolean v4, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->sapEnable:Z

    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothSecureManager;->isWhiteListEnabled()Z

    move-result v4

    if-ne v4, v2, :cond_e0

    :goto_be
    iput-boolean v2, v0, Landroid/app/enterprise/BluetoothSecureModeConfig;->whitelistEnable:Z
    :try_end_c0
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_c0} :catch_e2

    :goto_c0
    return-object v0

    :cond_c1
    move v4, v3

    goto/16 :goto_18

    :cond_c4
    move v4, v3

    goto/16 :goto_25

    :cond_c7
    move v4, v3

    goto/16 :goto_32

    :cond_ca
    move v4, v3

    goto/16 :goto_3f

    :cond_cd
    move v4, v3

    goto/16 :goto_4c

    :cond_d0
    move v4, v3

    goto :goto_59

    :cond_d2
    move v4, v3

    goto :goto_66

    :cond_d4
    move v4, v3

    goto :goto_73

    :cond_d6
    move v4, v3

    goto :goto_80

    :cond_d8
    move v4, v3

    goto :goto_8d

    :cond_da
    move v4, v3

    goto :goto_9a

    :cond_dc
    move v4, v3

    goto :goto_a7

    :cond_de
    move v4, v3

    goto :goto_b4

    :cond_e0
    move v2, v3

    goto :goto_be

    :catch_e2
    move-exception v1

    const-string v2, "BTSecureModePolicyService"

    const-string v3, "Failed talking to BT Secure Manager "

    invoke-static {v2, v3, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_ea
    const/4 v0, 0x0

    goto :goto_c0
.end method

.method public isDeviceWhiteListEnabled()Z
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSecureManager;->isWhiteListEnabled()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    :goto_c
    return v1

    :catch_d
    move-exception v0

    const-string v1, "BTSecureModePolicyService"

    const-string v2, "Failed talking to BT Secure Manager "

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public isSecureModeEnabled()Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v1

    if-eqz v1, :cond_15

    :try_start_6
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSecureManager;->isSecureModeEnabled()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    :goto_c
    return v1

    :catch_d
    move-exception v0

    const-string v1, "BTSecureModePolicyService"

    const-string v2, "Failed talking to BT Secure Manager "

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->isSecureModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->disableSecureMode()Z

    :cond_d
    return-void
.end method

.method public removeBluetoothDevicesFromWhiteList(Ljava/util/List;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->enforceBluetoothSecureModePermission()I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->validateBluetoothWhiteListConfig(Ljava/util/List;)Z

    move-result v8

    if-nez v8, :cond_c

    const/4 v8, 0x0

    :goto_b
    return v8

    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v8

    if-eqz v8, :cond_57

    if-eqz p1, :cond_54

    const/4 v3, 0x0

    :goto_19
    :try_start_19
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_54

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;

    iget-object v4, v1, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;->name:Ljava/lang/String;

    iget v0, v1, Landroid/app/enterprise/BluetoothSecureModeWhitelistConfig;->cod:I

    iget-object v8, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v8, v4, v0}, Landroid/bluetooth/BluetoothSecureManager;->removeWhiteList(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_59

    const-string v8, "BTSecureModePolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removeWhiteList failed: name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "cod: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_19 .. :try_end_53} :catchall_66
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_53} :catch_5c

    const/4 v5, 0x0

    :cond_54
    :goto_54
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_57
    move v8, v5

    goto :goto_b

    :cond_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :catch_5c
    move-exception v2

    :try_start_5d
    const-string v8, "BTSecureModePolicyService"

    const-string v9, "Failed talking to BT Secure Manager"

    invoke-static {v8, v9, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_66

    const/4 v5, 0x0

    goto :goto_54

    :catchall_66
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method
