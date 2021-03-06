.class Lcom/android/server/AlarmManagerService$LongLifeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LongLifeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/AlarmManagerService$LongLifeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LONGLIFE_APPLICATION_MODIFYING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/AlarmManagerService;->access$600(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LongLifeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLLM:Lcom/jpn/android/LongLifeManager;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3900(Lcom/android/server/AlarmManagerService;)Lcom/jpn/android/LongLifeManager;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LongLifeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLLM:Lcom/jpn/android/LongLifeManager;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3900(Lcom/android/server/AlarmManagerService;)Lcom/jpn/android/LongLifeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jpn/android/LongLifeManager;->isLongLifeMode()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LongLifeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLLM:Lcom/jpn/android/LongLifeManager;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3900(Lcom/android/server/AlarmManagerService;)Lcom/jpn/android/LongLifeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jpn/android/LongLifeManager;->getETWSReceived()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LongLifeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLLM:Lcom/jpn/android/LongLifeManager;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3900(Lcom/android/server/AlarmManagerService;)Lcom/jpn/android/LongLifeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jpn/android/LongLifeManager;->isLongLifeMode()Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_38
    :goto_38
    return-void

    :cond_39
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pending Alarm Start : size("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$LongLifeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mPendingAlarmList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$4000(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jpn/android/LongLifeManager$Elog;->logV(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LongLifeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mPendingAlarmList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$4000(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$PrevAlarm;

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LongLifeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget v1, v8, Lcom/android/server/AlarmManagerService$PrevAlarm;->mType:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v8, Lcom/android/server/AlarmManagerService$PrevAlarm;->mInterval:J

    iget-object v6, v8, Lcom/android/server/AlarmManagerService$PrevAlarm;->mOperation:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->setRepeating(IJJLandroid/app/PendingIntent;)V

    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRepeating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/server/AlarmManagerService$PrevAlarm;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jpn/android/LongLifeManager$Elog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    :cond_b1
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LongLifeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mPendingAlarmList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$4000(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_38

    :cond_bc
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e3

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LongLifeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLLM:Lcom/jpn/android/LongLifeManager;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3900(Lcom/android/server/AlarmManagerService;)Lcom/jpn/android/LongLifeManager;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LongLifeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLLM:Lcom/jpn/android/LongLifeManager;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3900(Lcom/android/server/AlarmManagerService;)Lcom/jpn/android/LongLifeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jpn/android/LongLifeManager;->isLongLifeMode()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LongLifeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #calls: Lcom/android/server/AlarmManagerService;->removeDisallowedAlarmList()V
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$4100(Lcom/android/server/AlarmManagerService;)V

    goto/16 :goto_38

    :cond_e3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LONGLIFE_APPLICATION_MODIFYING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LongLifeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLLM:Lcom/jpn/android/LongLifeManager;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3900(Lcom/android/server/AlarmManagerService;)Lcom/jpn/android/LongLifeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jpn/android/LongLifeManager;->isLongLifeMode()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LongLifeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #calls: Lcom/android/server/AlarmManagerService;->removeDisallowedAlarmList()V
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$4100(Lcom/android/server/AlarmManagerService;)V

    goto/16 :goto_38
.end method
