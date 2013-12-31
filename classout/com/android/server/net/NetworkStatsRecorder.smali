.class public Lcom/android/server/net/NetworkStatsRecorder;
.super Ljava/lang/Object;
.source "NetworkStatsRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;,
        Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;
    }
.end annotation


# static fields
.field private static final DUMP_BEFORE_DELETE:Z = true

.field private static final LOGD:Z = false

.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkStatsRecorder"

.field private static final TAG_NETSTATS_DUMP:Ljava/lang/String; = "netstats_dump"


# instance fields
.field private final mBucketDuration:J

.field private mComplete:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/net/NetworkStatsCollection;",
            ">;"
        }
    .end annotation
.end field

.field private final mCookie:Ljava/lang/String;

.field private final mDropBox:Landroid/os/DropBoxManager;

.field private mLastSnapshot:Landroid/net/NetworkStats;

.field private mListUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/NetworkStats$NonMonotonicObserver",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnlyTags:Z

.field private final mPending:Lcom/android/server/net/NetworkStatsCollection;

.field private final mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

.field private mPersistThresholdBytes:J

.field private final mRotator:Lcom/android/internal/util/FileRotator;

.field private final mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/FileRotator;Landroid/net/NetworkStats$NonMonotonicObserver;Landroid/os/DropBoxManager;Ljava/lang/String;JZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FileRotator;",
            "Landroid/net/NetworkStats$NonMonotonicObserver",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/DropBoxManager;",
            "Ljava/lang/String;",
            "JZ)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x200000

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPersistThresholdBytes:J

    const-string v0, "missing FileRotator"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/FileRotator;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-string v0, "missing NonMonotonicObserver"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStats$NonMonotonicObserver;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    const-string v0, "missing DropBoxManager"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mDropBox:Landroid/os/DropBoxManager;

    iput-object p4, p0, Lcom/android/server/net/NetworkStatsRecorder;->mCookie:Ljava/lang/String;

    iput-wide p5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    iput-boolean p7, p0, Lcom/android/server/net/NetworkStatsRecorder;->mOnlyTags:Z

    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    invoke-direct {v0, p5, p6}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    invoke-direct {v0, p5, p6}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    new-instance v0, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;-><init>(Lcom/android/server/net/NetworkStatsCollection;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mListUids:Ljava/util/ArrayList;

    return-void
.end method

.method private addUid(I)V
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mListUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1f

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mListUids:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_19

    :goto_18
    return-void

    :cond_19
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, p1, :cond_29

    :cond_1f
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mListUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_18

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private recoverFromWtf()V
    .registers 7

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v2, v1}, Lcom/android/internal/util/FileRotator;->dumpAll(Ljava/io/OutputStream;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_24
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_1f

    :goto_a
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mDropBox:Landroid/os/DropBoxManager;

    const-string v3, "netstats_dump"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DropBoxManager;->addData(Ljava/lang/String;[BI)V

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v2}, Lcom/android/internal/util/FileRotator;->deleteAll()V

    return-void

    :catch_1f
    move-exception v0

    :try_start_20
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_a

    :catchall_24
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method


# virtual methods
.method public checkDataIntegrityInSnapshot(Landroid/net/NetworkStats;J)Z
    .registers 13

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    if-nez v5, :cond_9

    :cond_8
    :goto_8
    return v3

    :cond_9
    if-nez p1, :cond_25

    const-string v3, "NetworkStatsRecorder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(xxzt) NSS>> checkDataIntegrityInSnapshot: Error-> snapshot should NOT be null! time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    goto :goto_8

    :cond_25
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {p1, v5}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2d
    invoke-virtual {v0}, Landroid/net/NetworkStats;->size()I

    move-result v5

    if-ge v2, v5, :cond_8

    invoke-virtual {v0, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    iget-wide v5, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_43

    iget-wide v5, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4f

    :cond_43
    iget-wide v5, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_81

    iget-wide v5, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_81

    :cond_4f
    const-string v3, "NetworkStatsRecorder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(xxzt) NSS>> checkDataIntegrityInSnapshot: Error-> rx data! delta rx bytes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", packets="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    goto :goto_8

    :cond_81
    iget-wide v5, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_8d

    iget-wide v5, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_99

    :cond_8d
    iget-wide v5, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_cc

    iget-wide v5, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_cc

    :cond_99
    const-string v3, "NetworkStatsRecorder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(xxzt) NSS>> checkDataIntegrityInSnapshot: Error-> rx data! delta tx bytes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", packets="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    goto/16 :goto_8

    :cond_cc
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2d
.end method

.method public dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .registers 5

    const-string v0, "Pending bytes: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getTotalBytes()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    if-eqz p2, :cond_1d

    const-string v0, "Complete history:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    :goto_1c
    return-void

    :cond_1d
    const-string v0, "History since boot:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_1c
.end method

.method public forcePersistLocked(J)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsCollection;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_19

    :try_start_8
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsCollection;->reset()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_19} :catch_1a

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v0

    const-string v1, "NetworkStatsRecorder"

    const-string v2, "problem persisting pending stats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    goto :goto_19
.end method

.method public getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;
    .registers 9

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsCollection;

    move-object v6, v0

    :goto_d
    if-nez v6, :cond_40

    :try_start_f
    new-instance v1, Lcom/android/server/net/NetworkStatsCollection;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    invoke-direct {v1, v2, v3}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_16} :catch_31

    :try_start_16
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    const-wide/high16 v2, -0x8000

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/FileRotator;->readMatching(Lcom/android/internal/util/FileRotator$Reader;JJ)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v1, v0}, Lcom/android/server/net/NetworkStatsCollection;->recordCollection(Lcom/android/server/net/NetworkStatsCollection;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_2e} :catch_3e

    :goto_2e
    return-object v1

    :cond_2f
    const/4 v6, 0x0

    goto :goto_d

    :catch_31
    move-exception v7

    move-object v1, v6

    :goto_33
    const-string v0, "NetworkStatsRecorder"

    const-string v2, "problem completely reading network stats"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    goto :goto_2e

    :catch_3e
    move-exception v7

    goto :goto_33

    :cond_40
    move-object v1, v6

    goto :goto_2e
.end method

.method public getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;
    .registers 8

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    const-wide/high16 v2, -0x8000

    const-wide v4, 0x7fffffffffffffffL

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getUids()[I
    .registers 6

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsRecorder;->mListUids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_b

    const/4 v3, 0x0

    :cond_a
    return-object v3

    :cond_b
    new-array v3, v2, [I

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_a

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsRecorder;->mListUids:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method public importLegacyNetworkLocked(Ljava/io/File;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v5}, Lcom/android/internal/util/FileRotator;->deleteAll()V

    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    iget-wide v5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    invoke-direct {v0, v5, v6}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->readLegacyNetwork(Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getStartMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getEndMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2c

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    new-instance v6, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    invoke-direct {v6, v0}, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;-><init>(Lcom/android/server/net/NetworkStatsCollection;)V

    invoke-virtual {v5, v6, v3, v4}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v5, v1, v2}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    :cond_2c
    return-void
.end method

.method public importLegacyUidLocked(Ljava/io/File;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v5}, Lcom/android/internal/util/FileRotator;->deleteAll()V

    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    iget-wide v5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    invoke-direct {v0, v5, v6}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mOnlyTags:Z

    invoke-virtual {v0, p1, v5}, Lcom/android/server/net/NetworkStatsCollection;->readLegacyUid(Ljava/io/File;Z)V

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getStartMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getEndMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2e

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    new-instance v6, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;

    invoke-direct {v6, v0}, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;-><init>(Lcom/android/server/net/NetworkStatsCollection;)V

    invoke-virtual {v5, v6, v3, v4}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v5, v1, v2}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    :cond_2e
    return-void
.end method

.method public maybePersistLocked(J)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkStatsCollection;->getTotalBytes()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPersistThresholdBytes:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_10

    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    :goto_f
    return-void

    :cond_10
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    goto :goto_f
.end method

.method public recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;J)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v14

    if-nez p1, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    if-nez v1, :cond_10

    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    goto :goto_6

    :cond_10
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsCollection;

    move-object v11, v1

    :goto_1d
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsRecorder;->mCookie:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v1, v3, v4}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object v12

    move-wide/from16 v8, p3

    invoke-virtual {v12}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v3

    sub-long v6, v8, v3

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_33
    invoke-virtual {v12}, Landroid/net/NetworkStats;->size()I

    move-result v1

    if-ge v13, v1, :cond_90

    invoke-virtual {v12, v13, v10}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v10

    iget-object v1, v10, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkIdentitySet;

    if-nez v2, :cond_53

    iget-object v1, v10, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4e
    :goto_4e
    add-int/lit8 v13, v13, 0x1

    goto :goto_33

    :cond_51
    const/4 v11, 0x0

    goto :goto_1d

    :cond_53
    invoke-virtual {v10}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    iget v1, v10, Landroid/net/NetworkStats$Entry;->tag:I

    if-nez v1, :cond_8e

    const/4 v1, 0x1

    :goto_5e
    iget-boolean v3, p0, Lcom/android/server/net/NetworkStatsRecorder;->mOnlyTags:Z

    if-eq v1, v3, :cond_4e

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    iget v3, v10, Landroid/net/NetworkStats$Entry;->uid:I

    iget v4, v10, Landroid/net/NetworkStats$Entry;->set:I

    iget v5, v10, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/net/NetworkStatsCollection;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    if-eqz v1, :cond_7c

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    iget v3, v10, Landroid/net/NetworkStats$Entry;->uid:I

    iget v4, v10, Landroid/net/NetworkStats$Entry;->set:I

    iget v5, v10, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/net/NetworkStatsCollection;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    :cond_7c
    if-eqz v11, :cond_88

    iget v3, v10, Landroid/net/NetworkStats$Entry;->uid:I

    iget v4, v10, Landroid/net/NetworkStats$Entry;->set:I

    iget v5, v10, Landroid/net/NetworkStats$Entry;->tag:I

    move-object v1, v11

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/net/NetworkStatsCollection;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    :cond_88
    iget v1, v10, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->addUid(I)V

    goto :goto_4e

    :cond_8e
    const/4 v1, 0x0

    goto :goto_5e

    :cond_90
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    goto/16 :goto_6
.end method

.method public removeUidsLocked([I)V
    .registers 8

    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mRotator:Lcom/android/internal/util/FileRotator;

    new-instance v3, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;

    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsRecorder;->mBucketDuration:J

    invoke-direct {v3, v4, v5, p1}, Lcom/android/server/net/NetworkStatsRecorder$RemoveUidRewriter;-><init>(J[I)V

    invoke-virtual {v2, v3}, Lcom/android/internal/util/FileRotator;->rewriteAll(Lcom/android/internal/util/FileRotator$Rewriter;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_35

    :goto_c
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v2, p1}, Lcom/android/server/net/NetworkStatsCollection;->removeUids([I)V

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v2, p1}, Lcom/android/server/net/NetworkStatsCollection;->removeUids([I)V

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v2, p1}, Landroid/net/NetworkStats;->withoutUids([I)Landroid/net/NetworkStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    :cond_22
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_56

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsCollection;

    move-object v0, v2

    :goto_2f
    if-eqz v0, :cond_34

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->removeUids([I)V

    :cond_34
    return-void

    :catch_35
    move-exception v1

    const-string v2, "NetworkStatsRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "problem removing UIDs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorder;->recoverFromWtf()V

    goto :goto_c

    :cond_56
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public resetLocked()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mLastSnapshot:Landroid/net/NetworkStats;

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mComplete:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mListUids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public setPersistThreshold(J)V
    .registers 9

    const-wide/16 v2, 0x400

    const-wide/32 v4, 0x6400000

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsRecorder;->mPersistThresholdBytes:J

    return-void
.end method
