.class Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenStatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    const/4 v7, 0x0

    const/4 v6, -0x1

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.stk.check_screen_idle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_78

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "SCREEN_STATUS_REQUEST"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    #setter for: Lcom/android/server/am/ActivityManagerService;->mScreenStatusRequest:Z
    invoke-static {v4, v5}, Lcom/android/server/am/ActivityManagerService;->access$1002(Lcom/android/server/am/ActivityManagerService;Z)Z

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    #getter for: Lcom/android/server/am/ActivityManagerService;->mScreenStatusRequest:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_70

    const-string v4, "ActivityManager"

    const-string v5, "Screen Status request is ON"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v4, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    if-ltz v3, :cond_a

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.stk.idle_screen"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v4, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6a

    const-string v4, "SCREEN_IDLE"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_62
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_a

    :cond_6a
    const-string v4, "SCREEN_IDLE"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_62

    :cond_70
    const-string v4, "ActivityManager"

    const-string v5, "Screen Status request is OFF"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.CHECK_SIOP_LEVEL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "check_siop_level_level"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/android/server/am/ActivityManagerService;->mSIOPLevel:I
    invoke-static {v4, v5}, Lcom/android/server/am/ActivityManagerService;->access$1102(Lcom/android/server/am/ActivityManagerService;I)I

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    #getter for: Lcom/android/server/am/ActivityManagerService;->mSIOPLevel:I
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$1100(Lcom/android/server/am/ActivityManagerService;)I

    move-result v4

    if-eq v4, v6, :cond_b1

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    #getter for: Lcom/android/server/am/ActivityManagerService;->mCheckSIOPLevelList:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$1200(Lcom/android/server/am/ActivityManagerService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "check_siop_level_list"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    #setter for: Lcom/android/server/am/ActivityManagerService;->mCheckSIOPLevelList:Ljava/util/HashMap;
    invoke-static {v5, v4}, Lcom/android/server/am/ActivityManagerService;->access$1202(Lcom/android/server/am/ActivityManagerService;Ljava/util/HashMap;)Ljava/util/HashMap;

    :cond_b1
    const-string v4, "checkingSIOP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSIOPLevel is changed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    #getter for: Lcom/android/server/am/ActivityManagerService;->mSIOPLevel:I
    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->access$1100(Lcom/android/server/am/ActivityManagerService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a
.end method
