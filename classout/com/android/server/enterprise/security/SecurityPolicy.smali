.class public Lcom/android/server/enterprise/security/SecurityPolicy;
.super Landroid/app/enterprise/ISecurityPolicy$Stub;
.source "SecurityPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;
    }
.end annotation


# static fields
.field private static final DEVICE_LAST_BOOT_SAFE_MODE_ACTION:Ljava/lang/String; = "edm.intent.action.LAST_BOOT_SAFE_MODE"

.field private static final DOD_BANNER_PATH:Ljava/lang/String; = "com.samsung.android.mdm.DodBanner"

.field private static final DOD_BANNER_PKG:Ljava/lang/String; = "com.samsung.android.mdm"

.field private static final KEYCHAIN_RESET_TIMEOUT:I = 0xbb8

.field private static final MAX_DEPTH:I = 0x14

.field private static final TAG:Ljava/lang/String; = "SecurityPolicy"


# instance fields
.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mMediaFormatRet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Landroid/app/enterprise/ISecurityPolicy$Stub;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    new-instance v1, Lcom/android/server/enterprise/security/SecurityPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/security/SecurityPolicy$1;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-direct {v1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->saveDeviceBootMode(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/security/SecurityPolicy;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isLastBootInSafeMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/security/KeyStore;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method private static convertPemToX509([B)Ljava/security/cert/X509Certificate;
    .registers 9

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_2
    invoke-static {p0}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_17
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_5} :catch_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_5} :catch_29

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_47

    :cond_f
    const-string v5, "SecurityPolicy"

    const-string v6, "Could not convert one certificate."

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_16
    return-object v4

    :catch_17
    move-exception v1

    const-string v5, "SecurityPolicy"

    const-string v6, "Could not convert certificate."

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :catch_20
    move-exception v0

    const-string v5, "SecurityPolicy"

    const-string v6, "Could not convert certificate."

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :catch_29
    move-exception v2

    const-string v5, "SecurityPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not a certificate "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :cond_47
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    goto :goto_16
.end method

.method private static convertStoreTypeToUid(I)I
    .registers 3

    const/4 v0, -0x1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_6

    const/4 v0, -0x1

    :cond_5
    :goto_5
    return v0

    :cond_6
    const/4 v1, 0x1

    if-ne p0, v1, :cond_5

    const/16 v0, 0x3f2

    goto :goto_5
.end method

.method private enforceSecurityPermission()I
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private executeCommand(Ljava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission()I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_9
    new-instance v6, Ljava/lang/ProcessBuilder;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_6d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2f} :catch_92
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_2f} :catch_53

    const/4 v4, 0x0

    :goto_30
    :try_start_30
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4c

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_8c
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_39} :catch_3a
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_39} :catch_8f

    goto :goto_30

    :catch_3a
    move-exception v0

    move-object v2, v3

    :goto_3c
    :try_start_3c
    const-string v6, "SecurityPolicy"

    const-string v7, "executeCommand failed "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_6d

    if-eqz v2, :cond_4b

    :try_start_48
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_7d

    :cond_4b
    :goto_4b
    return-object v5

    :cond_4c
    if-eqz v3, :cond_51

    :try_start_4e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_83

    :cond_51
    :goto_51
    move-object v2, v3

    goto :goto_4b

    :catch_53
    move-exception v0

    :goto_54
    :try_start_54
    const-string v6, "SecurityPolicy"

    const-string v7, "executeCommand failed "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_54 .. :try_end_5e} :catchall_6d

    if-eqz v2, :cond_4b

    :try_start_60
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_4b

    :catch_64
    move-exception v0

    const-string v6, "SecurityPolicy"

    const-string v7, ""

    :goto_69
    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4b

    :catchall_6d
    move-exception v6

    :goto_6e
    if-eqz v2, :cond_73

    :try_start_70
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    :cond_73
    :goto_73
    throw v6

    :catch_74
    move-exception v0

    const-string v7, "SecurityPolicy"

    const-string v8, ""

    invoke-static {v7, v8, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_73

    :catch_7d
    move-exception v0

    const-string v6, "SecurityPolicy"

    const-string v7, ""

    goto :goto_69

    :catch_83
    move-exception v0

    const-string v6, "SecurityPolicy"

    const-string v7, ""

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_51

    :catchall_8c
    move-exception v6

    move-object v2, v3

    goto :goto_6e

    :catch_8f
    move-exception v0

    move-object v2, v3

    goto :goto_54

    :catch_92
    move-exception v0

    goto :goto_3c
.end method

.method private formatExternalStorageCard()Z
    .registers 10

    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    const/4 v1, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v6, :cond_20

    array-length v7, v6

    const/4 v8, 0x2

    if-lt v7, v8, :cond_20

    const-string v7, "storage_volume"

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_20
    const-string v7, "edm"

    const-string v8, "true"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v7, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lcom/android/server/enterprise/security/SecurityPolicy$2;

    invoke-direct {v4, p0, v6, v3}, Lcom/android/server/enterprise/security/SecurityPolicy$2;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;[Landroid/os/storage/StorageVolume;Ljava/lang/Object;)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "file"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    monitor-enter v3
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_50} :catch_6a

    const-wide/16 v7, 0x1b58

    :try_start_52
    invoke-virtual {v3, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_67
    .catch Ljava/lang/InterruptedException; {:try_start_52 .. :try_end_55} :catch_5e

    :goto_55
    :try_start_55
    monitor-exit v3
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_67

    :try_start_56
    iget-object v7, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5b} :catch_6a

    :goto_5b
    iget-boolean v7, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    return v7

    :catch_5e
    move-exception v0

    :try_start_5f
    const-string v7, "SecurityPolicy"

    const-string v8, "formatStorageCard - InterruptedException"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    :catchall_67
    move-exception v7

    monitor-exit v3
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_67

    :try_start_69
    throw v7
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6a} :catch_6a

    :catch_6a
    move-exception v0

    const-string v7, "SecurityPolicy"

    const-string v8, "formatStorageCard fail"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b
.end method

.method private getAndroidInstalledCertificates()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->userAliases()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v6, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_f

    new-instance v2, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v2}, Landroid/app/enterprise/CertificateInfo;-><init>()V

    invoke-virtual {v2, v1}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_31
    return-object v4
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getNativeInstalledCertificate(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;
    .registers 10

    new-instance v1, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v1}, Landroid/app/enterprise/CertificateInfo;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlocked()Z

    move-result v5

    if-nez v5, :cond_13

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return-object v1

    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_39

    invoke-static {v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->convertPemToX509([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v1, v0}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    :cond_39
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_12
.end method

.method private getNativeInstalledCertificateNames(Ljava/lang/String;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlocked()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->convertStoreTypeToUid(I)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1e
    if-eqz v0, :cond_25

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :goto_24
    return-object v3

    :cond_25
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_24
.end method

.method private getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlocked()Z

    move-result v11

    if-eqz v11, :cond_4f

    iget-object v11, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->convertStoreTypeToUid(I)I

    move-result v12

    invoke-virtual {v11, p1, v12}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4f

    move-object v0, v6

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v4, :cond_4f

    aget-object v5, v0, v3

    iget-object v11, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v7

    if-eqz v7, :cond_4c

    invoke-static {v7}, Lcom/android/server/enterprise/security/SecurityPolicy;->convertPemToX509([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-eqz v1, :cond_4c

    new-instance v2, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v2}, Landroid/app/enterprise/CertificateInfo;-><init>()V

    invoke-virtual {v2, v1}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_4f
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v8
.end method

.method private getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-object v1

    :cond_4
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_10

    move-result v2

    if-lez v2, :cond_3

    move-object v1, p1

    goto :goto_3

    :catch_10
    move-exception v0

    const-string v2, "SecurityPolicy"

    const-string v3, "is string valid?"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private isLastBootInSafeMode()Z
    .registers 4

    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "deviceBootMode"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private isNativeKeyStoreUnlocked()Z
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v2

    sget-object v3, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;
    :try_end_9
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_9} :catch_d

    if-ne v2, v3, :cond_c

    const/4 v1, 0x1

    :cond_c
    :goto_c
    return v1

    :catch_d
    move-exception v0

    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keystore State Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_c
.end method

.method private listRecursively(Ljava/io/File;ILjava/io/PrintWriter;)V
    .registers 12

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_8b

    const/16 v6, 0x14

    if-ge p2, v6, :cond_8b

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_8b

    :try_start_10
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8b

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/proc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8b

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/sys"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/security/SecurityPolicy;->getFileNamesWithAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_8b

    move-object v0, v5

    array-length v4, v0

    const/4 v3, 0x0

    :goto_77
    if-ge v3, v4, :cond_8b

    aget-object v2, v0, v3

    add-int/lit8 v6, p2, 0x1

    invoke-direct {p0, v2, v6, p3}, Lcom/android/server/enterprise/security/SecurityPolicy;->listRecursively(Ljava/io/File;ILjava/io/PrintWriter;)V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_80} :catch_83

    add-int/lit8 v3, v3, 0x1

    goto :goto_77

    :catch_83
    move-exception v1

    const-string v6, "SecurityPolicy"

    const-string v7, ""

    invoke-static {v6, v7, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8b
    return-void
.end method

.method private removeAndroidCertificate(Ljava/lang/String;)V
    .registers 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_4
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;->deleteCertificateEntry(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_b} :catch_f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_29

    :goto_b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_f
    move-exception v0

    const-string v3, "SecurityPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeAndroidCertificate"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :catch_29
    move-exception v0

    const-string v3, "SecurityPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeAndroidCertificate"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method private removeDuplicatedCertificates(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2a

    add-int/lit8 v1, v0, 0x1

    :goto_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/CertificateInfo;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/enterprise/CertificateInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2a
    return-void
.end method

.method private removeNativeCertificate(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 10

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlocked()Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3}, Lcom/android/server/enterprise/security/SecurityPolicy;->convertStoreTypeToUid(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v0

    :cond_26
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0
.end method

.method private saveDeviceBootMode(Z)Z
    .registers 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x1

    :try_start_3
    iget-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "deviceBootMode"

    if-eqz p1, :cond_31

    move v4, v2

    :goto_a
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Device safe mode saved in generic table : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_33

    :goto_21
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_30} :catch_35

    :goto_30
    return v1

    :cond_31
    move v4, v3

    goto :goto_a

    :cond_33
    move v2, v3

    goto :goto_21

    :catch_35
    move-exception v0

    const/4 v1, 0x0

    goto :goto_30
.end method


# virtual methods
.method public changeCredentialStoragePassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission()I

    const/4 v0, 0x0

    return v0
.end method

.method public clearInstalledCertificates()Z
    .registers 10

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission()I

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_8
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlocked()Z

    move-result v6

    if-eqz v6, :cond_36

    new-instance v6, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;Lcom/android/server/enterprise/security/SecurityPolicy$1;)V

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    const-wide/16 v6, 0xbb8

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7, v8}, Landroid/os/AsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v6

    sget-object v7, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v6, v7}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_32} :catch_3a

    move-result v6

    if-eqz v6, :cond_36

    move v1, v3

    :cond_36
    :goto_36
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catch_3a
    move-exception v0

    const-string v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clearInstalledCertificates: EX"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_36
.end method

.method public enableRebootBanner(Z)Z
    .registers 8

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission()I

    move-result v0

    :try_start_5
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "SECURITY"

    const-string v5, "deviceEnrolled"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_f

    :goto_e
    return v2

    :catch_f
    move-exception v1

    const/4 v2, 0x0

    goto :goto_e
.end method

.method public formatInternalStorage(ZZ)Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission()I

    const/4 v0, 0x1

    return v0
.end method

.method public formatSelective([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public formatStorageCard(Z)Z
    .registers 8

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission()I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    if-ne p1, v4, :cond_16

    :try_start_d
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->formatExternalStorageCard()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_26

    :goto_10
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-boolean v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    return v3

    :cond_16
    :try_start_16
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_25} :catch_26

    goto :goto_10

    :catch_26
    move-exception v0

    const-string v3, "SecurityPolicy"

    const-string v4, "formatStorageCard fail"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public getDeviceLastAccessDate()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "deviceLastAccessDate"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileNamesOnDevice(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission()I

    if-eqz p1, :cond_16

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_16

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_15
    return-object v2

    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "/system/bin/ls"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_33

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "@"

    const-string v3, "\\@"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_33
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->executeCommand(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_15
.end method

.method public getFileNamesWithAttributes(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission()I

    if-eqz p1, :cond_16

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_16

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_15
    return-object v2

    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "/system/bin/ls"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "-l"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "-a"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3d

    const-string v2, "@"

    const-string v3, "\\@"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3d
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->executeCommand(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_15
.end method

.method public getFileNamesWithAttributesRecursive(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission()I

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_12
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1b

    :cond_1a
    :goto_1a
    return v9

    :cond_1b
    if-eqz p1, :cond_28

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_1a

    :cond_28
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_2f
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_66
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_34} :catch_51

    :try_start_34
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_84
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_39} :catch_8b

    :try_start_39
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_45

    if-eqz v7, :cond_45

    const/4 v10, 0x0

    invoke-direct {p0, v7, v10, v6}, Lcom/android/server/enterprise/security/SecurityPolicy;->listRecursively(Ljava/io/File;ILjava/io/PrintWriter;)V
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_87
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_45} :catch_8e

    :cond_45
    if-eqz v6, :cond_4a

    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    :cond_4a
    if-eqz v1, :cond_4f

    :try_start_4c
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_7b

    :cond_4f
    :goto_4f
    const/4 v9, 0x1

    goto :goto_1a

    :catch_51
    move-exception v4

    :goto_52
    if-eqz v5, :cond_57

    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    :cond_57
    if-eqz v0, :cond_1a

    :try_start_59
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_1a

    :catch_5d
    move-exception v2

    const-string v10, "SecurityPolicy"

    const-string v11, "Error closing cursor"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :catchall_66
    move-exception v9

    :goto_67
    if-eqz v5, :cond_6c

    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    :cond_6c
    if-eqz v0, :cond_71

    :try_start_6e
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_72

    :cond_71
    :goto_71
    throw v9

    :catch_72
    move-exception v2

    const-string v10, "SecurityPolicy"

    const-string v11, "Error closing cursor"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_71

    :catch_7b
    move-exception v2

    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    :catchall_84
    move-exception v9

    move-object v0, v1

    goto :goto_67

    :catchall_87
    move-exception v9

    move-object v0, v1

    move-object v5, v6

    goto :goto_67

    :catch_8b
    move-exception v4

    move-object v0, v1

    goto :goto_52

    :catch_8e
    move-exception v4

    move-object v0, v1

    move-object v5, v6

    goto :goto_52
.end method

.method public getInstalledCertificate(Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission()I

    const-string v1, "USRCERT_"

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificate(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v1

    if-nez v1, :cond_17

    const-string v1, "CACERT_"

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificate(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;

    move-result-object v0

    :cond_17
    return-object v0
.end method

.method public getInstalledCertificateNames(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission()I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificateNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificateNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getInstalledCertificates()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission()I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "USRCERT_"

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v1, "USRCERT_"

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v1, "CACERT_"

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v1, "CACERT_"

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getAndroidInstalledCertificates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->removeDuplicatedCertificates(Ljava/util/List;)V

    return-object v0
.end method

.method public getRequireDeviceEncryption(Landroid/content/ComponentName;)Z
    .registers 7

    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_SECURITY"

    const-string v4, "Security Policy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_18

    move-result v2

    :goto_17
    return v2

    :catch_18
    move-exception v1

    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRequireDeviceEncryption Ex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_17
.end method

.method public getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z
    .registers 7

    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_SECURITY"

    const-string v4, "Security Policy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_18

    move-result v2

    :goto_17
    return v2

    :catch_18
    move-exception v1

    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRequireStorageCardEncryption Ex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_17
.end method

.method public getSystemCertificates()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission()I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->allSystemAliases()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v3}, Landroid/app/enterprise/CertificateInfo;-><init>()V

    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v6, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_12

    invoke-virtual {v3, v2}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_34
    return-object v5
.end method

.method public installCertificate(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    .registers 12

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission()I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p4}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p1, :cond_18

    if-eqz p2, :cond_18

    array-length v5, p2

    if-eqz v5, :cond_18

    if-nez p3, :cond_21

    :cond_18
    const-string v5, "SecurityPolicy"

    const-string v6, "installCertificate : Invalid parameter(s)"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_20
    return v1

    :cond_21
    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_26
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlocked()Z

    move-result v5

    if-eqz v5, :cond_39

    new-instance v4, Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-direct {v4}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>()V

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/android/server/enterprise/utils/CertificateUtil;->install(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_34} :catch_42

    move-result v1

    :goto_35
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_20

    :cond_39
    :try_start_39
    const-string v5, "SecurityPolicy"

    const-string v6, "installCertificate : KS not UNLOCKED"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_40} :catch_42

    const/4 v1, 0x0

    goto :goto_35

    :catch_42
    move-exception v0

    const-string v5, "SecurityPolicy"

    const-string v6, "installCertificate EX: "

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35
.end method

.method public installCertificateWithType(Ljava/lang/String;[B)V
    .registers 10

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission()I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_29

    if-eqz p2, :cond_29

    array-length v4, p2

    if-lez v4, :cond_29

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_12
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.credentials.INSTALL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_48
    .catch Landroid/content/ActivityNotFoundException; {:try_start_12 .. :try_end_26} :catch_2a

    :goto_26
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_29
    return-void

    :catch_2a
    move-exception v0

    :try_start_2b
    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "::installCertificateWithType() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_2b .. :try_end_47} :catchall_48

    goto :goto_26

    :catchall_48
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public installCertificatesFromSdCard()V
    .registers 8

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission()I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_7
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.credentials.INSTALL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_3a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_18} :catch_1c

    :goto_18
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_1c
    move-exception v0

    :try_start_1d
    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "::installCertificatesFromSdCard() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_1d .. :try_end_39} :catchall_3a

    goto :goto_18

    :catchall_3a
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public installKeyPair(Ljava/security/KeyPair;)V
    .registers 2

    return-void
.end method

.method public isDodBannerVisible()Z
    .registers 4

    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "dodBannerVisible"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public isExternalStorageEncrypted()Z
    .registers 8

    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_SECURITY"

    const-string v6, "Security Policy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_d
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->isStorageCardEncrypted()Z
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_28
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_1b

    move-result v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1a
    return v4

    :catch_1b
    move-exception v0

    :try_start_1c
    const-string v4, "SecurityPolicy"

    const-string v5, "is External Storage Encrypted ?"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_28

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v4, 0x0

    goto :goto_1a

    :catchall_28
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isInternalStorageEncrypted()Z
    .registers 9

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.sec.MDM_SECURITY"

    const-string v7, "Security Policy"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_e
    iget-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_2d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1b} :catch_24

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_20

    const/4 v4, 0x1

    :cond_20
    :goto_20
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catch_24
    move-exception v1

    :try_start_25
    const-string v5, "SecurityPolicy"

    const-string v6, "is Internal Storage Encrypted ?"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2d

    goto :goto_20

    :catchall_2d
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isRebootBannerEnabled()Z
    .registers 8

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "SECURITY"

    const-string v6, "deviceEnrolled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_f

    move v1, v2

    :cond_23
    return v1
.end method

.method public lockoutDevice(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission()I

    iget-object v7, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_d
    const-string v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    const/4 v7, 0x2

    invoke-static {v4, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v7, "lock_pcw_password"

    invoke-static {v1, v7, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz p2, :cond_2c

    const-string v7, "lock_pcw_Message"

    invoke-static {v1, v7, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2c
    if-eqz p3, :cond_40

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_40

    const-string v8, "lock_pcw_phone"

    const/4 v7, 0x0

    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v1, v8, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_40
    const-string v7, "lock_pcw_enabled"

    const-string v8, "20"

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v7, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Landroid/os/PowerManager;->goToSleep(J)V
    :try_end_58
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_58} :catch_5c

    :goto_58
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_5c
    move-exception v2

    const-string v7, "SecurityPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NoSuchAlgorithmException is thrown when trying to lock out the device"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58
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
    .registers 2

    return-void
.end method

.method public powerOffDevice()V
    .registers 5

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission()I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const-string v2, "SecurityPolicy"

    const-string v3, "powerOffDevice():EDM power off device start..."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->systemShutdown(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public readFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .registers 14

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission()I

    if-nez p2, :cond_7

    :cond_6
    :goto_6
    return v8

    :cond_7
    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_9
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_5e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_13} :catch_95

    :try_start_13
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_8e
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1c} :catch_97

    const/16 v9, 0x800

    :try_start_1e
    new-array v0, v9, [B

    :goto_20
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_49

    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_91
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2a} :catch_2b

    goto :goto_20

    :catch_2b
    move-exception v1

    move-object v4, v5

    move-object v2, v3

    :goto_2e
    :try_start_2e
    const-string v9, "SecurityPolicy"

    const-string v10, "readFile IOException "

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_5e

    if-eqz v2, :cond_3a

    :try_start_37
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_7c

    :cond_3a
    :goto_3a
    if-eqz v4, :cond_6

    :try_start_3c
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_6

    :catch_40
    move-exception v1

    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    :goto_45
    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_49
    :try_start_49
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_91
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_2b

    const/4 v8, 0x1

    if-eqz v3, :cond_52

    :try_start_4f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_85

    :cond_52
    :goto_52
    if-eqz v5, :cond_6

    :try_start_54
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_6

    :catch_58
    move-exception v1

    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    goto :goto_45

    :catchall_5e
    move-exception v8

    :goto_5f
    if-eqz v2, :cond_64

    :try_start_61
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_6a

    :cond_64
    :goto_64
    if-eqz v4, :cond_69

    :try_start_66
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_73

    :cond_69
    :goto_69
    throw v8

    :catch_6a
    move-exception v1

    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64

    :catch_73
    move-exception v1

    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69

    :catch_7c
    move-exception v1

    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    :catch_85
    move-exception v1

    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    :catchall_8e
    move-exception v8

    move-object v2, v3

    goto :goto_5f

    :catchall_91
    move-exception v8

    move-object v4, v5

    move-object v2, v3

    goto :goto_5f

    :catch_95
    move-exception v1

    goto :goto_2e

    :catch_97
    move-exception v1

    move-object v2, v3

    goto :goto_2e
.end method

.method public removeAccountsByType(Ljava/lang/String;)Z
    .registers 14

    if-nez p1, :cond_4

    const/4 v7, 0x0

    :goto_3
    return v7

    :cond_4
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission()I

    const/4 v7, 0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_c
    iget-object v10, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_2f

    array-length v10, v0

    if-lez v10, :cond_2f

    move-object v2, v0

    array-length v6, v2

    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v6, :cond_2f

    aget-object v5, v2, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1, v5, v10, v11}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_27} :catch_2a

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :catch_2a
    move-exception v3

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2f
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3
.end method

.method public removeCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission()I

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificate(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;

    move-result-object v1

    const/4 v3, 0x2

    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->removeNativeCertificate(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_17

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->removeNativeCertificate(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_17

    const/4 v2, 0x0

    :cond_17
    if-eqz v2, :cond_28

    if-eqz v1, :cond_28

    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v1}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->removeAndroidCertificate(Ljava/lang/String;)V

    :cond_28
    return v2
.end method

.method public removeDeviceLockout()V
    .registers 6

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission()I

    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const-string v3, "lock_pcw_password"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, "lock_pcw_Message"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, "lock_pcw_phone"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, "lock_pcw_enabled"

    const-string v4, "0"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public resetCredentialStorage()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->clearInstalledCertificates()Z

    move-result v0

    return v0
.end method

.method public setCredentialStoragePassword(Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission()I

    const/4 v0, 0x0

    return v0
.end method

.method public setDeviceLastAccessDate(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "deviceLastAccessDate"

    invoke-virtual {v2, v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_9

    :goto_8
    return v1

    :catch_9
    move-exception v0

    const/4 v1, 0x0

    goto :goto_8
.end method

.method public setDodBannerVisibleStatus(Z)Z
    .registers 7

    const/4 v1, 0x1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "dodBannerVisible"

    if-eqz p1, :cond_10

    const/4 v2, 0x1

    :goto_8
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_12

    :goto_f
    return v1

    :cond_10
    const/4 v2, 0x0

    goto :goto_8

    :catch_12
    move-exception v0

    const/4 v1, 0x0

    goto :goto_f
.end method

.method public setExternalStorageEncryption(Z)V
    .registers 9

    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_SECURITY"

    const-string v6, "Misc Policy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_d
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->isEncryptionFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_28

    if-nez p1, :cond_2c

    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->getRequireStorageCardEncryption()Z

    move-result v4

    if-eqz v4, :cond_2c

    const-string v4, "SecurityPolicy"

    const-string v5, "SD Encryption enabled by some other admin cannot decrypt"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_3c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_28} :catch_33

    :cond_28
    :goto_28
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_2c
    const/4 v4, 0x1

    if-ne p1, v4, :cond_41

    :try_start_2f
    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->enableStorageCardEncryptionPolicy()I
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3c
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_28

    :catch_33
    move-exception v0

    :try_start_34
    const-string v4, "SecurityPolicy"

    const-string v5, "is External Storage Encrypted?"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_3c

    goto :goto_28

    :catchall_3c
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_41
    :try_start_41
    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->disableStorageCardEncryptionPolicy()I
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_3c
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_33

    goto :goto_28
.end method

.method public setInternalStorageEncryption(Z)V
    .registers 10

    iget-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.sec.MDM_SECURITY"

    const-string v7, "Security Policy"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_d
    iget-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-nez p1, :cond_2b

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_2b

    const-string v5, "SecurityPolicy"

    const-string v6, "SD Encryption enabled by some other admin cannot decrypt"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_44
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_27} :catch_3b

    :cond_27
    :goto_27
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_2b
    if-nez p1, :cond_49

    :try_start_2d
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isInternalStorageEncrypted()Z

    move-result v5

    if-nez v5, :cond_49

    const-string v5, "SecurityPolicy"

    const-string v6, "setInternalStorageEncryption : Not encrypted"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_44
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3a} :catch_3b

    goto :goto_27

    :catch_3b
    move-exception v1

    :try_start_3c
    const-string v5, "SecurityPolicy"

    const-string v6, "is Internal Storage Encrypted?"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_44

    goto :goto_27

    :catchall_44
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_49
    if-eqz p1, :cond_59

    :try_start_4b
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isInternalStorageEncrypted()Z

    move-result v5

    if-eqz v5, :cond_59

    const-string v5, "SecurityPolicy"

    const-string v6, "setInternalStorageEncryption : device is already encrypted"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    :cond_59
    const-string v5, "SecurityPolicy"

    const-string v6, "setInternalStorageEncryption : Launching Encrption activity"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_27

    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.app.action.START_ENCRYPTION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_73
    .catchall {:try_start_4b .. :try_end_73} :catchall_44
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_73} :catch_3b

    goto :goto_27
.end method

.method public setRequireDeviceEncryption(Landroid/content/ComponentName;Z)V
    .registers 8

    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_SECURITY"

    const-string v4, "Security Policy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;Z)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v1

    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRequireDeviceEncryption Ex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method

.method public setRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V
    .registers 8

    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_SECURITY"

    const-string v4, "Security Policy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v1

    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRequireStorageCardEncryption Ex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method

.method public unlockCredentialStorage(Ljava/lang/String;)Z
    .registers 10

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission()I

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_8
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.credentials.UNLOCK"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_1e

    const/4 v2, 0x1

    :goto_1a
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catch_1e
    move-exception v0

    const-string v5, "SecurityPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unlockCredentialStorage EX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method
