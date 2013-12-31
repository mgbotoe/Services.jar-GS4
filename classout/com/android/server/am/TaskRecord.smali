.class Lcom/android/server/am/TaskRecord;
.super Lcom/android/server/am/ThumbnailHolder;
.source "TaskRecord.java"


# instance fields
.field final affinity:Ljava/lang/String;

.field affinityIntent:Landroid/content/Intent;

.field askedCompatMode:Z

.field intent:Landroid/content/Intent;

.field lastActiveTime:J

.field numActivities:I

.field origActivity:Landroid/content/ComponentName;

.field realActivity:Landroid/content/ComponentName;

.field rootWasReset:Z

.field stringName:Ljava/lang/String;

.field final taskId:I

.field userId:I


# direct methods
.method constructor <init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/server/am/ThumbnailHolder;-><init>()V

    iput p1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {p0, p3, p2}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 11

    const/16 v7, 0x80

    const/16 v6, 0x7d

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/server/am/TaskRecord;->numActivities:I

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v0, :cond_12

    iget v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    if-eqz v0, :cond_33

    :cond_12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "numActivities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->numActivities:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " rootWasReset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " userId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_33
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_44

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_44
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_66

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "intent={"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_66
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_88

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "affinityIntent={"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_88
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_9d

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "origActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9d
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_b2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "realActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b2
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    if-nez v0, :cond_c3

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "askedCompatMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_c3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastThumbnail="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " lastDescription="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ThumbnailHolder;->lastDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastActiveTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " (inactive for "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getInactiveDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "s)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->removeWindowInfo(I)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method getInactiveDuration()J
    .registers 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .registers 9

    const/high16 v5, 0x800

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-nez v3, :cond_62

    if-eqz p1, :cond_33

    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_17

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_23

    :cond_17
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    move-object p1, v0

    :cond_23
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_33

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/2addr v3, v5

    if-eqz v3, :cond_33

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_33
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz p1, :cond_60

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    :goto_3b
    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    :goto_3f
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_51

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x20

    and-int/2addr v3, v4

    if-eqz v3, :cond_51

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    :cond_51
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_5f

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/am/TaskRecord;->userId:I

    :cond_5f
    return-void

    :cond_60
    move-object v3, v4

    goto :goto_3b

    :cond_62
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_86

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    goto :goto_3f

    :cond_86
    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    goto :goto_3f
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    :goto_6
    return-object v1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "TaskRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_4c

    const-string v1, " A "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_36
    const-string v1, " U "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    goto :goto_6

    :cond_4c
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_63

    const-string v1, " I "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    :cond_63
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_7a

    const-string v1, " aI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    :cond_7a
    const-string v1, " ??"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36
.end method

.method touchActiveTime()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    return-void
.end method
