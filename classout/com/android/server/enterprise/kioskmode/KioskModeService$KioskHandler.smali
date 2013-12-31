.class final Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;
.super Landroid/os/Handler;
.source "KioskModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/kioskmode/KioskModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KioskHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_9

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_46

    :cond_9
    :goto_9
    return-void

    :pswitch_a
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    #setter for: Lcom/android/server/enterprise/kioskmode/KioskModeService;->mBusy:Z
    invoke-static {v4, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$102(Lcom/android/server/enterprise/kioskmode/KioskModeService;Z)Z

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "adminuid"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "package"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    #calls: Lcom/android/server/enterprise/kioskmode/KioskModeService;->_enableKioskMode(ILjava/lang/String;)V
    invoke-static {v4, v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$200(Lcom/android/server/enterprise/kioskmode/KioskModeService;ILjava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    #setter for: Lcom/android/server/enterprise/kioskmode/KioskModeService;->mBusy:Z
    invoke-static {v4, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$102(Lcom/android/server/enterprise/kioskmode/KioskModeService;Z)Z

    goto :goto_9

    :pswitch_2a
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    #setter for: Lcom/android/server/enterprise/kioskmode/KioskModeService;->mBusy:Z
    invoke-static {v4, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$102(Lcom/android/server/enterprise/kioskmode/KioskModeService;Z)Z

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "adminuid"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    const/4 v5, 0x2

    #calls: Lcom/android/server/enterprise/kioskmode/KioskModeService;->_disableKioskMode(II)V
    invoke-static {v4, v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$300(Lcom/android/server/enterprise/kioskmode/KioskModeService;II)V

    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    #setter for: Lcom/android/server/enterprise/kioskmode/KioskModeService;->mBusy:Z
    invoke-static {v4, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$102(Lcom/android/server/enterprise/kioskmode/KioskModeService;Z)Z

    goto :goto_9

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_a
        :pswitch_2a
    .end packed-switch
.end method
