.class Lcom/android/server/smartclip/InternalSmartClipMetaDataService$SmartClipMetaDataUiEventImp;
.super Ljava/lang/Object;
.source "InternalSmartClipMetaDataService.java"

# interfaces
.implements Landroid/sec/smartclipmetadata/ISmartClipMetaDataUiEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/InternalSmartClipMetaDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartClipMetaDataUiEventImp"
.end annotation


# instance fields
.field private final mBind:Landroid/sec/smartclipmetadata/ISmartClipMetaDataUiEvent$Stub;

.field final synthetic this$0:Lcom/android/server/smartclip/InternalSmartClipMetaDataService;


# direct methods
.method private constructor <init>(Lcom/android/server/smartclip/InternalSmartClipMetaDataService;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService$SmartClipMetaDataUiEventImp;->this$0:Lcom/android/server/smartclip/InternalSmartClipMetaDataService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService$SmartClipMetaDataUiEventImp$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/InternalSmartClipMetaDataService$SmartClipMetaDataUiEventImp$1;-><init>(Lcom/android/server/smartclip/InternalSmartClipMetaDataService$SmartClipMetaDataUiEventImp;)V

    iput-object v0, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService$SmartClipMetaDataUiEventImp;->mBind:Landroid/sec/smartclipmetadata/ISmartClipMetaDataUiEvent$Stub;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/smartclip/InternalSmartClipMetaDataService;Lcom/android/server/smartclip/InternalSmartClipMetaDataService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/smartclip/InternalSmartClipMetaDataService$SmartClipMetaDataUiEventImp;-><init>(Lcom/android/server/smartclip/InternalSmartClipMetaDataService;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService$SmartClipMetaDataUiEventImp;->mBind:Landroid/sec/smartclipmetadata/ISmartClipMetaDataUiEvent$Stub;

    return-object v0
.end method

.method public selectItem(Ljava/lang/String;Landroid/sec/smartclipmetadata/ISmartClipMetaDataPasteEvent;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_c

    :try_start_3
    const-string v1, "InternalSmartClipMetaDataService"

    const-string v2, "SmartClipMetaDataUiEvent is null."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_11

    :goto_b
    return-void

    :cond_c
    :try_start_c
    invoke-interface {p2, p1}, Landroid/sec/smartclipmetadata/ISmartClipMetaDataPasteEvent;->onSmartClipMetaDataPaste(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_14
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_32

    :goto_f
    :try_start_f
    monitor-exit p0

    goto :goto_b

    :catchall_11
    move-exception v1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_11

    throw v1

    :catch_14
    move-exception v0

    :try_start_15
    const-string v1, "InternalSmartClipMetaDataService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartClipMetaData Service selectItem error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :catch_32
    move-exception v0

    const-string v1, "InternalSmartClipMetaDataService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartClipMetaData Service selectItem-getItem error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_15 .. :try_end_4f} :catchall_11

    goto :goto_f
.end method
