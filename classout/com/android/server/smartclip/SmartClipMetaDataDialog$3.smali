.class Lcom/android/server/smartclip/SmartClipMetaDataDialog$3;
.super Ljava/lang/Object;
.source "SmartClipMetaDataDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/smartclip/SmartClipMetaDataDialog;->show()V
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

    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$3;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "showSmartClipMetaDataDialog"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$3;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    #getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$500(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$3;->this$0:Lcom/android/server/smartclip/SmartClipMetaDataDialog;

    #getter for: Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->access$500(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_18
    return-void
.end method
