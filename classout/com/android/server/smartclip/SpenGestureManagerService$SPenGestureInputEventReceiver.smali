.class final Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SPenGestureInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method

.method private disableSPenGestureView(Landroid/view/MotionEvent;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/smartclip/SmartClipView;->isShowingGestureEffect()Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mIsVisibleSPenGestureView:Z
    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$700(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disableSPenGestureView, mSmartClipView.addSPenEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mIsVisibleSPenGestureView:Z
    invoke-static {v0, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$702(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-virtual {v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->keyguardOn()Z

    move-result v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/smartclip/SmartClipView;->addSPenEvent(Landroid/view/MotionEvent;ZZ)V

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/smartclip/SmartClipView;->closeView()V

    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView;->setPhoneWindowMangerFlag(Z)V

    goto :goto_3b
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 12

    const/4 v9, 0x1

    const/4 v1, 0x0

    :try_start_2
    instance-of v6, p1, Landroid/view/MotionEvent;

    if-eqz v6, :cond_94

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v2, v0

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v6

    if-eqz v6, :cond_93

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/smartclip/SmartClipView;->getCroppingMode()I

    move-result v6

    if-nez v6, :cond_98

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_98

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$400(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v6

    if-ne v6, v9, :cond_98

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const/4 v7, 0x1

    #setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferEventToAirButton:Z
    invoke-static {v6, v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$802(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    :cond_37
    :goto_37
    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/smartclip/SmartClipView;->getCroppingMode()I

    move-result v6

    if-ne v6, v9, :cond_44

    const/4 v3, 0x1

    :cond_44
    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferTouchDownEventToAirButton:Z
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$900(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v6

    if-eqz v6, :cond_81

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_81

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$100(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v6

    if-nez v6, :cond_65

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-virtual {v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v7

    #setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static {v6, v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$102(Lcom/android/server/smartclip/SpenGestureManagerService;Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/airbutton/AirButtonImpl;

    :cond_65
    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$100(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v6

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    invoke-virtual {v6, v7}, Lcom/samsung/android/airbutton/AirButtonImpl;->onTouchDownForGA(I)V

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const/4 v7, 0x0

    #setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferTouchDownEventToAirButton:Z
    invoke-static {v6, v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$902(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    const-string v6, "wbest.park"

    const-string v7, "pass touch down"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    if-ne v3, v9, :cond_1e2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_1e8

    :pswitch_8a
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onInputEvent :default"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catchall {:try_start_2 .. :try_end_93} :catchall_10f

    :cond_93
    :goto_93
    const/4 v1, 0x1

    :cond_94
    invoke-virtual {p0, p1, v1}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_98
    :try_start_98
    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferEventToAirButton:Z
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$800(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v6

    if-ne v6, v9, :cond_37

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$100(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v6

    if-nez v6, :cond_b4

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-virtual {v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v7

    #setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static {v6, v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$102(Lcom/android/server/smartclip/SpenGestureManagerService;Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/airbutton/AirButtonImpl;

    :cond_b4
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$200()Landroid/content/Context;

    move-result-object v6

    const-string v7, "spengestureservice"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/smartclip/SpenGestureManager;

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$100(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v6

    if-eqz v6, :cond_eb

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$100(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/airbutton/AirButtonImpl;->isShowing()Z

    move-result v6

    if-nez v6, :cond_eb

    const/4 v7, 0x0

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v8, v6

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v7, v8, v6}, Lcom/samsung/android/smartclip/SpenGestureManager;->getAirButtonHitTest(III)I

    move-result v4

    :cond_eb
    if-eq v4, v9, :cond_114

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-virtual {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->keyguardOn()Z

    move-result v6

    if-nez v6, :cond_114

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-virtual {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->isShowGlobalAirButton()Z

    move-result v6

    if-eqz v6, :cond_114

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$100(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :goto_107
    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const/4 v7, 0x0

    #setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferEventToAirButton:Z
    invoke-static {v6, v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$802(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z
    :try_end_10d
    .catchall {:try_start_98 .. :try_end_10d} :catchall_10f

    goto/16 :goto_37

    :catchall_10f
    move-exception v6

    invoke-virtual {p0, p1, v1}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v6

    :cond_114
    :try_start_114
    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$100(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/airbutton/AirButtonImpl;->initSideButtonState()V

    goto :goto_107

    :pswitch_11e
    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$100(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v6

    if-nez v6, :cond_131

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-virtual {v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v7

    #setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static {v6, v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$102(Lcom/android/server/smartclip/SpenGestureManagerService;Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/airbutton/AirButtonImpl;

    :cond_131
    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$100(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v6

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    invoke-virtual {v6, v7}, Lcom/samsung/android/airbutton/AirButtonImpl;->onTouchDownForGA(I)V

    :pswitch_140
    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mIsVisibleSPenGestureView:Z
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$700(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v6

    if-nez v6, :cond_158

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/smartclip/SmartClipView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const/4 v7, 0x1

    #setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mIsVisibleSPenGestureView:Z
    invoke-static {v6, v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$702(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    :cond_158
    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-virtual {v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->keyguardOn()Z

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v6, v2, v7, v8}, Lcom/android/server/smartclip/SmartClipView;->addSPenEvent(Landroid/view/MotionEvent;ZZ)V

    goto/16 :goto_93

    :pswitch_16a
    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$100(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v6

    if-nez v6, :cond_17d

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-virtual {v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v7

    #setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static {v6, v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$102(Lcom/android/server/smartclip/SpenGestureManagerService;Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/airbutton/AirButtonImpl;

    :cond_17d
    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$100(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onInputEvent :ACTION_POINTER_DOWN"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-virtual {v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->keyguardOn()Z

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v6, v2, v7, v8}, Lcom/android/server/smartclip/SmartClipView;->addSPenEvent(Landroid/view/MotionEvent;ZZ)V

    invoke-direct {p0, v2}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->disableSPenGestureView(Landroid/view/MotionEvent;)V

    goto/16 :goto_93

    :pswitch_1a5
    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const/4 v7, 0x1

    #setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferTouchDownEventToAirButton:Z
    invoke-static {v6, v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$902(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$100(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v6

    if-nez v6, :cond_1be

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-virtual {v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v7

    #setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static {v6, v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$102(Lcom/android/server/smartclip/SpenGestureManagerService;Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/airbutton/AirButtonImpl;

    :cond_1be
    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static {v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$100(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v6

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    invoke-virtual {v6, v7}, Lcom/samsung/android/airbutton/AirButtonImpl;->onTouchUpForGA(I)V

    const-string v6, "wbest.park"

    const-string v7, "pass touch up"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_1d4
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onInputEvent :ACTION_CANCEL"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->disableSPenGestureView(Landroid/view/MotionEvent;)V

    goto/16 :goto_93

    :cond_1e2
    invoke-direct {p0, v2}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->disableSPenGestureView(Landroid/view/MotionEvent;)V
    :try_end_1e5
    .catchall {:try_start_114 .. :try_end_1e5} :catchall_10f

    goto/16 :goto_93

    nop

    :pswitch_data_1e8
    .packed-switch 0x0
        :pswitch_11e
        :pswitch_1a5
        :pswitch_140
        :pswitch_1d4
        :pswitch_8a
        :pswitch_140
        :pswitch_1d4
        :pswitch_16a
        :pswitch_8a
        :pswitch_16a
        :pswitch_16a
    .end packed-switch
.end method
