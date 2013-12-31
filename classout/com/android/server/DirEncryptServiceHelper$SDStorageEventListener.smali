.class Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;
.super Landroid/os/storage/StorageEventListener;
.source "DirEncryptServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DirEncryptServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SDStorageEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DirEncryptServiceHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/DirEncryptServiceHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DirEncryptServiceHelper;Lcom/android/server/DirEncryptServiceHelper$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;-><init>(Lcom/android/server/DirEncryptServiceHelper;)V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    #getter for: Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;
    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->access$600(Lcom/android/server/DirEncryptServiceHelper;)Landroid/dirEncryption/DirEncryptionWrapper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    #getter for: Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;
    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->access$600(Lcom/android/server/DirEncryptServiceHelper;)Landroid/dirEncryption/DirEncryptionWrapper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v1

    if-nez v1, :cond_5c

    if-eqz p2, :cond_5c

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStorageStateChanged:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " oldstate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    #getter for: Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->access$200(Lcom/android/server/DirEncryptServiceHelper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_5c
    const-string v1, "unmounted"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    #getter for: Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;
    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->access$600(Lcom/android/server/DirEncryptServiceHelper;)Landroid/dirEncryption/DirEncryptionWrapper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionWrapper;->getUserDiff()Z

    move-result v1

    if-eqz v1, :cond_88

    const-string v1, "MEDIA_UNMOUNTED + mDew.getUserDiff = true"

    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    #getter for: Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;
    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->access$600(Lcom/android/server/DirEncryptServiceHelper;)Landroid/dirEncryption/DirEncryptionWrapper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/dirEncryption/DirEncryptionWrapper;->setUserDiff(Z)V

    :try_start_7f
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    #getter for: Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;
    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->access$600(Lcom/android/server/DirEncryptServiceHelper;)Landroid/dirEncryption/DirEncryptionWrapper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionWrapper;->mountVolume()Z
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_88} :catch_89

    :cond_88
    :goto_88
    return-void

    :catch_89
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_88
.end method

.method public onUsbMassStorageConnectionChanged(Z)V
    .registers 2

    return-void
.end method
