.class Lcom/android/server/am/ActivityStack$DelayedRotationRequest;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DelayedRotationRequest"
.end annotation


# instance fields
.field delayMillis:I

.field next:Lcom/android/server/am/ActivityRecord;

.field requested:Z

.field requestor:Lcom/android/server/am/ActivityRecord;

.field final synthetic this$0:Lcom/android/server/am/ActivityStack;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;I)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/am/ActivityStack$DelayedRotationRequest;->this$0:Lcom/android/server/am/ActivityStack;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/ActivityStack$DelayedRotationRequest;->requestor:Lcom/android/server/am/ActivityRecord;

    iput-object p3, p0, Lcom/android/server/am/ActivityStack$DelayedRotationRequest;->next:Lcom/android/server/am/ActivityRecord;

    iput p4, p0, Lcom/android/server/am/ActivityStack$DelayedRotationRequest;->delayMillis:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack$DelayedRotationRequest;->requested:Z

    return-void
.end method
