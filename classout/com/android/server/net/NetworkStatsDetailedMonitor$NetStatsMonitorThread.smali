.class Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;
.super Ljava/lang/Thread;
.source "NetworkStatsDetailedMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsDetailedMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetStatsMonitorThread"
.end annotation


# static fields
.field private static final SLEEP_DURATION:J = 0x3e8L

.field private static final THREAD_NAME:Ljava/lang/String; = "NetStatsMonitorThread"


# instance fields
.field mStop:Z

.field final synthetic this$0:Lcom/android/server/net/NetworkStatsDetailedMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkStatsDetailedMonitor;)V
    .registers 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;->this$0:Lcom/android/server/net/NetworkStatsDetailedMonitor;

    const-string v0, "NetStatsMonitorThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;->mStop:Z

    iput-boolean v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;->mStop:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const-wide/16 v8, 0x3e8

    const-string v4, "NetworkStatsEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(xxxz) NetStatsMonitorThread>> run: Begin..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->access$100(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    :goto_22
    iget-boolean v4, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;->mStop:Z

    if-eqz v4, :cond_4e

    const-string v4, "NetworkStatsEx"

    const-string v5, "(xxxz) NetStatsMonitorThread>> run: set stop, exiting..."

    #calls: Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->access$100(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2d
    const-string v4, "NetworkStatsEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(xxxz) NetStatsMonitorThread>> run: End!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->access$100(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "NetworkStatsEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(xxxz) NetStatsMonitorThread>> run: polling... now="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", last="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;->this$0:Lcom/android/server/net/NetworkStatsDetailedMonitor;

    #getter for: Lcom/android/server/net/NetworkStatsDetailedMonitor;->mLastPollTime:J
    invoke-static {v6}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->access$200(Lcom/android/server/net/NetworkStatsDetailedMonitor;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", elapsed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;->this$0:Lcom/android/server/net/NetworkStatsDetailedMonitor;

    #getter for: Lcom/android/server/net/NetworkStatsDetailedMonitor;->mLastPollTime:J
    invoke-static {v6}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->access$200(Lcom/android/server/net/NetworkStatsDetailedMonitor;)J

    move-result-wide v6

    sub-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->access$100(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;->this$0:Lcom/android/server/net/NetworkStatsDetailedMonitor;

    const/4 v5, 0x3

    const/4 v6, 0x1

    #calls: Lcom/android/server/net/NetworkStatsDetailedMonitor;->performPoll(IZ)V
    invoke-static {v4, v5, v6}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->access$300(Lcom/android/server/net/NetworkStatsDetailedMonitor;IZ)V

    iget-boolean v4, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;->mStop:Z

    if-eqz v4, :cond_9f

    const-string v4, "NetworkStatsEx"

    const-string v5, "(xxxz) NetStatsMonitorThread>> run: set stop, exiting... 2"

    #calls: Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->access$100(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    :cond_9f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    :try_start_a5
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_a8} :catch_e7

    :goto_a8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v2

    cmp-long v4, v0, v8

    if-lez v4, :cond_22

    const-string v4, "NetworkStatsEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(xxxz) NetStatsMonitorThread>> run: sleeped more than "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; elapsed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->access$100(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_22

    :catch_e7
    move-exception v4

    goto :goto_a8
.end method

.method public setStop()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;->mStop:Z

    return-void
.end method
