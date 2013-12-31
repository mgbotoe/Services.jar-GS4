.class Lcom/android/server/sec/ClippedDataPickerDialog$4;
.super Landroid/content/BroadcastReceiver;
.source "ClippedDataPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/ClippedDataPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/ClippedDataPickerDialog;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_18

    const-string v2, "ClipboardServiceEx"

    const-string v3, "clipboard dialog get ACTION_CONFIGURATION_CHANGED"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$700(Lcom/android/server/sec/ClippedDataPickerDialog;)Z

    move-result v2

    if-nez v2, :cond_3a

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mShouldBeDismissed:Z
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$800(Lcom/android/server/sec/ClippedDataPickerDialog;)Z

    move-result v2

    if-nez v2, :cond_3a

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->showUIDataDialog()V

    :cond_39
    :goto_39
    return-void

    :cond_3a
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z
    invoke-static {v2, v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$702(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z

    goto :goto_39

    :cond_41
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_148

    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_6b

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reason :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    const-string v2, "homekey"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_7e

    const-string v2, "ClipboardServiceEx"

    const-string v3, "clipboard dialog get ACTION_CLOSE_SYSTEM_DIALOGS"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mShouldBeDismissed:Z
    invoke-static {v2, v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$802(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->dismiss()V

    goto :goto_39

    :cond_ac
    const-string v2, "recentapps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ee

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_bf

    const-string v2, "ClipboardServiceEx"

    const-string v3, "clipboard dialog get SYSTEM_DIALOG_REASON_RECENT_APPS"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bf
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mShouldBeDismissed:Z
    invoke-static {v2, v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$802(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->dismiss()V

    goto/16 :goto_39

    :cond_ee
    const-string v2, "globalactions"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_117

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->dismiss()V

    goto/16 :goto_39

    :cond_117
    if-nez v1, :cond_39

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mShouldBeDismissed:Z
    invoke-static {v2, v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$802(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->dismiss()V

    goto/16 :goto_39

    :cond_148
    const-string v2, "DismissClipboardDialogFromIMMService"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18f

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z
    invoke-static {v2, v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$702(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_160

    const-string v2, "ClipboardServiceEx"

    const-string v3, "clipboard dialog get DismissClipboardDialogFromIMMService"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_160
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mShouldBeDismissed:Z
    invoke-static {v2, v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$802(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->dismiss()V

    goto/16 :goto_39

    :cond_18f
    const-string v2, "DismissClipboardDialogFromPhoneStatusBar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d1

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_1a2

    const-string v2, "ClipboardServiceEx"

    const-string v3, "clipboard dialog get DismissClipboardDialogFromPhoneStatusBar"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a2
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mShouldBeDismissed:Z
    invoke-static {v2, v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$802(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->dismiss()V

    goto/16 :goto_39

    :cond_1d1
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_1e4

    const-string v2, "ClipboardServiceEx"

    const-string v3, "clipboard dialog get ACTION_USER_PRESENT"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e4
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mShouldBeDismissed:Z
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$800(Lcom/android/server/sec/ClippedDataPickerDialog;)Z

    move-result v2

    if-nez v2, :cond_39

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->showUIDataDialog()V

    goto/16 :goto_39
.end method
