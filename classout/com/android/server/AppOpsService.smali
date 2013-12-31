.class public Lcom/android/server/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsService$Callback;,
        Lcom/android/server/AppOpsService$Op;,
        Lcom/android/server/AppOpsService$Ops;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "AppOps"

.field static final WRITE_DELAY:J = 0x1b7740L


# instance fields
.field mContext:Landroid/content/Context;

.field final mFile:Landroid/util/AtomicFile;

.field final mHandler:Landroid/os/Handler;

.field final mModeWatchers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mOpModeWatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field final mPackageModeWatchers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field final mUidOps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AppOpsService$Ops;",
            ">;>;"
        }
    .end annotation
.end field

.field final mWriteRunner:Ljava/lang/Runnable;

.field mWriteScheduled:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    new-instance v0, Lcom/android/server/AppOpsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$1;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Ljava/util/HashMap;

    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->readState()V

    return-void
.end method

.method private collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/AppOpsService$Ops;",
            "[I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    if-nez p2, :cond_2a

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_9
    invoke-virtual {p1}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v0

    if-ge v9, v0, :cond_54

    invoke-virtual {p1, v9}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AppOpsService$Op;

    new-instance v0, Landroid/app/AppOpsManager$OpEntry;

    iget v1, v8, Lcom/android/server/AppOpsService$Op;->op:I

    iget v2, v8, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-wide v3, v8, Lcom/android/server/AppOpsService$Op;->time:J

    iget-wide v5, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v7, v8, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-direct/range {v0 .. v7}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJI)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_2a
    const/4 v9, 0x0

    :goto_2b
    array-length v0, p2

    if-ge v9, v0, :cond_54

    aget v0, p2, v9

    invoke-virtual {p1, v0}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AppOpsService$Op;

    if-eqz v8, :cond_51

    if-nez v10, :cond_3f

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :cond_3f
    new-instance v0, Landroid/app/AppOpsManager$OpEntry;

    iget v1, v8, Lcom/android/server/AppOpsService$Op;->op:I

    iget v2, v8, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-wide v3, v8, Lcom/android/server/AppOpsService$Op;->time:J

    iget-wide v5, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v7, v8, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-direct/range {v0 .. v7}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJI)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_51
    add-int/lit8 v9, v9, 0x1

    goto :goto_2b

    :cond_54
    return-object v10
.end method

.method private getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;
    .registers 7

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    invoke-direct {p0, v0, p1, p4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    goto :goto_7
.end method

.method private getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;
    .registers 6

    invoke-virtual {p1, p2}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    if-nez v0, :cond_14

    if-nez p3, :cond_c

    const/4 v1, 0x0

    :goto_b
    return-object v1

    :cond_c
    new-instance v0, Lcom/android/server/AppOpsService$Op;

    invoke-direct {v0, p2}, Lcom/android/server/AppOpsService$Op;-><init>(I)V

    invoke-virtual {p1, p2, v0}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    :cond_14
    if-eqz p3, :cond_19

    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    :cond_19
    move-object v1, v0

    goto :goto_b
.end method

.method private getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    .registers 13

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    if-nez v3, :cond_19

    if-nez p3, :cond_f

    move-object v2, v5

    :cond_e
    :goto_e
    return-object v2

    :cond_f
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v6, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v6, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_19
    if-nez p1, :cond_29

    const-string p2, "root"

    :cond_1d
    :goto_1d
    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$Ops;

    if-nez v2, :cond_e

    if-nez p3, :cond_30

    move-object v2, v5

    goto :goto_e

    :cond_29
    const/16 v6, 0x7d0

    if-ne p1, v6, :cond_1d

    const-string p2, "com.android.shell"

    goto :goto_1d

    :cond_30
    if-eqz p1, :cond_7b

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v4, -0x1

    :try_start_37
    iget-object v6, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v6, p2, v7}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_84
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_44} :catch_89

    move-result v4

    :goto_45
    if-eq v4, p1, :cond_78

    :try_start_47
    const-string v6, "AppOps"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad call: specified package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " under uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but it is really "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_47 .. :try_end_73} :catchall_84

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v2, v5

    goto :goto_e

    :cond_78
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_7b
    new-instance v2, Lcom/android/server/AppOpsService$Ops;

    invoke-direct {v2, p2, p1}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :catchall_84
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :catch_89
    move-exception v6

    goto :goto_45
.end method

.method private scheduleWriteLocked()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    return-void
.end method

.method private scheduleWriteNowLocked()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    :cond_7
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private verifyIncomingOp(I)V
    .registers 5

    if-ltz p1, :cond_7

    const/16 v0, 0x1f

    if-ge p1, v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad operation #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyIncomingUid(I)V
    .registers 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_6
.end method


# virtual methods
.method public checkOperation(IILjava/lang/String;)I
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    monitor-enter p0

    :try_start_8
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, p2, p3, v3}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v0

    if-nez v0, :cond_15

    monitor-exit p0

    :goto_14
    return v1

    :cond_15
    iget v1, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    goto :goto_14

    :catchall_19
    move-exception v1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16

    const-wide/16 v10, 0x0

    iget-object v8, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.DUMP"

    invoke-virtual {v8, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_35

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Permission Denial: can\'t dump ApOps service from from pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_34
    return-void

    :cond_35
    monitor-enter p0

    :try_start_36
    const-string v8, "Current AppOps Service state:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v0, 0x0

    :goto_40
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v0, v8, :cond_fc

    const-string v8, "  Uid "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {p2, v8}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v8, ":"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Ops;

    const-string v8, "    Package "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v6, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_87
    invoke-virtual {v6}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v8

    if-ge v2, v8, :cond_6b

    invoke-virtual {v6, v2}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Op;

    const-string v8, "      "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, v5, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v8}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, ": mode="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, v5, Lcom/android/server/AppOpsService$Op;->mode:I

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(I)V

    iget-wide v8, v5, Lcom/android/server/AppOpsService$Op;->time:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_c2

    const-string v8, "; time="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v5, Lcom/android/server/AppOpsService$Op;->time:J

    sub-long v8, v3, v8

    invoke-static {v8, v9, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v8, " ago"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_c2
    iget-wide v8, v5, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_d9

    const-string v8, "; rejectTime="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v5, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    sub-long v8, v3, v8

    invoke-static {v8, v9, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v8, " ago"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_d9
    iget v8, v5, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_e6

    const-string v8, " (running)"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_e3
    add-int/lit8 v2, v2, 0x1

    goto :goto_87

    :cond_e6
    const-string v8, "; duration="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, v5, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v8, v8

    invoke-static {v8, v9, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_e3

    :catchall_f5
    move-exception v8

    monitor-exit p0
    :try_end_f7
    .catchall {:try_start_36 .. :try_end_f7} :catchall_f5

    throw v8

    :cond_f8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_40

    :cond_fc
    :try_start_fc
    monitor-exit p0
    :try_end_fd
    .catchall {:try_start_fc .. :try_end_fd} :catchall_f5

    goto/16 :goto_34
.end method

.method public finishOperation(IILjava/lang/String;)V
    .registers 9

    const/4 v2, 0x1

    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_9
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v0

    if-nez v0, :cond_11

    monitor-exit p0

    :goto_10
    return-void

    :cond_11
    iget v1, v0, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-gt v1, v2, :cond_84

    iget v1, v0, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-ne v1, v2, :cond_33

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/AppOpsService$Op;->time:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    iget-wide v1, v0, Lcom/android/server/AppOpsService$Op;->time:J

    iget v3, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/AppOpsService$Op;->time:J

    :goto_2b
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/AppOpsService$Op;->nesting:I

    :goto_2e
    monitor-exit p0

    goto :goto_10

    :catchall_30
    move-exception v1

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_9 .. :try_end_32} :catchall_30

    throw v1

    :cond_33
    :try_start_33
    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finishing op nesting under-run: uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/server/AppOpsService$Op;->time:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nesting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/AppOpsService$Op;->nesting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    :cond_84
    iget v1, v0, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/AppOpsService$Op;->nesting:I
    :try_end_8a
    .catchall {:try_start_33 .. :try_end_8a} :catchall_30

    goto :goto_2e
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.GET_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    monitor-enter p0

    const/4 v4, 0x0

    :try_start_12
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    if-nez v0, :cond_1a

    monitor-exit p0

    :goto_19
    return-object v1

    :cond_1a
    invoke-direct {p0, v0, p3}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_25

    monitor-exit p0

    goto :goto_19

    :catchall_22
    move-exception v4

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_22

    throw v4

    :cond_25
    :try_start_25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/app/AppOpsManager$PackageOps;

    iget-object v4, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/AppOpsService$Ops;->uid:I

    invoke-direct {v3, v4, v5, v2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_22

    goto :goto_19
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    iget-object v8, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.GET_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    const/4 v4, 0x0

    monitor-enter p0

    const/4 v0, 0x0

    :goto_13
    :try_start_13
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v0, v8, :cond_57

    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_59

    move-result-object v1

    move-object v5, v4

    :goto_2c
    :try_start_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$Ops;

    invoke-direct {p0, v3, p1}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_61

    if-nez v5, :cond_5f

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_45
    .catchall {:try_start_2c .. :try_end_45} :catchall_5c

    :goto_45
    :try_start_45
    new-instance v7, Landroid/app/AppOpsManager$PackageOps;

    iget-object v8, v3, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget v9, v3, Lcom/android/server/AppOpsService$Ops;->uid:I

    invoke-direct {v7, v8, v9, v6}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_51
    move-object v5, v4

    goto :goto_2c

    :cond_53
    add-int/lit8 v0, v0, 0x1

    move-object v4, v5

    goto :goto_13

    :cond_57
    monitor-exit p0

    return-object v4

    :catchall_59
    move-exception v8

    :goto_5a
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_45 .. :try_end_5b} :catchall_59

    throw v8

    :catchall_5c
    move-exception v8

    move-object v4, v5

    goto :goto_5a

    :cond_5f
    move-object v4, v5

    goto :goto_45

    :cond_61
    move-object v4, v5

    goto :goto_51
.end method

.method public noteOperation(IILjava/lang/String;)I
    .registers 13

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    monitor-enter p0

    const/4 v6, 0x1

    :try_start_a
    invoke-direct {p0, p2, p3, v6}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v1

    if-nez v1, :cond_12

    monitor-exit p0

    :goto_11
    return v4

    :cond_12
    const/4 v4, 0x1

    invoke-direct {p0, v1, p1, v4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v0

    iget v4, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_60

    const-string v4, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Noting op not finished: uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pkg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v0, Lcom/android/server/AppOpsService$Op;->time:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " duration="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    const/4 v4, 0x0

    iput v4, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v2

    if-eq v2, p1, :cond_7f

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v3

    :goto_6e
    iget v4, v3, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eqz v4, :cond_81

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v4, v3, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    goto :goto_11

    :catchall_7c
    move-exception v4

    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_a .. :try_end_7e} :catchall_7c

    throw v4

    :cond_7f
    move-object v3, v0

    goto :goto_6e

    :cond_81
    :try_start_81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/AppOpsService$Op;->time:J

    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    monitor-exit p0
    :try_end_8c
    .catchall {:try_start_81 .. :try_end_8c} :catchall_7c

    move v4, v5

    goto :goto_11
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1c
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    :cond_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception v1

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public publish(Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v0, "appops"

    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x3

    const/4 v4, 0x0

    const-string v5, "n"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_c
    :goto_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_50

    if-ne v3, v7, :cond_1b

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_50

    :cond_1b
    if-eq v3, v7, :cond_c

    const/4 v4, 0x4

    if-eq v3, v4, :cond_c

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "uid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-virtual {p0, p1, v1}, Lcom/android/server/AppOpsService;->readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_c

    :cond_30
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <pkg>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_c

    :cond_50
    return-void
.end method

.method readState()V
    .registers 14

    const/4 v12, 0x3

    const/4 v9, 0x2

    const/4 v11, 0x1

    iget-object v8, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v8

    :try_start_6
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_76

    :try_start_7
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_1a2
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_c} :catch_4e

    move-result-object v3

    const/4 v4, 0x0

    :try_start_e
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const/4 v7, 0x0

    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_16
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v9, :cond_1e

    if-ne v6, v11, :cond_16

    :cond_1e
    if-eq v6, v9, :cond_79

    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v9, "no start tag found"

    invoke-direct {v7, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_196
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_28} :catch_28
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_28} :catch_a0
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_28} :catch_e6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_28} :catch_11e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_28} :catch_146
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_28} :catch_16e

    :catch_28
    move-exception v0

    :try_start_29
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_29 .. :try_end_41} :catchall_196

    if-nez v4, :cond_48

    :try_start_43
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_1a2

    :cond_48
    :try_start_48
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_1a2
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_1a5

    :goto_4b
    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_1a2

    :try_start_4c
    monitor-exit v8
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_76

    :goto_4d
    return-void

    :catch_4e
    move-exception v0

    :try_start_4f
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No existing app ops "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v10}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; starting empty"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_74
    .catchall {:try_start_4f .. :try_end_74} :catchall_1a2

    :try_start_74
    monitor-exit v8

    goto :goto_4d

    :catchall_76
    move-exception v7

    monitor-exit v8
    :try_end_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_76

    throw v7

    :cond_79
    :try_start_79
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    :cond_7d
    :goto_7d
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v11, :cond_10e

    if-ne v6, v12, :cond_8b

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v1, :cond_10e

    :cond_8b
    if-eq v6, v12, :cond_7d

    const/4 v7, 0x4

    if-eq v6, v7, :cond_7d

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "pkg"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c6

    invoke-virtual {p0, v2}, Lcom/android/server/AppOpsService;->readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_9f
    .catchall {:try_start_79 .. :try_end_9f} :catchall_196
    .catch Ljava/lang/IllegalStateException; {:try_start_79 .. :try_end_9f} :catch_28
    .catch Ljava/lang/NullPointerException; {:try_start_79 .. :try_end_9f} :catch_a0
    .catch Ljava/lang/NumberFormatException; {:try_start_79 .. :try_end_9f} :catch_e6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_79 .. :try_end_9f} :catch_11e
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_9f} :catch_146
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_79 .. :try_end_9f} :catch_16e

    goto :goto_7d

    :catch_a0
    move-exception v0

    :try_start_a1
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catchall {:try_start_a1 .. :try_end_b9} :catchall_196

    if-nez v4, :cond_c0

    :try_start_bb
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_c0
    .catchall {:try_start_bb .. :try_end_c0} :catchall_1a2

    :cond_c0
    :try_start_c0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_1a2
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_c4

    goto :goto_4b

    :catch_c4
    move-exception v7

    goto :goto_4b

    :cond_c6
    :try_start_c6
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <app-ops>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_e5
    .catchall {:try_start_c6 .. :try_end_e5} :catchall_196
    .catch Ljava/lang/IllegalStateException; {:try_start_c6 .. :try_end_e5} :catch_28
    .catch Ljava/lang/NullPointerException; {:try_start_c6 .. :try_end_e5} :catch_a0
    .catch Ljava/lang/NumberFormatException; {:try_start_c6 .. :try_end_e5} :catch_e6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c6 .. :try_end_e5} :catch_11e
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_e5} :catch_146
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c6 .. :try_end_e5} :catch_16e

    goto :goto_7d

    :catch_e6
    move-exception v0

    :try_start_e7
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ff
    .catchall {:try_start_e7 .. :try_end_ff} :catchall_196

    if-nez v4, :cond_106

    :try_start_101
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_106
    .catchall {:try_start_101 .. :try_end_106} :catchall_1a2

    :cond_106
    :try_start_106
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_109
    .catchall {:try_start_106 .. :try_end_109} :catchall_1a2
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_109} :catch_10b

    goto/16 :goto_4b

    :catch_10b
    move-exception v7

    goto/16 :goto_4b

    :cond_10e
    const/4 v4, 0x1

    if-nez v4, :cond_116

    :try_start_111
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_116
    .catchall {:try_start_111 .. :try_end_116} :catchall_1a2

    :cond_116
    :try_start_116
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_119
    .catchall {:try_start_116 .. :try_end_119} :catchall_1a2
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_119} :catch_11b

    goto/16 :goto_4b

    :catch_11b
    move-exception v7

    goto/16 :goto_4b

    :catch_11e
    move-exception v0

    :try_start_11f
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_137
    .catchall {:try_start_11f .. :try_end_137} :catchall_196

    if-nez v4, :cond_13e

    :try_start_139
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_13e
    .catchall {:try_start_139 .. :try_end_13e} :catchall_1a2

    :cond_13e
    :try_start_13e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_141
    .catchall {:try_start_13e .. :try_end_141} :catchall_1a2
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_141} :catch_143

    goto/16 :goto_4b

    :catch_143
    move-exception v7

    goto/16 :goto_4b

    :catch_146
    move-exception v0

    :try_start_147
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15f
    .catchall {:try_start_147 .. :try_end_15f} :catchall_196

    if-nez v4, :cond_166

    :try_start_161
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_166
    .catchall {:try_start_161 .. :try_end_166} :catchall_1a2

    :cond_166
    :try_start_166
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_169
    .catchall {:try_start_166 .. :try_end_169} :catchall_1a2
    .catch Ljava/io/IOException; {:try_start_166 .. :try_end_169} :catch_16b

    goto/16 :goto_4b

    :catch_16b
    move-exception v7

    goto/16 :goto_4b

    :catch_16e
    move-exception v0

    :try_start_16f
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_187
    .catchall {:try_start_16f .. :try_end_187} :catchall_196

    if-nez v4, :cond_18e

    :try_start_189
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_18e
    .catchall {:try_start_189 .. :try_end_18e} :catchall_1a2

    :cond_18e
    :try_start_18e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_191
    .catchall {:try_start_18e .. :try_end_191} :catchall_1a2
    .catch Ljava/io/IOException; {:try_start_18e .. :try_end_191} :catch_193

    goto/16 :goto_4b

    :catch_193
    move-exception v7

    goto/16 :goto_4b

    :catchall_196
    move-exception v7

    if-nez v4, :cond_19e

    :try_start_199
    iget-object v9, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V
    :try_end_19e
    .catchall {:try_start_199 .. :try_end_19e} :catchall_1a2

    :cond_19e
    :try_start_19e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1a1
    .catchall {:try_start_19e .. :try_end_1a1} :catchall_1a2
    .catch Ljava/io/IOException; {:try_start_19e .. :try_end_1a1} :catch_1a8

    :goto_1a1
    :try_start_1a1
    throw v7

    :catchall_1a2
    move-exception v7

    monitor-exit p0
    :try_end_1a4
    .catchall {:try_start_1a1 .. :try_end_1a4} :catchall_1a2

    :try_start_1a4
    throw v7
    :try_end_1a5
    .catchall {:try_start_1a4 .. :try_end_1a5} :catchall_76

    :catch_1a5
    move-exception v7

    goto/16 :goto_4b

    :catch_1a8
    move-exception v9

    goto :goto_1a1
.end method

.method readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    const-string v11, "n"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    :cond_f
    :goto_f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v10, 0x1

    if-eq v8, v10, :cond_c9

    const/4 v10, 0x3

    if-ne v8, v10, :cond_1f

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v4, :cond_c9

    :cond_1f
    const/4 v10, 0x3

    if-eq v8, v10, :cond_f

    const/4 v10, 0x4

    if-eq v8, v10, :cond_f

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v10, "op"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a8

    new-instance v2, Lcom/android/server/AppOpsService$Op;

    const/4 v10, 0x0

    const-string v11, "n"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v2, v10}, Lcom/android/server/AppOpsService$Op;-><init>(I)V

    const/4 v10, 0x0

    const-string v11, "m"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_50

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    :cond_50
    const/4 v10, 0x0

    const-string v11, "t"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5f

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v2, Lcom/android/server/AppOpsService$Op;->time:J

    :cond_5f
    const/4 v10, 0x0

    const-string v11, "r"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6e

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    :cond_6e
    const/4 v10, 0x0

    const-string v11, "d"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7d

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v2, Lcom/android/server/AppOpsService$Op;->duration:I

    :cond_7d
    iget-object v10, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    if-nez v5, :cond_91

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v10, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v10, v9, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_91
    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$Ops;

    if-nez v3, :cond_a1

    new-instance v3, Lcom/android/server/AppOpsService$Ops;

    invoke-direct {v3, p2, v9}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a1
    iget v10, v2, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v3, v10, v2}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    goto/16 :goto_f

    :cond_a8
    const-string v10, "AppOps"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown element under <pkg>: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f

    :cond_c9
    return-void
.end method

.method public setMode(IILjava/lang/String;I)V
    .registers 16

    const-wide/16 v9, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    monitor-enter p0

    const/4 v7, 0x1

    :try_start_f
    invoke-direct {p0, p1, p2, p3, v7}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    if-eqz v2, :cond_82

    iget v7, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eq v7, p4, :cond_82

    iput p4, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-object v7, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_30

    if-nez v5, :cond_2d

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    :cond_2d
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_9a

    :cond_30
    move-object v6, v5

    :try_start_31
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Ljava/util/HashMap;

    invoke-virtual {v7, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_a5

    if-nez v6, :cond_a3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_42
    .catchall {:try_start_31 .. :try_end_42} :catchall_a0

    :goto_42
    :try_start_42
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_45
    if-nez p4, :cond_7f

    iget-wide v7, v2, Lcom/android/server/AppOpsService$Op;->time:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_7f

    iget-wide v7, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_7f

    const/4 v7, 0x0

    invoke-direct {p0, p2, p3, v7}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v3

    if-eqz v3, :cond_7f

    iget v7, v2, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v3, v7}, Lcom/android/server/AppOpsService$Ops;->remove(I)V

    invoke-virtual {v3}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v7

    if-gtz v7, :cond_7f

    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    if-eqz v4, :cond_7f

    iget-object v7, v3, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v7

    if-gtz v7, :cond_7f

    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_7f
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteNowLocked()V

    :cond_82
    monitor-exit p0
    :try_end_83
    .catchall {:try_start_42 .. :try_end_83} :catchall_9a

    if-eqz v5, :cond_9d

    const/4 v1, 0x0

    :goto_86
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_9d

    :try_start_8c
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$Callback;

    iget-object v7, v7, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v7, p1, p3}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_97} :catch_9e

    :goto_97
    add-int/lit8 v1, v1, 0x1

    goto :goto_86

    :catchall_9a
    move-exception v7

    :goto_9b
    :try_start_9b
    monitor-exit p0
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    throw v7

    :cond_9d
    return-void

    :catch_9e
    move-exception v7

    goto :goto_97

    :catchall_a0
    move-exception v7

    move-object v5, v6

    goto :goto_9b

    :cond_a3
    move-object v5, v6

    goto :goto_42

    :cond_a5
    move-object v5, v6

    goto :goto_45
.end method

.method public shutdown()V
    .registers 4

    const-string v1, "AppOps"

    const-string v2, "Writing app ops before shutdown..."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_9
    iget-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    const/4 v0, 0x1

    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_18

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->writeState()V

    :cond_17
    return-void

    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public startOperation(IILjava/lang/String;)I
    .registers 10

    const/4 v4, 0x1

    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    monitor-enter p0

    const/4 v5, 0x1

    :try_start_9
    invoke-direct {p0, p2, p3, v5}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v1

    if-nez v1, :cond_11

    monitor-exit p0

    :goto_10
    return v4

    :cond_11
    const/4 v4, 0x1

    invoke-direct {p0, v1, p1, v4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v0

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v2

    if-eq v2, p1, :cond_32

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v3

    :goto_21
    iget v4, v3, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eqz v4, :cond_34

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v4, v3, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    goto :goto_10

    :catchall_2f
    move-exception v4

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_9 .. :try_end_31} :catchall_2f

    throw v4

    :cond_32
    move-object v3, v0

    goto :goto_21

    :cond_34
    :try_start_34
    iget v4, v0, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-nez v4, :cond_45

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/AppOpsService$Op;->time:J

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    const/4 v4, -0x1

    iput v4, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    :cond_45
    iget v4, v0, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/android/server/AppOpsService$Op;->nesting:I

    const/4 v4, 0x0

    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_34 .. :try_end_4d} :catchall_2f

    goto :goto_10
.end method

.method public startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Ljava/util/HashMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    if-nez v0, :cond_21

    new-instance v0, Lcom/android/server/AppOpsService$Callback;

    invoke-direct {v0, p0, p3}, Lcom/android/server/AppOpsService$Callback;-><init>(Lcom/android/server/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;)V

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Ljava/util/HashMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    const/4 v2, -0x1

    if-eq p1, v2, :cond_3b

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_38

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_38
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    if-eqz p2, :cond_54

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_51

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_51
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_54
    monitor-exit p0

    return-void

    :catchall_56
    move-exception v2

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_1 .. :try_end_58} :catchall_56

    throw v2
.end method

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Callback;->unlinkToDeath()V

    const/4 v2, 0x0

    :goto_13
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_34

    iget-object v4, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_31

    iget-object v4, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_34
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_62

    iget-object v4, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_46
    :goto_46
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_46

    :catchall_5f
    move-exception v4

    monitor-exit p0
    :try_end_61
    .catchall {:try_start_1 .. :try_end_61} :catchall_5f

    throw v4

    :cond_62
    :try_start_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_5f

    return-void
.end method

.method public systemReady()V
    .registers 11

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_3
    :try_start_3
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_83

    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1b
    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_75

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Ops;
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_8a

    :try_start_27
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget v9, v5, Lcom/android/server/AppOpsService$Ops;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_8a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_27 .. :try_end_38} :catch_72

    move-result v1

    :goto_39
    :try_start_39
    iget v7, v5, Lcom/android/server/AppOpsService$Ops;->uid:I

    if-eq v1, v7, :cond_1b

    const-string v7, "AppOps"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pruning old package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Lcom/android/server/AppOpsService$Ops;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": new uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    goto :goto_1b

    :catch_72
    move-exception v2

    const/4 v1, -0x1

    goto :goto_39

    :cond_75
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v7

    if-gtz v7, :cond_80

    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_80
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_83
    if-eqz v0, :cond_88

    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    :cond_88
    monitor-exit p0

    return-void

    :catchall_8a
    move-exception v7

    monitor-exit p0
    :try_end_8c
    .catchall {:try_start_39 .. :try_end_8c} :catchall_8a

    throw v7
.end method

.method public uidRemoved(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method writeState()V
    .registers 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v16, v0

    monitor-enter v16

    const/4 v15, 0x0

    :try_start_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/AppOpsService;->getPackagesForOps([I)Ljava/util/List;
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_162

    move-result-object v2

    :try_start_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v15}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_162
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_15} :catch_119

    move-result-object v12

    :try_start_16
    new-instance v10, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v10}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string v15, "utf-8"

    invoke-interface {v10, v12, v15}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v10, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v15, 0x0

    const-string v17, "app-ops"

    move-object/from16 v0, v17

    invoke-interface {v10, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v2, :cond_14e

    const/4 v7, 0x0

    const/4 v5, 0x0

    :goto_38
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    if-ge v5, v15, :cond_144

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6c

    if-eqz v7, :cond_58

    const/4 v15, 0x0

    const-string v17, "pkg"

    move-object/from16 v0, v17

    invoke-interface {v10, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_58
    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x0

    const-string v17, "pkg"

    move-object/from16 v0, v17

    invoke-interface {v10, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v15, 0x0

    const-string v17, "n"

    move-object/from16 v0, v17

    invoke-interface {v10, v15, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6c
    const/4 v15, 0x0

    const-string v17, "uid"

    move-object/from16 v0, v17

    invoke-interface {v10, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v15, 0x0

    const-string v17, "n"

    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v9

    const/4 v6, 0x0

    :goto_8b
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-ge v6, v15, :cond_138

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$OpEntry;

    const/4 v15, 0x0

    const-string v17, "op"

    move-object/from16 v0, v17

    invoke-interface {v10, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v15, 0x0

    const-string v17, "n"

    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v15

    if-eqz v15, :cond_c9

    const/4 v15, 0x0

    const-string v17, "m"

    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c9
    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v13

    const-wide/16 v17, 0x0

    cmp-long v15, v13, v17

    if-eqz v15, :cond_e1

    const/4 v15, 0x0

    const-string v17, "t"

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_e1
    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v13

    const-wide/16 v17, 0x0

    cmp-long v15, v13, v17

    if-eqz v15, :cond_f9

    const/4 v15, 0x0

    const-string v17, "r"

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_f9
    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v3

    if-eqz v3, :cond_10d

    const/4 v15, 0x0

    const-string v17, "d"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_10d
    const/4 v15, 0x0

    const-string v17, "op"

    move-object/from16 v0, v17

    invoke-interface {v10, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_115
    .catchall {:try_start_16 .. :try_end_115} :catchall_162
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_115} :catch_165

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_8b

    :catch_119
    move-exception v4

    :try_start_11a
    const-string v15, "AppOps"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Failed to write state: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v16
    :try_end_137
    .catchall {:try_start_11a .. :try_end_137} :catchall_162

    :goto_137
    return-void

    :cond_138
    const/4 v15, 0x0

    :try_start_139
    const-string v17, "uid"

    move-object/from16 v0, v17

    invoke-interface {v10, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_38

    :cond_144
    if-eqz v7, :cond_14e

    const/4 v15, 0x0

    const-string v17, "pkg"

    move-object/from16 v0, v17

    invoke-interface {v10, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_14e
    const/4 v15, 0x0

    const-string v17, "app-ops"

    move-object/from16 v0, v17

    invoke-interface {v10, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v15, v12}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_160
    .catchall {:try_start_139 .. :try_end_160} :catchall_162
    .catch Ljava/io/IOException; {:try_start_139 .. :try_end_160} :catch_165

    :goto_160
    :try_start_160
    monitor-exit v16

    goto :goto_137

    :catchall_162
    move-exception v15

    monitor-exit v16
    :try_end_164
    .catchall {:try_start_160 .. :try_end_164} :catchall_162

    throw v15

    :catch_165
    move-exception v4

    :try_start_166
    const-string v15, "AppOps"

    const-string v17, "Failed to write state, restoring backup."

    move-object/from16 v0, v17

    invoke-static {v15, v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v15, v12}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_176
    .catchall {:try_start_166 .. :try_end_176} :catchall_162

    goto :goto_160
.end method
