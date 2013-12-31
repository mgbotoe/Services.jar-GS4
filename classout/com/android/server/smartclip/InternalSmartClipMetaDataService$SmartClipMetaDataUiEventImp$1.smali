.class Lcom/android/server/smartclip/InternalSmartClipMetaDataService$SmartClipMetaDataUiEventImp$1;
.super Landroid/sec/smartclipmetadata/ISmartClipMetaDataUiEvent$Stub;
.source "InternalSmartClipMetaDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/InternalSmartClipMetaDataService$SmartClipMetaDataUiEventImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/smartclip/InternalSmartClipMetaDataService$SmartClipMetaDataUiEventImp;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/InternalSmartClipMetaDataService$SmartClipMetaDataUiEventImp;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService$SmartClipMetaDataUiEventImp$1;->this$1:Lcom/android/server/smartclip/InternalSmartClipMetaDataService$SmartClipMetaDataUiEventImp;

    invoke-direct {p0}, Landroid/sec/smartclipmetadata/ISmartClipMetaDataUiEvent$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public selectItem(Ljava/lang/String;Landroid/sec/smartclipmetadata/ISmartClipMetaDataPasteEvent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/smartclip/InternalSmartClipMetaDataService$SmartClipMetaDataUiEventImp$1;->this$1:Lcom/android/server/smartclip/InternalSmartClipMetaDataService$SmartClipMetaDataUiEventImp;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/smartclip/InternalSmartClipMetaDataService$SmartClipMetaDataUiEventImp;->selectItem(Ljava/lang/String;Landroid/sec/smartclipmetadata/ISmartClipMetaDataPasteEvent;)V

    return-void
.end method
