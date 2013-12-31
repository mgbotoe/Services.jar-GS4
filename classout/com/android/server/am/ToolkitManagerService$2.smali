.class Lcom/android/server/am/ToolkitManagerService$2;
.super Ljava/lang/Object;
.source "ToolkitManagerService.java"

# interfaces
.implements Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;


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

    iput-object p1, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentsSizeChange(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #setter for: Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;
    invoke-static {v0, p1}, Lcom/android/server/am/ToolkitManagerService;->access$702(Lcom/android/server/am/ToolkitManagerService;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #getter for: Lcom/android/server/am/ToolkitManagerService;->mOriginalContentsRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/server/am/ToolkitManagerService;->access$800(Lcom/android/server/am/ToolkitManagerService;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1a
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    const/16 v1, 0x100

    #calls: Lcom/android/server/am/ToolkitManagerService;->save(I)V
    invoke-static {v0, v1}, Lcom/android/server/am/ToolkitManagerService;->access$900(Lcom/android/server/am/ToolkitManagerService;I)V

    return-void
.end method

.method public onFocusTabChange(Ljava/lang/Object;Z)V
    .registers 4

    move-object v0, p1

    check-cast v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    if-eqz p2, :cond_8

    invoke-virtual {v0}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->requestFocus()Z

    :cond_8
    return-void
.end method

.method public onModeChange(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #setter for: Lcom/android/server/am/ToolkitManagerService;->mMode:I
    invoke-static {v0, p1}, Lcom/android/server/am/ToolkitManagerService;->access$1602(Lcom/android/server/am/ToolkitManagerService;I)I

    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    const/16 v1, 0x1000

    #calls: Lcom/android/server/am/ToolkitManagerService;->save(I)V
    invoke-static {v0, v1}, Lcom/android/server/am/ToolkitManagerService;->access$900(Lcom/android/server/am/ToolkitManagerService;I)V

    return-void
.end method

.method public onOrientationChange(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    #calls: Lcom/android/server/am/ToolkitManagerService;->SendMessage(ILjava/lang/Object;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/ToolkitManagerService;->access$500(Lcom/android/server/am/ToolkitManagerService;ILjava/lang/Object;I)V

    return-void
.end method

.method public onTabItemChange(Ljava/lang/Object;I)V
    .registers 5

    const/4 v1, 0x1

    if-ne p2, v1, :cond_22

    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #getter for: Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/am/ToolkitManagerService;->access$1000(Lcom/android/server/am/ToolkitManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #calls: Lcom/android/server/am/ToolkitManagerService;->save(I)V
    invoke-static {v0, v1}, Lcom/android/server/am/ToolkitManagerService;->access$900(Lcom/android/server/am/ToolkitManagerService;I)V

    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #getter for: Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/am/ToolkitManagerService;->access$1000(Lcom/android/server/am/ToolkitManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #calls: Lcom/android/server/am/ToolkitManagerService;->startEmptyActivity()V
    invoke-static {v0}, Lcom/android/server/am/ToolkitManagerService;->access$1400(Lcom/android/server/am/ToolkitManagerService;)V

    :cond_22
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #calls: Lcom/android/server/am/ToolkitManagerService;->notifyTabItemChange(Ljava/lang/Object;I)V
    invoke-static {v0, p1, p2}, Lcom/android/server/am/ToolkitManagerService;->access$1500(Lcom/android/server/am/ToolkitManagerService;Ljava/lang/Object;I)V

    return-void
.end method

.method public onUiStatusChange(I)V
    .registers 4

    packed-switch p1, :pswitch_data_1e

    :goto_3
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    #setter for: Lcom/android/server/am/ToolkitManagerService;->mToolkitUiStatus:I
    invoke-static {v0, p1}, Lcom/android/server/am/ToolkitManagerService;->access$1302(Lcom/android/server/am/ToolkitManagerService;I)I

    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    const/16 v1, 0x10

    #calls: Lcom/android/server/am/ToolkitManagerService;->save(I)V
    invoke-static {v0, v1}, Lcom/android/server/am/ToolkitManagerService;->access$900(Lcom/android/server/am/ToolkitManagerService;I)V

    return-void

    :pswitch_10
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    const/4 v1, 0x2

    #calls: Lcom/android/server/am/ToolkitManagerService;->setStatus(I)V
    invoke-static {v0, v1}, Lcom/android/server/am/ToolkitManagerService;->access$1200(Lcom/android/server/am/ToolkitManagerService;I)V

    goto :goto_3

    :pswitch_17
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService$2;->this$0:Lcom/android/server/am/ToolkitManagerService;

    const/4 v1, 0x1

    #calls: Lcom/android/server/am/ToolkitManagerService;->setStatus(I)V
    invoke-static {v0, v1}, Lcom/android/server/am/ToolkitManagerService;->access$1200(Lcom/android/server/am/ToolkitManagerService;I)V

    goto :goto_3

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_10
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method
