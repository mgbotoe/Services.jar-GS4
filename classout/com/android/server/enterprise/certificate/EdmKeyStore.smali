.class Lcom/android/server/enterprise/certificate/EdmKeyStore;
.super Ljava/lang/Object;
.source "EdmKeyStore.java"


# static fields
.field private static final NATIVE_KEYSTORE_PATH:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "EdmKeyStore"

.field private static final TRUSTED_KEYSTORE_PATH:Ljava/lang/String; = null

.field static final TYPE_NATIVE:I = 0x2

.field static final TYPE_TRUSTED:I = 0x0

.field static final TYPE_UNTRUSTED:I = 0x3

.field static final TYPE_USER:I = 0x1

.field private static final UNTRUSTED_KEYSTORE_PATH:Ljava/lang/String;

.field private static final USER_KEYSTORE_PATH:Ljava/lang/String;

.field private static mInstanceNative:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private static mInstanceTrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private static mInstanceUntrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private static mInstanceUser:Lcom/android/server/enterprise/certificate/EdmKeyStore;


# instance fields
.field private mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

.field private mKeyStore:Ljava/security/KeyStore;

.field private mKeyStoreLock:Ljava/lang/Object;

.field private mPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "enterprise_cacerts.bks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->TRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "enterprise_untrustedcerts.bks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->UNTRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "enterprise_usercerts.bks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->USER_KEYSTORE_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "enterprise_nativecerts.bks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->NATIVE_KEYSTORE_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Ljava/lang/Object;

    invoke-direct/range {v6 .. v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStoreLock:Ljava/lang/Object;

    new-instance v6, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-direct {v6}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;-><init>()V

    iput-object v6, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mPath:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_18
    const-string v6, "BKS"

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_63

    :try_start_20
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_5c
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_36

    :try_start_25
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    const/4 v8, 0x0

    invoke-virtual {v6, v3, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_8e
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2b} :catch_98

    if-eqz v4, :cond_2e

    :try_start_2d
    throw v4
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_8b
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2e} :catch_82

    :cond_2e
    :goto_2e
    move-object v2, v3

    :goto_2f
    if-eqz v2, :cond_34

    :try_start_31
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_34
    monitor-exit v7
    :try_end_35
    .catchall {:try_start_31 .. :try_end_35} :catchall_6a

    return-void

    :catch_36
    move-exception v0

    move-object v3, v2

    :goto_38
    :try_start_38
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_8e

    :try_start_44
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_44 .. :try_end_4f} :catchall_91

    :try_start_4f
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    const/4 v8, 0x0

    invoke-virtual {v6, v2, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_95

    if-eqz v5, :cond_5a

    :try_start_57
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_7f
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_76

    :cond_5a
    :goto_5a
    move-object v4, v5

    goto :goto_2f

    :catchall_5c
    move-exception v6

    :goto_5d
    if-eqz v4, :cond_62

    :try_start_5f
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_63
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_6d

    :cond_62
    :goto_62
    :try_start_62
    throw v6
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_63

    :catchall_63
    move-exception v6

    :goto_64
    if-eqz v2, :cond_69

    :try_start_66
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_69
    throw v6

    :catchall_6a
    move-exception v6

    monitor-exit v7
    :try_end_6c
    .catchall {:try_start_66 .. :try_end_6c} :catchall_6a

    throw v6

    :catch_6d
    move-exception v1

    :try_start_6e
    const-string v8, "EdmKeyStore"

    const-string v9, "fos close failed"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_63

    goto :goto_62

    :catch_76
    move-exception v1

    :try_start_77
    const-string v6, "EdmKeyStore"

    const-string v8, "fos close failed"

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catchall {:try_start_77 .. :try_end_7e} :catchall_7f

    goto :goto_5a

    :catchall_7f
    move-exception v6

    move-object v4, v5

    goto :goto_64

    :catch_82
    move-exception v1

    :try_start_83
    const-string v6, "EdmKeyStore"

    const-string v8, "fos close failed"

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_83 .. :try_end_8a} :catchall_8b

    goto :goto_2e

    :catchall_8b
    move-exception v6

    move-object v2, v3

    goto :goto_64

    :catchall_8e
    move-exception v6

    move-object v2, v3

    goto :goto_5d

    :catchall_91
    move-exception v6

    move-object v4, v5

    move-object v2, v3

    goto :goto_5d

    :catchall_95
    move-exception v6

    move-object v4, v5

    goto :goto_5d

    :catch_98
    move-exception v0

    goto :goto_38
.end method

.method static areEqual(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    .registers 6

    const/4 v1, 0x0

    if-eqz p0, :cond_11

    if-eqz p1, :cond_11

    :try_start_5
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_10
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_5 .. :try_end_10} :catch_12

    move-result v1

    :cond_11
    :goto_11
    return v1

    :catch_12
    move-exception v0

    const/4 v1, 0x0

    goto :goto_11
.end method

.method private findCertificateOrIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 11

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->generateAlias(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v6, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v4, v0

    if-eqz v4, :cond_1c

    invoke-static {v4, p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->areEqual(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v6

    if-nez v6, :cond_1c

    const/4 v4, 0x0

    :cond_1c
    if-nez v4, :cond_39

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->generateAlias(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v6, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v4, v0

    if-eqz v4, :cond_39

    invoke-direct {p0, v4, p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->matchPublicKey(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v6

    if-nez v6, :cond_39

    const/4 v4, 0x0

    :cond_39
    if-nez v4, :cond_62

    iget-object v6, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v6}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v2

    :cond_41
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_62

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v6, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v3, p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->matchPublicKey(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v6

    if-nez v6, :cond_61

    invoke-static {v3, p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->areEqual(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    :try_end_5e
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_5e} :catch_63

    move-result v6

    if-eqz v6, :cond_41

    :cond_61
    move-object v4, v3

    :cond_62
    :goto_62
    return-object v4

    :catch_63
    move-exception v5

    const-string v6, "EdmKeyStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_62
.end method

.method private generateAlias(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;
    .registers 5

    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Ljava/lang/IntegralToString;->intToHexString(IZI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getAuthorityKeyIdentifier(Ljava/security/cert/X509Certificate;)Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;
    .registers 5

    const/4 v2, 0x0

    const-string v3, "2.5.29.35"

    invoke-virtual {p0, v3}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_a

    :goto_9
    return-object v2

    :cond_a
    :try_start_a
    invoke-static {v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->decode([B)Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_f

    move-result-object v2

    goto :goto_9

    :catch_f
    move-exception v1

    goto :goto_9
.end method

.method static declared-synchronized getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;
    .registers 5

    const/4 v1, 0x0

    const-class v2, Lcom/android/server/enterprise/certificate/EdmKeyStore;

    monitor-enter v2

    if-nez p0, :cond_26

    :try_start_6
    sget-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceTrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_23

    if-nez v1, :cond_13

    :try_start_a
    new-instance v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;

    sget-object v3, Lcom/android/server/enterprise/certificate/EdmKeyStore;->TRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceTrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_23
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_17

    :cond_13
    :goto_13
    :try_start_13
    sget-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceTrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_23

    :cond_15
    :goto_15
    monitor-exit v2

    return-object v1

    :catch_17
    move-exception v0

    :try_start_18
    const-string v1, "EdmKeyStore"

    const-string v3, "Should not happen! "

    invoke-static {v1, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceTrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_23

    goto :goto_13

    :catchall_23
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_26
    const/4 v3, 0x1

    if-ne p0, v3, :cond_45

    :try_start_29
    sget-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUser:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_23

    if-nez v1, :cond_36

    :try_start_2d
    new-instance v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;

    sget-object v3, Lcom/android/server/enterprise/certificate/EdmKeyStore;->USER_KEYSTORE_PATH:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUser:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_23
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_36} :catch_39

    :cond_36
    :goto_36
    :try_start_36
    sget-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUser:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    goto :goto_15

    :catch_39
    move-exception v0

    const-string v1, "EdmKeyStore"

    const-string v3, "Should not happen! "

    invoke-static {v1, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUser:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    goto :goto_36

    :cond_45
    const/4 v3, 0x2

    if-ne p0, v3, :cond_64

    sget-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceNative:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_4a
    .catchall {:try_start_36 .. :try_end_4a} :catchall_23

    if-nez v1, :cond_55

    :try_start_4c
    new-instance v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;

    sget-object v3, Lcom/android/server/enterprise/certificate/EdmKeyStore;->NATIVE_KEYSTORE_PATH:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceNative:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_23
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_55} :catch_58

    :cond_55
    :goto_55
    :try_start_55
    sget-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceNative:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    goto :goto_15

    :catch_58
    move-exception v0

    const-string v1, "EdmKeyStore"

    const-string v3, "Should not happen! "

    invoke-static {v1, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceNative:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    goto :goto_55

    :cond_64
    const/4 v3, 0x3

    if-ne p0, v3, :cond_15

    sget-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUntrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_69
    .catchall {:try_start_55 .. :try_end_69} :catchall_23

    if-nez v1, :cond_74

    :try_start_6b
    new-instance v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;

    sget-object v3, Lcom/android/server/enterprise/certificate/EdmKeyStore;->UNTRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUntrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_74
    .catchall {:try_start_6b .. :try_end_74} :catchall_23
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_74} :catch_77

    :cond_74
    :goto_74
    :try_start_74
    sget-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUntrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    goto :goto_15

    :catch_77
    move-exception v0

    const-string v1, "EdmKeyStore"

    const-string v3, "Should not happen! "

    invoke-static {v1, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUntrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_82
    .catchall {:try_start_74 .. :try_end_82} :catchall_23

    goto :goto_74
.end method

.method private static getSubjectKeyIdentifier(Ljava/security/cert/X509Certificate;)Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;
    .registers 5

    const/4 v2, 0x0

    const-string v3, "2.5.29.14"

    invoke-virtual {p0, v3}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_a

    :goto_9
    return-object v2

    :cond_a
    :try_start_a
    invoke-static {v1}, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;->decode([B)Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_f

    move-result-object v2

    goto :goto_9

    :catch_f
    move-exception v0

    goto :goto_9
.end method

.method static isCa(Ljava/security/cert/X509Certificate;)Z
    .registers 6

    const/4 v3, 0x0

    :try_start_1
    const-string v4, "2.5.29.19"

    invoke-virtual {p0, v4}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_a

    :goto_9
    return v3

    :cond_a
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v0

    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2b} :catch_2d

    move-result v3

    goto :goto_9

    :catch_2d
    move-exception v1

    goto :goto_9
.end method

.method static isSelfSigned(Ljava/security/cert/X509Certificate;)Z
    .registers 14

    const/4 v11, 0x0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    move v10, v11

    :goto_10
    return v10

    :cond_11
    invoke-static {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getAuthorityKeyIdentifier(Ljava/security/cert/X509Certificate;)Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;

    move-result-object v0

    if-eqz v0, :cond_8c

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-static {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getSubjectKeyIdentifier(Ljava/security/cert/X509Certificate;)Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v10

    invoke-static {v1, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-nez v10, :cond_2d

    move v10, v11

    goto :goto_10

    :cond_2d
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->getAuthorityCertSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3f

    move v10, v11

    goto :goto_10

    :cond_3f
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->getAuthorityCertIssuer()Lorg/apache/harmony/security/x509/GeneralNames;

    move-result-object v6

    if-eqz v6, :cond_8c

    const/4 v5, 0x0

    invoke-virtual {v6}, Lorg/apache/harmony/security/x509/GeneralNames;->getNames()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-virtual {v7}, Lorg/apache/harmony/security/x509/GeneralName;->getTag()I

    move-result v10

    const/4 v12, 0x4

    if-ne v10, v12, :cond_4e

    move-object v5, v7

    :cond_62
    if-eqz v5, :cond_8c

    invoke-virtual {v5}, Lorg/apache/harmony/security/x509/GeneralName;->getName()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/harmony/security/x501/Name;

    const-string v12, "CANONICAL"

    invoke-virtual {v10, v12}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_70
    new-instance v10, Lorg/apache/harmony/security/x501/Name;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    invoke-virtual {v12}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v12

    invoke-direct {v10, v12}, Lorg/apache/harmony/security/x501/Name;-><init>([B)V

    const-string v12, "CANONICAL"

    invoke-virtual {v10, v12}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_86} :catch_8b

    move-result v10

    if-nez v10, :cond_8c

    move v10, v11

    goto :goto_10

    :catch_8b
    move-exception v10

    :cond_8c
    const/4 v10, 0x1

    goto :goto_10
.end method

.method private matchPublicKey(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    .registers 6

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    :try_start_5
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_e

    const/4 v1, 0x1

    :cond_d
    :goto_d
    return v1

    :catch_e
    move-exception v0

    const/4 v1, 0x0

    goto :goto_d
.end method

.method private saveKeyStore()V
    .registers 9

    iget-object v5, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v2, 0x0

    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_44
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_19

    :try_start_b
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_60
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_63

    if-eqz v3, :cond_16

    :try_start_13
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_5d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_54

    :cond_16
    :goto_16
    move-object v2, v3

    :cond_17
    :goto_17
    :try_start_17
    monitor-exit v5
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_41

    return-void

    :catch_19
    move-exception v0

    :goto_1a
    :try_start_1a
    const-string v4, "EdmKeyStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "save error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_44

    if-eqz v2, :cond_17

    :try_start_34
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_41
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_17

    :catch_38
    move-exception v1

    :try_start_39
    const-string v4, "EdmKeyStore"

    const-string v6, "fos close failed"

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :catchall_41
    move-exception v4

    :goto_42
    monitor-exit v5
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_41

    throw v4

    :catchall_44
    move-exception v4

    :goto_45
    if-eqz v2, :cond_4a

    :try_start_47
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_41
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    :cond_4a
    :goto_4a
    :try_start_4a
    throw v4

    :catch_4b
    move-exception v1

    const-string v6, "EdmKeyStore"

    const-string v7, "fos close failed"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_41

    goto :goto_4a

    :catch_54
    move-exception v1

    :try_start_55
    const-string v4, "EdmKeyStore"

    const-string v6, "fos close failed"

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_5d

    goto :goto_16

    :catchall_5d
    move-exception v4

    move-object v2, v3

    goto :goto_42

    :catchall_60
    move-exception v4

    move-object v2, v3

    goto :goto_45

    :catch_63
    move-exception v0

    move-object v2, v3

    goto :goto_1a
.end method


# virtual methods
.method containsCertificateOrChain(Ljava/security/cert/X509Certificate;)Z
    .registers 5

    if-eqz p1, :cond_3b

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mPath:Ljava/lang/String;

    sget-object v2, Lcom/android/server/enterprise/certificate/EdmKeyStore;->TRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mPath:Ljava/lang/String;

    sget-object v2, Lcom/android/server/enterprise/certificate/EdmKeyStore;->UNTRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    :cond_16
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->findCertificateOrIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    :goto_1d
    return v1

    :cond_1e
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mPath:Ljava/lang/String;

    sget-object v2, Lcom/android/server/enterprise/certificate/EdmKeyStore;->TRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-static {p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->isSelfSigned(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-nez v1, :cond_3b

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->containsCertificateOrChain(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    goto :goto_1d

    :cond_3b
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method generateAlias(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->generateAlias(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCertificates(Ljava/util/List;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_15
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_18
    .catch Ljava/security/KeyStoreException; {:try_start_15 .. :try_end_18} :catch_2a

    :try_start_18
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v5, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_25

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    monitor-exit v6

    goto :goto_9

    :catchall_27
    move-exception v5

    monitor-exit v6
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_27

    :try_start_29
    throw v5
    :try_end_2a
    .catch Ljava/security/KeyStoreException; {:try_start_29 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception v2

    const-string v5, "EdmKeyStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception with keystore "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_44
    return-object v4
.end method

.method getKeyStore()Ljava/security/KeyStore;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    return-object v0
.end method

.method installCertificates(Ljava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->generateAlias(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v0

    :try_start_19
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1c
    .catch Ljava/security/KeyStoreException; {:try_start_19 .. :try_end_1c} :catch_31

    :try_start_1c
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v5, v0, v1}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    iget-object v5, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v5, v0}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    monitor-exit v6

    goto :goto_9

    :catchall_2e
    move-exception v5

    monitor-exit v6
    :try_end_30
    .catchall {:try_start_1c .. :try_end_30} :catchall_2e

    :try_start_30
    throw v5
    :try_end_31
    .catch Ljava/security/KeyStoreException; {:try_start_30 .. :try_end_31} :catch_31

    :catch_31
    move-exception v2

    const-string v5, "EdmKeyStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception with keystore "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_4b
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->saveKeyStore()V

    return-object v4
.end method

.method installCertificates(Ljava/util/Map;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :try_start_19
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1c
    .catch Ljava/security/KeyStoreException; {:try_start_19 .. :try_end_1c} :catch_47

    :try_start_1c
    iget-object v7, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/Certificate;

    invoke-virtual {v7, v4, v5}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    iget-object v5, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_42
    monitor-exit v6

    goto :goto_d

    :catchall_44
    move-exception v4

    monitor-exit v6
    :try_end_46
    .catchall {:try_start_1c .. :try_end_46} :catchall_44

    :try_start_46
    throw v4
    :try_end_47
    .catch Ljava/security/KeyStoreException; {:try_start_46 .. :try_end_47} :catch_47

    :catch_47
    move-exception v0

    const-string v4, "EdmKeyStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception with keystore "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_61
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->saveKeyStore()V

    return-object v3
.end method

.method isEmpty()Z
    .registers 6

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/KeyStore;->size()I
    :try_end_8
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_8} :catch_f

    move-result v2

    if-nez v2, :cond_d

    const/4 v1, 0x1

    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c

    :catch_f
    move-exception v0

    const-string v2, "EdmKeyStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_c
.end method

.method removeCertificates(Ljava/util/List;)Ljava/util/List;
    .registers 9
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

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_15
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_18
    .catch Ljava/security/KeyStoreException; {:try_start_15 .. :try_end_18} :catch_2d

    :try_start_18
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v4, v0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v4, v0}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_28

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28
    monitor-exit v5

    goto :goto_9

    :catchall_2a
    move-exception v4

    monitor-exit v5
    :try_end_2c
    .catchall {:try_start_18 .. :try_end_2c} :catchall_2a

    :try_start_2c
    throw v4
    :try_end_2d
    .catch Ljava/security/KeyStoreException; {:try_start_2c .. :try_end_2d} :catch_2d

    :catch_2d
    move-exception v1

    const-string v4, "EdmKeyStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception with keystore "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_47
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->saveKeyStore()V

    return-object v3
.end method
