.class Lcom/android/server/am/ToolkitManagerService$ReceiveData;
.super Ljava/lang/Object;
.source "ToolkitManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ToolkitManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiveData"
.end annotation


# instance fields
.field private final RETRY_TIME:I

.field mBundle:Landroid/os/Bundle;

.field mItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

.field mRetryCount:I

.field mType:I

.field final synthetic this$0:Lcom/android/server/am/ToolkitManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ToolkitManagerService;Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;ILandroid/os/Bundle;)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/am/ToolkitManagerService$ReceiveData;->this$0:Lcom/android/server/am/ToolkitManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/am/ToolkitManagerService$ReceiveData;->RETRY_TIME:I

    iput-object p2, p0, Lcom/android/server/am/ToolkitManagerService$ReceiveData;->mItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    iput-object p4, p0, Lcom/android/server/am/ToolkitManagerService$ReceiveData;->mBundle:Landroid/os/Bundle;

    iput p3, p0, Lcom/android/server/am/ToolkitManagerService$ReceiveData;->mType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ToolkitManagerService$ReceiveData;->mRetryCount:I

    return-void
.end method


# virtual methods
.method checkFailed()Z
    .registers 3

    iget v0, p0, Lcom/android/server/am/ToolkitManagerService$ReceiveData;->mRetryCount:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method fail()V
    .registers 2

    iget v0, p0, Lcom/android/server/am/ToolkitManagerService$ReceiveData;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ToolkitManagerService$ReceiveData;->mRetryCount:I

    return-void
.end method
