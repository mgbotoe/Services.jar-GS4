.class Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;
.super Landroid/os/AsyncTask;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/security/SecurityPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetKeyChain"
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
.field final synthetic this$0:Lcom/android/server/enterprise/security/SecurityPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;Lcom/android/server/enterprise/security/SecurityPolicy$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    #getter for: Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->access$400(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2}, Landroid/security/KeyStore;->reset()Z

    :try_start_a
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    #getter for: Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->access$000(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_13} :catch_2e

    move-result-object v1

    :try_start_14
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    invoke-interface {v2}, Landroid/security/IKeyChainService;->reset()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_3b
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1f} :catch_24

    move-result-object v2

    :try_start_20
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_2e

    :goto_23
    return-object v2

    :catch_24
    move-exception v0

    const/4 v2, 0x0

    :try_start_26
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_3b

    move-result-object v2

    :try_start_2a
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_23

    :catch_2e
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_23

    :catchall_3b
    move-exception v2

    :try_start_3c
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v2
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_40} :catch_2e
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
