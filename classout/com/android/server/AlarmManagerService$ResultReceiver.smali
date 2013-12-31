.class Lcom/android/server/AlarmManagerService$ResultReceiver;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v22

    monitor-enter v22

    :try_start_9
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2800()Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.android.email"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    const-string v2, "com.android.email.intent.extra.ACCOUNT"

    const-wide/16 v5, -0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v2, "com.android.email.intent.extra.ACCOUNT_INFO"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v7

    const-wide/16 v8, 0x2

    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2900()Z

    move-result v2

    if-eqz v2, :cond_59

    const-string v2, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(Email) Trigger ID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    const-wide/16 v5, -0x2

    cmp-long v2, v3, v5

    if-eqz v2, :cond_7c

    if-eqz v7, :cond_7c

    array-length v2, v7

    int-to-long v5, v2

    const-wide/16 v23, 0x2

    rem-long v5, v5, v23
    :try_end_67
    .catchall {:try_start_9 .. :try_end_67} :catchall_182

    const-wide/16 v23, 0x0

    cmp-long v2, v5, v23

    if-nez v2, :cond_7c

    :try_start_6d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mSyncScheduler:Lcom/android/server/AlarmManagerService$SyncScheduler;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$3000(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$SyncScheduler;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/AlarmManagerService$SyncScheduler;->updateEmailSyncStatusLocked(JJ[J)V
    :try_end_7c
    .catchall {:try_start_6d .. :try_end_7c} :catchall_182
    .catch Ljava/lang/RuntimeException; {:try_start_6d .. :try_end_7c} :catch_17c
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_7c} :catch_185

    :cond_7c
    :goto_7c
    const/16 v16, 0x0

    const/4 v15, 0x0

    :goto_7f
    :try_start_7f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v15, v2, :cond_af

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_18b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/AlarmManagerService$InFlight;

    :cond_af
    if-eqz v16, :cond_18f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    move-object/from16 v0, v16

    iget-object v11, v0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget v2, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    iget v2, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-gtz v2, :cond_d2

    const/4 v2, 0x0

    iput v2, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    iget-wide v5, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    iget-wide v0, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    move-wide/from16 v23, v0

    sub-long v23, v17, v23

    add-long v5, v5, v23

    iput-wide v5, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    :cond_d2
    move-object/from16 v0, v16

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    iget v2, v14, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v14, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    iget v2, v14, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-gtz v2, :cond_ef

    const/4 v2, 0x0

    iput v2, v14, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    iget-wide v5, v14, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    iget-wide v0, v14, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    move-wide/from16 v23, v0

    sub-long v23, v17, v23

    add-long v5, v5, v23

    iput-wide v5, v14, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J
    :try_end_ef
    .catchall {:try_start_7f .. :try_end_ef} :catchall_182

    :cond_ef
    :goto_ef
    const/16 v19, 0x0

    const/16 v21, 0x0

    :try_start_f3
    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$600(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    const/16 v2, 0x80

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v0, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1900(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v5, Ljava/lang/Integer;

    move/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_123
    .catchall {:try_start_f3 .. :try_end_123} :catchall_182
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f3 .. :try_end_123} :catch_1bd

    :goto_123
    :try_start_123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mBlockedUids:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$3200(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v5, Ljava/lang/Integer;

    move/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1da

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mBlockedUids:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$3200(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v5, Ljava/lang/Integer;

    move/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_14a
    :goto_14a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;)I

    move-result v2

    if-eqz v2, :cond_17a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_291

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v2}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;)V

    :cond_17a
    :goto_17a
    monitor-exit v22

    return-void

    :catch_17c
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_7c

    :catchall_182
    move-exception v2

    monitor-exit v22
    :try_end_184
    .catchall {:try_start_123 .. :try_end_184} :catchall_182

    throw v2

    :catch_185
    move-exception v12

    :try_start_186
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7c

    :cond_18b
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_7f

    :cond_18f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$3100(Lcom/android/server/AlarmManagerService;)Lcom/android/internal/util/LocalLog;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No in-flight alarm for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    goto/16 :goto_ef

    :catch_1bd
    move-exception v13

    const-string v2, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSendFinished NameNotFoundException Pkg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_123

    :cond_1da
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;)I

    move-result v2

    if-lez v2, :cond_14a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1610(Lcom/android/server/AlarmManagerService;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;)I

    move-result v2

    if-nez v2, :cond_14a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1700(Lcom/android/server/AlarmManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_14a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$3100(Lcom/android/server/AlarmManagerService;)Lcom/android/internal/util/LocalLog;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finished all broadcasts with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " remaining inflights"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    const/4 v15, 0x0

    :goto_23f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v15, v2, :cond_284

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$3100(Lcom/android/server/AlarmManagerService;)Lcom/android/internal/util/LocalLog;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Remaining #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_23f

    :cond_284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_28f
    .catchall {:try_start_186 .. :try_end_28f} :catchall_182

    goto/16 :goto_14a

    :cond_291
    :try_start_291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$3100(Lcom/android/server/AlarmManagerService;)Lcom/android/internal/util/LocalLog;

    move-result-object v2

    const-string v5, "Alarm wakelock still held but sent queue empty"

    invoke-virtual {v2, v5}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1700(Lcom/android/server/AlarmManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_2aa
    .catchall {:try_start_291 .. :try_end_2aa} :catchall_182
    .catch Ljava/lang/IllegalArgumentException; {:try_start_291 .. :try_end_2aa} :catch_2ac

    goto/16 :goto_17a

    :catch_2ac
    move-exception v13

    :try_start_2ad
    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2b0
    .catchall {:try_start_2ad .. :try_end_2b0} :catchall_182

    goto/16 :goto_17a
.end method
