.class Lcom/android/server/am/ToolkitManagerService$1;
.super Landroid/os/Handler;
.source "ToolkitManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ToolkitManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ToolkitManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ToolkitManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ToolkitManagerService$1;->this$0:Lcom/android/server/am/ToolkitManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_174

    :cond_8
    :goto_8
    return-void

    :pswitch_9
    if-eqz p1, :cond_1d

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_1d

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$1;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #getter for: Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;
    invoke-static {v4}, Lcom/android/server/am/ToolkitManagerService;->access$200(Lcom/android/server/am/ToolkitManagerService;)Lcom/android/server/am/ToolkitTabDialog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/am/ToolkitTabDialog;->setFocusItem(Ljava/lang/Object;)V

    goto :goto_8

    :cond_1d
    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$1;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #getter for: Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;
    invoke-static {v4}, Lcom/android/server/am/ToolkitManagerService;->access$200(Lcom/android/server/am/ToolkitManagerService;)Lcom/android/server/am/ToolkitTabDialog;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$1;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #getter for: Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;
    invoke-static {v4}, Lcom/android/server/am/ToolkitManagerService;->access$200(Lcom/android/server/am/ToolkitManagerService;)Lcom/android/server/am/ToolkitTabDialog;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/server/am/ToolkitTabDialog;->setFocusItem(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$1;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #setter for: Lcom/android/server/am/ToolkitManagerService;->mFocusedItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    invoke-static {v4, v5}, Lcom/android/server/am/ToolkitManagerService;->access$302(Lcom/android/server/am/ToolkitManagerService;Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;)Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    goto :goto_8

    :pswitch_34
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ToolkitManagerService$ReceiveData;

    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$1;->this$0:Lcom/android/server/am/ToolkitManagerService;

    iget-object v5, v1, Lcom/android/server/am/ToolkitManagerService$ReceiveData;->mItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    iget v6, v1, Lcom/android/server/am/ToolkitManagerService$ReceiveData;->mType:I

    iget-object v7, v1, Lcom/android/server/am/ToolkitManagerService$ReceiveData;->mBundle:Landroid/os/Bundle;

    #calls: Lcom/android/server/am/ToolkitManagerService;->SendData(Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;ILandroid/os/Bundle;)Z
    invoke-static {v4, v5, v6, v7}, Lcom/android/server/am/ToolkitManagerService;->access$400(Lcom/android/server/am/ToolkitManagerService;Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;ILandroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v1}, Lcom/android/server/am/ToolkitManagerService$ReceiveData;->checkFailed()Z

    move-result v4

    if-nez v4, :cond_5a

    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$1;->this$0:Lcom/android/server/am/ToolkitManagerService;

    const/4 v5, 0x6

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v7, 0x1f4

    #calls: Lcom/android/server/am/ToolkitManagerService;->SendMessage(ILjava/lang/Object;I)V
    invoke-static {v4, v5, v6, v7}, Lcom/android/server/am/ToolkitManagerService;->access$500(Lcom/android/server/am/ToolkitManagerService;ILjava/lang/Object;I)V

    invoke-virtual {v1}, Lcom/android/server/am/ToolkitManagerService$ReceiveData;->fail()V

    goto :goto_8

    :cond_5a
    const-string v4, "ToolkitManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending is failed.["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/am/ToolkitManagerService$ReceiveData;->mItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :pswitch_7b
    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$1;->this$0:Lcom/android/server/am/ToolkitManagerService;

    const/4 v5, 0x2

    #calls: Lcom/android/server/am/ToolkitManagerService;->internalShowToolkit(I)V
    invoke-static {v4, v5}, Lcom/android/server/am/ToolkitManagerService;->access$600(Lcom/android/server/am/ToolkitManagerService;I)V

    goto :goto_8

    :pswitch_82
    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$1;->this$0:Lcom/android/server/am/ToolkitManagerService;

    const/4 v5, 0x1

    #calls: Lcom/android/server/am/ToolkitManagerService;->internalShowToolkit(I)V
    invoke-static {v4, v5}, Lcom/android/server/am/ToolkitManagerService;->access$600(Lcom/android/server/am/ToolkitManagerService;I)V

    goto :goto_8

    :pswitch_89
    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$1;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #getter for: Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;
    invoke-static {v4}, Lcom/android/server/am/ToolkitManagerService;->access$200(Lcom/android/server/am/ToolkitManagerService;)Lcom/android/server/am/ToolkitTabDialog;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$1;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #getter for: Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;
    invoke-static {v4}, Lcom/android/server/am/ToolkitManagerService;->access$200(Lcom/android/server/am/ToolkitManagerService;)Lcom/android/server/am/ToolkitTabDialog;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(I)V

    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$1;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #setter for: Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;
    invoke-static {v4, v5}, Lcom/android/server/am/ToolkitManagerService;->access$202(Lcom/android/server/am/ToolkitManagerService;Lcom/android/server/am/ToolkitTabDialog;)Lcom/android/server/am/ToolkitTabDialog;

    goto/16 :goto_8

    :pswitch_a1
    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$1;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #getter for: Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;
    invoke-static {v4}, Lcom/android/server/am/ToolkitManagerService;->access$200(Lcom/android/server/am/ToolkitManagerService;)Lcom/android/server/am/ToolkitTabDialog;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    if-nez v2, :cond_ba

    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$1;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #getter for: Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;
    invoke-static {v4}, Lcom/android/server/am/ToolkitManagerService;->access$200(Lcom/android/server/am/ToolkitManagerService;)Lcom/android/server/am/ToolkitTabDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ToolkitTabDialog;->changeConfiguration()V

    goto/16 :goto_8

    :cond_ba
    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$1;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #setter for: Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;
    invoke-static {v4, v2}, Lcom/android/server/am/ToolkitManagerService;->access$702(Lcom/android/server/am/ToolkitManagerService;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-eqz v4, :cond_d4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-eqz v4, :cond_d4

    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$1;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #getter for: Lcom/android/server/am/ToolkitManagerService;->mOriginalContentsRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/server/am/ToolkitManagerService;->access$800(Lcom/android/server/am/ToolkitManagerService;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_d4
    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$1;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #getter for: Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;
    invoke-static {v4}, Lcom/android/server/am/ToolkitManagerService;->access$200(Lcom/android/server/am/ToolkitManagerService;)Lcom/android/server/am/ToolkitTabDialog;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/server/am/ToolkitTabDialog;->setMode(I)V

    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$1;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #getter for: Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;
    invoke-static {v4}, Lcom/android/server/am/ToolkitManagerService;->access$200(Lcom/android/server/am/ToolkitManagerService;)Lcom/android/server/am/ToolkitTabDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ToolkitManagerService$1;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #getter for: Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/server/am/ToolkitManagerService;->access$700(Lcom/android/server/am/ToolkitManagerService;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/ToolkitTabDialog;->changeConfiguration(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$1;->this$0:Lcom/android/server/am/ToolkitManagerService;

    const/16 v5, 0x100

    #calls: Lcom/android/server/am/ToolkitManagerService;->save(I)V
    invoke-static {v4, v5}, Lcom/android/server/am/ToolkitManagerService;->access$900(Lcom/android/server/am/ToolkitManagerService;I)V

    goto/16 :goto_8

    :pswitch_f5
    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$1;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #getter for: Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;
    invoke-static {v4}, Lcom/android/server/am/ToolkitManagerService;->access$200(Lcom/android/server/am/ToolkitManagerService;)Lcom/android/server/am/ToolkitTabDialog;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItemData;

    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$1;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #getter for: Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;
    invoke-static {v4}, Lcom/android/server/am/ToolkitManagerService;->access$200(Lcom/android/server/am/ToolkitManagerService;)Lcom/android/server/am/ToolkitTabDialog;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItemData;->mToolkitTabItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-virtual {v5}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItemData;->mToolkitTabItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    iget-object v7, v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItemData;->mToolkitTabItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-virtual {v7}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->isPermanent()Z

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ToolkitTabDialog;->addTab(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Z)Z

    iget-boolean v4, v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItemData;->mRequestFocus:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$1;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #getter for: Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;
    invoke-static {v4}, Lcom/android/server/am/ToolkitManagerService;->access$200(Lcom/android/server/am/ToolkitManagerService;)Lcom/android/server/am/ToolkitTabDialog;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItemData;->mToolkitTabItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ToolkitTabDialog;->setFocusItem(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_129
    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$1;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #getter for: Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;
    invoke-static {v4}, Lcom/android/server/am/ToolkitManagerService;->access$200(Lcom/android/server/am/ToolkitManagerService;)Lcom/android/server/am/ToolkitTabDialog;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$1;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #getter for: Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;
    invoke-static {v4}, Lcom/android/server/am/ToolkitManagerService;->access$200(Lcom/android/server/am/ToolkitManagerService;)Lcom/android/server/am/ToolkitTabDialog;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ToolkitTabDialog;->removeTab(Ljava/lang/Object;)Z

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/am/ToolkitManagerService$1;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #getter for: Lcom/android/server/am/ToolkitManagerService;->mFocusedItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    invoke-static {v5}, Lcom/android/server/am/ToolkitManagerService;->access$300(Lcom/android/server/am/ToolkitManagerService;)Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    move-result-object v5

    if-ne v4, v5, :cond_8

    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$1;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #getter for: Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/am/ToolkitManagerService;->access$1000(Lcom/android/server/am/ToolkitManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$1;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #getter for: Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;
    invoke-static {v4}, Lcom/android/server/am/ToolkitManagerService;->access$200(Lcom/android/server/am/ToolkitManagerService;)Lcom/android/server/am/ToolkitTabDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ToolkitManagerService$1;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #getter for: Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/am/ToolkitManagerService;->access$1000(Lcom/android/server/am/ToolkitManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/ToolkitTabDialog;->setFocusItem(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_167
    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$1;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #setter for: Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;
    invoke-static {v4, v5}, Lcom/android/server/am/ToolkitManagerService;->access$202(Lcom/android/server/am/ToolkitManagerService;Lcom/android/server/am/ToolkitTabDialog;)Lcom/android/server/am/ToolkitTabDialog;

    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService$1;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #calls: Lcom/android/server/am/ToolkitManagerService;->notifyDestory()V
    invoke-static {v4}, Lcom/android/server/am/ToolkitManagerService;->access$1100(Lcom/android/server/am/ToolkitManagerService;)V

    goto/16 :goto_8

    nop

    :pswitch_data_174
    .packed-switch 0x0
        :pswitch_7b
        :pswitch_82
        :pswitch_89
        :pswitch_a1
        :pswitch_f5
        :pswitch_129
        :pswitch_34
        :pswitch_9
        :pswitch_167
    .end packed-switch
.end method
