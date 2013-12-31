.class Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;
.super Landroid/os/AsyncTask;
.source "CertificatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/certificate/CertificatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeKeyStoreOperation"
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
.field private mAliases:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCerts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private mOperation:I

.field final synthetic this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILjava/util/Set;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->mOperation:I

    iput-object p3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->mAliases:Ljava/util/Set;

    iput-object p4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->mCerts:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILjava/util/Set;Ljava/util/Map;Lcom/android/server/enterprise/certificate/CertificatePolicy$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILjava/util/Set;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 10

    iget v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->mOperation:I

    packed-switch v4, :pswitch_data_94

    :goto_5
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_a
    return-object v4

    :pswitch_b
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStoreLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$200(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_12
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #calls: Lcom/android/server/enterprise/certificate/CertificatePolicy;->isNativeKeyStoreUnlocked()Z
    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Z

    move-result v4

    if-eqz v4, :cond_61

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->mCerts:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    #calls: Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertX509ToPem(Ljava/security/cert/X509Certificate;)[B
    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$400(Ljava/security/cert/X509Certificate;)[B

    move-result-object v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$600(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/security/KeyStore;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$500(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v0, v2, v6, v7}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    goto :goto_24

    :catchall_57
    move-exception v4

    monitor-exit v5
    :try_end_59
    .catchall {:try_start_12 .. :try_end_59} :catchall_57

    throw v4

    :cond_5a
    const/4 v4, 0x0

    :try_start_5b
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    monitor-exit v5

    goto :goto_a

    :cond_61
    monitor-exit v5
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_57

    goto :goto_5

    :pswitch_63
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStoreLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$200(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_6a
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #calls: Lcom/android/server/enterprise/certificate/CertificatePolicy;->isNativeKeyStoreUnlocked()Z
    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Z

    move-result v4

    if-eqz v4, :cond_91

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->mAliases:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_78
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_91

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$600(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/security/KeyStore;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    goto :goto_78

    :catchall_8e
    move-exception v4

    monitor-exit v5
    :try_end_90
    .catchall {:try_start_6a .. :try_end_90} :catchall_8e

    throw v4

    :cond_91
    :try_start_91
    monitor-exit v5
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_8e

    goto/16 :goto_5

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_b
        :pswitch_63
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
