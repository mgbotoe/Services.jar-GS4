.class Lcom/android/server/am/ToolkitTabWidget$TabSpec$3;
.super Ljava/lang/Object;
.source "ToolkitTabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ToolkitTabWidget$TabSpec;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;


# direct methods
.method constructor <init>(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$3;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5

    if-eqz p2, :cond_b

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$3;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    iget-object v0, v0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$3;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    #setter for: Lcom/android/server/am/ToolkitTabWidget;->mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;
    invoke-static {v0, v1}, Lcom/android/server/am/ToolkitTabWidget;->access$402(Lcom/android/server/am/ToolkitTabWidget;Lcom/android/server/am/ToolkitTabWidget$TabSpec;)Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    :cond_b
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$3;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    iget-object v0, v0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$3;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    #getter for: Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mObject:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->access$1100(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)Ljava/lang/Object;

    move-result-object v1

    #calls: Lcom/android/server/am/ToolkitTabWidget;->notifyFocusChange(Ljava/lang/Object;Z)V
    invoke-static {v0, v1, p2}, Lcom/android/server/am/ToolkitTabWidget;->access$1200(Lcom/android/server/am/ToolkitTabWidget;Ljava/lang/Object;Z)V

    return-void
.end method
