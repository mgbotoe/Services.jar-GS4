.class public Lcom/android/server/ThermalService$Notify;
.super Ljava/lang/Object;
.source "ThermalService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThermalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Notify"
.end annotation


# instance fields
.field private final cQueue:Ljava/util/concurrent/BlockingQueue;

.field final synthetic this$0:Lcom/android/server/ThermalService;


# direct methods
.method constructor <init>(Lcom/android/server/ThermalService;Ljava/util/concurrent/BlockingQueue;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/ThermalService$Notify;->this$0:Lcom/android/server/ThermalService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/ThermalService$Notify;->cQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method public consume(Landroid/thermal/ThermalEvent;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.THERMAL_ZONE_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "name"

    iget-object v2, p1, Landroid/thermal/ThermalEvent;->zoneName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "zone"

    iget v2, p1, Landroid/thermal/ThermalEvent;->zoneID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "event"

    iget v2, p1, Landroid/thermal/ThermalEvent;->eventType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "state"

    iget v2, p1, Landroid/thermal/ThermalEvent;->thermalLevel:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "temp"

    iget v2, p1, Landroid/thermal/ThermalEvent;->zoneTemp:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/ThermalService$Notify;->this$0:Lcom/android/server/ThermalService;

    #getter for: Lcom/android/server/ThermalService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/ThermalService;->access$200(Lcom/android/server/ThermalService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public run()V
    .registers 4

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ThermalService$Notify;->cQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/thermal/ThermalEvent;

    invoke-virtual {p0, v1}, Lcom/android/server/ThermalService$Notify;->consume(Landroid/thermal/ThermalEvent;)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_0

    :catch_c
    move-exception v0

    invoke-static {}, Lcom/android/server/ThermalService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "caught InterruptedException in run()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
