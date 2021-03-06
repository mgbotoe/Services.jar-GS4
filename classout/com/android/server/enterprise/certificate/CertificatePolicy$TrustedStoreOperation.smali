.class Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;
.super Landroid/os/AsyncTask;
.source "CertificatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/certificate/CertificatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrustedStoreOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mAliases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private mOperation:I

.field final synthetic this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILjava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;->mOperation:I

    iput-object p3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;->mAliases:Ljava/util/List;

    iput-object p4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;->mCerts:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILjava/util/List;Ljava/util/List;Lcom/android/server/enterprise/certificate/CertificatePolicy$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILjava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 9

    const/4 v6, 0x0

    :try_start_1
    iget v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;->mOperation:I

    packed-switch v4, :pswitch_data_76

    :goto_6
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_b
    return-object v4

    :pswitch_c
    const-string v4, "CertificatePolicy"

    const-string v5, "KeyStoreOperation install to systemKeyStore"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    move-result-object v5

    monitor-enter v5
    :try_end_1a
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1a} :catch_39
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1a} :catch_6e

    :try_start_1a
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;->mCerts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->installCertificate(Ljava/security/cert/X509Certificate;)V

    goto :goto_20

    :catchall_36
    move-exception v4

    monitor-exit v5
    :try_end_38
    .catchall {:try_start_1a .. :try_end_38} :catchall_36

    :try_start_38
    throw v4
    :try_end_39
    .catch Ljava/security/cert/CertificateException; {:try_start_38 .. :try_end_39} :catch_39
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_39} :catch_6e

    :catch_39
    move-exception v2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_b

    :cond_3f
    :try_start_3f
    monitor-exit v5
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_36

    goto :goto_6

    :pswitch_41
    :try_start_41
    const-string v4, "CertificatePolicy"

    const-string v5, "KeyStoreOperation delete from systemKeyStore"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    move-result-object v5

    monitor-enter v5
    :try_end_4f
    .catch Ljava/security/cert/CertificateException; {:try_start_41 .. :try_end_4f} :catch_39
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_4f} :catch_6e

    :try_start_4f
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;->mAliases:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_55
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->deleteCertificateEntry(Ljava/lang/String;)V

    goto :goto_55

    :catchall_6b
    move-exception v4

    monitor-exit v5
    :try_end_6d
    .catchall {:try_start_4f .. :try_end_6d} :catchall_6b

    :try_start_6d
    throw v4
    :try_end_6e
    .catch Ljava/security/cert/CertificateException; {:try_start_6d .. :try_end_6e} :catch_39
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_6e} :catch_6e

    :catch_6e
    move-exception v2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_b

    :cond_74
    :try_start_74
    monitor-exit v5
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_6b

    goto :goto_6

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_c
        :pswitch_41
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
