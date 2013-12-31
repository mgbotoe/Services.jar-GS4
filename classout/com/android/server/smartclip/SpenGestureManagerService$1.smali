.class Lcom/android/server/smartclip/SpenGestureManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16

    const v12, 0x461c4000

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BroadcastReceiver"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "com.samsung.pen.INSERT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_101

    const-string v7, "penInsert"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "isBoot"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "action is com.samsung.pen.INSERT,, penInsert : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "isBoot : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v6, v10, :cond_e3

    if-eq v2, v10, :cond_e3

    iget-object v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static {v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$100(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v7

    if-nez v7, :cond_72

    iget-object v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-virtual {v8}, Lcom/android/server/smartclip/SpenGestureManagerService;->createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v8

    #setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static {v7, v8}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$102(Lcom/android/server/smartclip/SpenGestureManagerService;Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/airbutton/AirButtonImpl;

    :cond_72
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$200()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_detachment_option"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PEN_DETACHMENT_OPTION is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_e2

    iget-object v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-virtual {v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->keyguardSecureOn()Z

    move-result v7

    if-nez v7, :cond_e2

    iget-object v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$200()Landroid/content/Context;

    move-result-object v7

    const-string v9, "window"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    #setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v8, v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$302(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/WindowManager;)Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$300(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-virtual {v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->isShowGlobalAirButton()Z

    move-result v7

    if-eqz v7, :cond_e2

    iget-object v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static {v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$100(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v7

    invoke-virtual {v7, v12, v12}, Lcom/samsung/android/airbutton/AirButtonImpl;->show(FF)V

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AirButtonImpl show() is called!!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e2
    :goto_e2
    return-void

    :cond_e3
    iget-object v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static {v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$100(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v7

    if-eqz v7, :cond_e2

    iget-object v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static {v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$100(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/airbutton/AirButtonImpl;->isShowing()Z

    move-result v7

    if-ne v10, v7, :cond_e2

    iget-object v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static {v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$100(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/airbutton/AirButtonImpl;->hide()V

    goto :goto_e2

    :cond_101
    const-string v7, "com.samsung.cover.OPEN"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e2

    const-string v7, "coverOpen"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " action is com.samsung.cover.OPEN,, isCoverOpen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_131

    iget-object v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z
    invoke-static {v7, v11}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$402(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    goto :goto_e2

    :cond_131
    iget-object v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z
    invoke-static {v7, v10}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$402(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    goto :goto_e2
.end method
