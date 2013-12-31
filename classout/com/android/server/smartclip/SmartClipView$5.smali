.class Lcom/android/server/smartclip/SmartClipView$5;
.super Ljava/lang/Object;
.source "SmartClipView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SmartClipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SmartClipView;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SmartClipView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const/4 v8, 0x1

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/smartclip/SmartClipView;->access$900(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/smartclip/SmartClipView;->access$200(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "enterprise_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    if-eqz v4, :cond_2e

    invoke-virtual {v4, v8}, Landroid/app/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v6

    if-nez v6, :cond_2e

    const-string v6, "SmartClipView"

    const-string v7, "MDM: Screen Capture Disabled"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    return-void

    :cond_2e
    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget-boolean v6, v6, Lcom/android/server/smartclip/SmartClipView;->mScreenCaptureOn:Z

    if-eq v6, v8, :cond_3c

    const-string v6, "SmartClipView"

    const-string v7, "flashannotate couldn\'t by MDM"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    :cond_3c
    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v6}, Lcom/android/server/smartclip/SmartClipView;->isLockScreenShowing()Z

    move-result v6

    if-eqz v6, :cond_4c

    const-string v6, "SmartClipView"

    const-string v7, "Now keyguard is on!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    :cond_4c
    const-string v6, "SmartClipView"

    const-string v7, "Long pressed"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_53
    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    const-string v7, "com.sec.spen.flashannotate"

    #calls: Lcom/android/server/smartclip/SmartClipView;->isTopActivity(Ljava/lang/String;)Z
    invoke-static {v6, v7}, Lcom/android/server/smartclip/SmartClipView;->access$1000(Lcom/android/server/smartclip/SmartClipView;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6a

    const-string v6, "SmartClipView"

    const-string v7, "flashannotate is live!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_64} :catch_65

    goto :goto_2d

    :catch_65
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d

    :cond_6a
    :try_start_6a
    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    const/4 v7, 0x0

    #setter for: Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z
    invoke-static {v6, v7}, Lcom/android/server/smartclip/SmartClipView;->access$802(Lcom/android/server/smartclip/SmartClipView;Z)Z

    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    const/4 v7, 0x0

    #setter for: Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateChanged:Z
    invoke-static {v6, v7}, Lcom/android/server/smartclip/SmartClipView;->access$1102(Lcom/android/server/smartclip/SmartClipView;Z)Z

    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v6, v5}, Lcom/android/server/smartclip/SmartClipView;->resetVariable(I)V

    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v6}, Lcom/android/server/smartclip/SmartClipView;->postInvalidate()V

    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    const/4 v7, 0x1

    #setter for: Lcom/android/server/smartclip/SmartClipView;->mIsLiveScreencapture:Z
    invoke-static {v6, v7}, Lcom/android/server/smartclip/SmartClipView;->access$1202(Lcom/android/server/smartclip/SmartClipView;Z)Z

    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget v6, v6, Lcom/android/server/smartclip/SmartClipView;->mFocusedWindow:I

    if-eqz v6, :cond_9f

    const-string v6, "SmartClipView"

    const-string v7, "SpenGestureView: mPenLongPress: not freestyle-mode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mLongPressIntent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/android/server/smartclip/SmartClipView;->access$1300(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "FrontWindowLayer"

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_9f
    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v6}, Lcom/android/server/smartclip/SmartClipView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mLongPressIntent:Landroid/content/Intent;
    invoke-static {v7}, Lcom/android/server/smartclip/SmartClipView;->access$1300(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.android.app.videoplayer.VIDEOPLAYER_PLAY"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/smartclip/SmartClipView;->access$200(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_c0} :catch_65

    goto/16 :goto_2d
.end method
