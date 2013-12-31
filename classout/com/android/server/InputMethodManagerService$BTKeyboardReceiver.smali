.class Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BTKeyboardReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    const/4 v7, 0x2

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InputMethodService onReceive() intentAction"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9f

    const-string v3, "android.bluetooth.profile.extra.STATE"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "android.bluetooth.profile.extra.isKeyboard"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive() getIntExtra "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive() getBooleanExtra "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_9f

    if-ne v0, v7, :cond_d6

    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->access$376(I)I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Framework_NTTVoiceInput"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bc

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService;->setDefaultIMEforJapaneseKeyboard()V

    :goto_7b
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService;->hideKeyboardDialog()V

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v4}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$500()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9f

    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$500()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d0

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v3, v7}, Lcom/android/server/InputMethodManagerService;->showKeyboardNotiDailog(I)V

    :cond_9f
    :goto_9f
    const-string v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InputMethodService onReceive() keyboardState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$300()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_bc
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    #calls: Lcom/android/server/InputMethodManagerService;->isChineseIMEinstalled()Z
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$400(Lcom/android/server/InputMethodManagerService;)Z

    move-result v3

    if-eqz v3, :cond_ca

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService;->setDefaultIMEforChineseKeyboard()V

    goto :goto_7b

    :cond_ca
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService;->setDefaultIMEForKeyboard()V

    goto :goto_7b

    :cond_d0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService;->showtoastkeyboardconnected()V

    goto :goto_9f

    :cond_d6
    const/4 v3, -0x3

    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$372(I)I

    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$600()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_ee

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "screen_brightness_mode"

    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$600()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_ee
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService;->hideKeyboardDialog()V

    invoke-static {v6}, Lcom/android/server/InputMethodManagerService;->access$602(I)I

    goto :goto_9f
.end method
