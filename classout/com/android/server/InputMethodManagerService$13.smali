.class Lcom/android/server/InputMethodManagerService$13;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;->showSIPInformationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$13;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    :try_start_0
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$300()I

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$500()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$13;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$500()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$13;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$500()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_27

    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$13;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v0}, Lcom/android/server/InputMethodManagerService;->hideSIPInformationDialog()V

    return-void

    :catch_27
    move-exception v0

    goto :goto_21
.end method
