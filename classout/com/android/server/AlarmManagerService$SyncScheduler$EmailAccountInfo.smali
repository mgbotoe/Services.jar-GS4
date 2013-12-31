.class Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService$SyncScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmailAccountInfo"
.end annotation


# instance fields
.field public countOfLastSyncTime:J

.field public countOfLastTrigTime:J

.field public id:J

.field public lastSyncTime:J

.field public nextSyncTime:J

.field public repeatInterval:J

.field final synthetic this$1:Lcom/android/server/AlarmManagerService$SyncScheduler;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService$SyncScheduler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->this$1:Lcom/android/server/AlarmManagerService$SyncScheduler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->clear()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/AlarmManagerService$SyncScheduler;JJJ)V
    .registers 12

    iput-object p1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->this$1:Lcom/android/server/AlarmManagerService$SyncScheduler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->id:J

    iput-wide p4, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->lastSyncTime:J

    invoke-static {p6, p7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->repeatInterval:J

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->lastSyncTime:J

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->repeatInterval:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->nextSyncTime:J

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->clear()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->setId(J)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->update(JJ)V

    return-void
.end method

.method private clear()V
    .registers 5

    const-wide/16 v2, 0x0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->id:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->lastSyncTime:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->nextSyncTime:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->repeatInterval:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->countOfLastSyncTime:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->countOfLastTrigTime:J

    return-void
.end method

.method private setId(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->id:J

    return-void
.end method

.method private update(JJ)V
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_8

    iput-wide p3, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->repeatInterval:J

    :cond_8
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->lastSyncTime:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_15

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->countOfLastSyncTime:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->countOfLastSyncTime:J

    :cond_15
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->lastSyncTime:J

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->lastSyncTime:J

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->repeatInterval:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->nextSyncTime:J

    return-void
.end method


# virtual methods
.method public getRepeatInterval()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->repeatInterval:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "EmailAccountInfo{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", last: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->lastSyncTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->lastSyncTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), next: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->nextSyncTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", interval: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->repeatInterval:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", count(S:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->countOfLastSyncTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",T:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->countOfLastTrigTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
