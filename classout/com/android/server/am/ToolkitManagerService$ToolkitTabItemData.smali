.class Lcom/android/server/am/ToolkitManagerService$ToolkitTabItemData;
.super Ljava/lang/Object;
.source "ToolkitManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ToolkitManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToolkitTabItemData"
.end annotation


# instance fields
.field mRequestFocus:Z

.field mToolkitTabItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

.field final synthetic this$0:Lcom/android/server/am/ToolkitManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ToolkitManagerService;Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;Z)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItemData;->this$0:Lcom/android/server/am/ToolkitManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItemData;->mRequestFocus:Z

    iput-object p2, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItemData;->mToolkitTabItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    iput-boolean p3, p0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItemData;->mRequestFocus:Z

    return-void
.end method
