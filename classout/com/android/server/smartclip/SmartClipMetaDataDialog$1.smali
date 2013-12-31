.class Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "SmartClipMetaDataDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SmartClipMetaDataDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

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

    if-eqz v2, :cond_43

    const-string v2, "SmartClipMetaDataDialog"

    const-string v3, "SmartClipMetaDataDialog get ACTION_CONFIGURATION_CHANGED"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    #getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mCalledDismissIntentFromSIPFlag:Z
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$100(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Z

    move-result v2

    if-nez v2, :cond_3c

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    #getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    #getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mShouldBeDismissed:Z
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$300(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Z

    move-result v2

    if-nez v2, :cond_3c

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    #getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    #getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    invoke-static {v3}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$400(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;->showMetaDataTray(Lcom/samsung/android/smartclip/SmartClipDataRepository;)V

    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mCalledDismissIntentFromSIPFlag:Z
    invoke-static {v2, v3}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$102(Lcom/android/server/smartclip/SmartClipMetaDataDialog;Z)Z

    goto :goto_3b

    :cond_43
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e1

    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmartClipMetaDataDialog"

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

    const-string v2, "homekey"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8f

    const-string v2, "SmartClipMetaDataDialog"

    const-string v3, "SmartClipMetaDataDialog get ACTION_CLOSE_SYSTEM_DIALOGS"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    #getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    #setter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mShouldBeDismissed:Z
    invoke-static {v2, v5}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$302(Lcom/android/server/smartclip/SmartClipMetaDataDialog;Z)Z

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    #getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;->dismissMetaDataTray()V

    goto :goto_3b

    :cond_8f
    const-string v2, "recentapps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    const-string v2, "SmartClipMetaDataDialog"

    const-string v3, "SmartClipMetaDataDialog get SYSTEM_DIALOG_REASON_RECENT_APPS"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    #getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    #setter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mShouldBeDismissed:Z
    invoke-static {v2, v5}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$302(Lcom/android/server/smartclip/SmartClipMetaDataDialog;Z)Z

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    #getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;->dismissMetaDataTray()V

    goto :goto_3b

    :cond_b5
    const-string v2, "globalactions"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c7

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    #getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    if-eqz v2, :cond_3b

    goto/16 :goto_3b

    :cond_c7
    if-nez v1, :cond_3b

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    #getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    #setter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mShouldBeDismissed:Z
    invoke-static {v2, v5}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$302(Lcom/android/server/smartclip/SmartClipMetaDataDialog;Z)Z

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    #getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;->dismissMetaDataTray()V

    goto/16 :goto_3b

    :cond_e1
    const-string v2, "DismissSmartClipDialogFromIMMService"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10d

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    #setter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mCalledDismissIntentFromSIPFlag:Z
    invoke-static {v2, v5}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$102(Lcom/android/server/smartclip/SmartClipMetaDataDialog;Z)Z

    const-string v2, "SmartClipMetaDataDialog"

    const-string v3, "SmartClipMetaDataDialog get DismissSmartClipDialogFromIMMService"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    #getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    #setter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mShouldBeDismissed:Z
    invoke-static {v2, v5}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$302(Lcom/android/server/smartclip/SmartClipMetaDataDialog;Z)Z

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    #getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;->dismissMetaDataTray()V

    goto/16 :goto_3b

    :cond_10d
    const-string v2, "DismissSmartClipDialogFromPhoneStatusBar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_134

    const-string v2, "SmartClipMetaDataDialog"

    const-string v3, "SmartClipMetaDataDialog get DismissSmartClipDialogFromPhoneStatusBar"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    #getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    #setter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mShouldBeDismissed:Z
    invoke-static {v2, v5}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$302(Lcom/android/server/smartclip/SmartClipMetaDataDialog;Z)Z

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    #getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;->dismissMetaDataTray()V

    goto/16 :goto_3b

    :cond_134
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15c

    const-string v2, "SmartClipMetaDataDialog"

    const-string v3, "SmartClipMetaDataDialog get ACTION_USER_PRESENT"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    #getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    #getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    #getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    invoke-static {v3}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$400(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;->showMetaDataTray(Lcom/samsung/android/smartclip/SmartClipDataRepository;)V

    goto/16 :goto_3b

    :cond_15c
    const-string v2, "com.sec.android.intent.action.HOME_RESUME"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    const-string v2, "SmartClipMetaDataDialog"

    const-string v3, "SmartClipMetaDataDialog get com.sec.android.intent.action.HOME_RESUME"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    #getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    #getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;->dismissMetaDataTray()V

    goto/16 :goto_3b
.end method
