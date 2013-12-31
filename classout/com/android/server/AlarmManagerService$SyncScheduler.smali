.class Lcom/android/server/AlarmManagerService$SyncScheduler;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncScheduler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;
    }
.end annotation


# instance fields
.field private final SYNC_COPRIME_VALUE:J

.field private final SYNC_MAX_VALUE:J

.field private final SYNC_MIN_VALUE:J

.field private WHITELIST:Z

.field private WHITELIST_PLUS_AUTO_ADD:Z

.field private gIntervalGcd:Ljava/math/BigInteger;

.field private final mAccountsPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdjustableRepeatingAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mCscPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEmailAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailIdForNextSync:J

.field private mEmailNextSyncTime:J

.field private final mTargetPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;Landroid/content/Context;)V
    .registers 16

    const-wide/32 v11, 0xdbba00

    const/4 v10, 0x1

    const/4 v9, 0x0

    iput-object p1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v10, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->WHITELIST:Z

    iput-boolean v10, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->WHITELIST_PLUS_AUTO_ADD:Z

    const-wide/32 v7, 0xea60

    iput-wide v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->SYNC_COPRIME_VALUE:J

    const-wide/32 v7, 0x493e0

    iput-wide v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->SYNC_MIN_VALUE:J

    iput-wide v11, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->SYNC_MAX_VALUE:J

    invoke-static {v11, v12}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    const-wide v7, 0x7fffffffffffffffL

    iput-wide v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailNextSyncTime:J

    const-wide/16 v7, -0x1

    iput-wide v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailIdForNextSync:J

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Common_ParamAppSync"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    aget-object v7, v4, v9

    const-string v8, "whitelist"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7b

    const/4 v2, 0x1

    :goto_6e
    array-length v7, v4

    if-ge v2, v7, :cond_dd

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    :cond_7b
    aget-object v7, v4, v9

    const-string v8, "blacklist"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_97

    iput-boolean v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->WHITELIST:Z

    iput-boolean v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->WHITELIST_PLUS_AUTO_ADD:Z

    const/4 v2, 0x1

    :goto_8a
    array-length v7, v4

    if-ge v2, v7, :cond_dd

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8a

    :cond_97
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v8, "com.sec.spp.push"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v8, "com.sec.chaton"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v8, "com.facebook.katana"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v8, "com.twitter.android"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v8, "com.facebook.orca"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v8, "com.kakao.talk"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v8, "com.google.android.apps.plus"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v8, "com.mobilesrepublic.appygeek"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v8, "mnn.Android"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v8, "com.google.android.apps.maps"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_dd
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_fa

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e8

    :cond_fa
    const/4 v5, 0x0

    :goto_fb
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_130

    const-string v8, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<TargetPackages> "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_fb

    :cond_130
    const-string v7, "account"

    invoke-virtual {p2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    invoke-static {p2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p0, v8, v10}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    return-void
.end method

.method private adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerService$Alarm;J)V
    .registers 25

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_16

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v17, v0

    if-nez v17, :cond_12e

    :cond_16
    const/4 v12, 0x1

    :goto_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    sub-long v8, v17, v19

    if-eqz v12, :cond_131

    const-wide/16 v15, 0x0

    :goto_25
    const-wide v13, 0x7fffffffffffffffL

    move-wide/from16 v10, p2

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-eqz v17, :cond_94

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AlarmManagerService$SyncScheduler;->timeToNextRepeatingAlarmLocked(J)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v3

    if-eqz v3, :cond_94

    iget-wide v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v19, v0

    iget v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_66

    iget v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v17, v0

    if-nez v17, :cond_134

    :cond_66
    const-wide/16 v17, 0x0

    :goto_68
    add-long v13, v19, v17

    iget-wide v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v19, v0

    cmp-long v17, v17, v19

    if-eqz v17, :cond_90

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v19

    rem-long v17, v17, v19

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-eqz v17, :cond_138

    :cond_90
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    :cond_94
    :goto_94
    const-wide v17, 0x7fffffffffffffffL

    cmp-long v17, v13, v17

    if-nez v17, :cond_cb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v17

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AlarmManagerService$SyncScheduler;->timeToNextRepeatingAlarmLocked(J)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v3

    if-eqz v3, :cond_cb

    iget-wide v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v19, v0

    iget v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_c7

    iget v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v17, v0

    if-nez v17, :cond_156

    :cond_c7
    const-wide/16 v17, 0x0

    :goto_c9
    add-long v13, v19, v17

    :cond_cb
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2900()Z

    move-result v17

    if-eqz v17, :cond_105

    const-string v17, "AlarmManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " next: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", RTC: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", SKEW: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_105
    const-wide v17, 0x7fffffffffffffffL

    cmp-long v17, v13, v17

    if-eqz v17, :cond_173

    sub-long/2addr v13, v15

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v17, v0

    cmp-long v17, v13, v17

    if-gtz v17, :cond_15a

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v17, v0

    sub-long v17, v17, v13

    div-long v6, v17, v10

    mul-long v17, v10, v6

    add-long v17, v17, v13

    move-wide/from16 v0, v17

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    :goto_12d
    return-void

    :cond_12e
    const/4 v12, 0x0

    goto/16 :goto_17

    :cond_131
    move-wide v15, v8

    goto/16 :goto_25

    :cond_134
    move-wide/from16 v17, v8

    goto/16 :goto_68

    :cond_138
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    iget-wide v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    goto/16 :goto_94

    :cond_156
    move-wide/from16 v17, v8

    goto/16 :goto_c9

    :cond_15a
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v17, v0

    sub-long v17, v13, v17

    div-long v6, v17, v10

    const-wide/16 v17, 0x1

    add-long v6, v6, v17

    mul-long v17, v10, v6

    sub-long v17, v13, v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto :goto_12d

    :cond_173
    const-string v17, "AlarmManager"

    const-string v18, " next == Long.MAX_VALUE"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12d
.end method

.method private calculateGcdOfRepeatIntervals(JJ)J
    .registers 13

    invoke-static {p3, p4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    move-object v0, v2

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-lez v4, :cond_27

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_27

    move-object v0, v3

    :cond_27
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    return-wide v4
.end method

.method private lookForNonAdjustableAlarmLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;J)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Landroid/app/PendingIntent;",
            "J)Z"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_8

    :cond_7
    :goto_7
    return v2

    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_c

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    sub-long/2addr v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x14

    cmp-long v3, v3, v5

    if-gez v3, :cond_c

    const/4 v2, 0x1

    goto :goto_7
.end method

.method private lookForTargetPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_9

    :cond_8
    :goto_8
    return v3

    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_19
    invoke-virtual {p2, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_1c
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_19 .. :try_end_1c} :catch_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_1c} :catch_48

    move-result v5

    if-ne v5, v4, :cond_d

    move v3, v4

    goto :goto_8

    :catch_21
    move-exception v0

    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PatternSyntaxException raised. packageName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", targetPackage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/regex/PatternSyntaxException;->printStackTrace()V

    goto :goto_d

    :catch_48
    move-exception v0

    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IllegalArgumentException raised. packageName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", targetPackage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_d
.end method

.method private queryAccounts()V
    .registers 14

    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/AlarmManagerService;->access$600(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "account"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManager;

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    :try_start_19
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    move-object v2, v0

    array-length v5, v2

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v5, :cond_3a

    aget-object v3, v2, v4

    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    iget-object v11, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    const/4 v11, 0x1

    if-eq v9, v11, :cond_37

    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    iget-object v11, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_3a
    iget-boolean v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->WHITELIST_PLUS_AUTO_ADD:Z

    if-eqz v9, :cond_a1

    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_49
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_49

    :catchall_5b
    move-exception v9

    monitor-exit v10
    :try_end_5d
    .catchall {:try_start_19 .. :try_end_5d} :catchall_5b

    throw v9

    :cond_5e
    :try_start_5e
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_64
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_76

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_64

    :cond_76
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_cc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<TargetPackages> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    :cond_a1
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_cc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v9, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<AccPackages> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7

    :cond_cc
    monitor-exit v10
    :try_end_cd
    .catchall {:try_start_5e .. :try_end_cd} :catchall_5b

    return-void
.end method

.method private recalculateGcdOfRepeatIntervalsLocked()V
    .registers 22

    const-wide/32 v11, 0xdbba00

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    if-eqz v4, :cond_95

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5d

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    sub-long v6, v17, v19

    move v9, v8

    :goto_1f
    if-ge v9, v5, :cond_5d

    add-int/lit8 v8, v9, 0x1

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    iget v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3b

    iget v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v17, v0

    if-nez v17, :cond_58

    :cond_3b
    const/4 v10, 0x1

    :goto_3c
    iget-wide v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v19, v0

    if-eqz v10, :cond_5a

    const-wide/16 v17, 0x0

    :goto_44
    add-long v15, v19, v17

    cmp-long v17, v13, v15

    if-gez v17, :cond_56

    iget-wide v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v11, v12, v1, v2}, Lcom/android/server/AlarmManagerService$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v11

    :cond_56
    move v9, v8

    goto :goto_1f

    :cond_58
    const/4 v10, 0x0

    goto :goto_3c

    :cond_5a
    move-wide/from16 v17, v6

    goto :goto_44

    :cond_5d
    invoke-static {v11, v12}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2900()Z

    move-result v17

    if-eqz v17, :cond_95

    const-string v17, "AlarmManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " GCD_NEW("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "):"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_95
    return-void
.end method


# virtual methods
.method public getActiveEmailAccountsCount()J
    .registers 8

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_20

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;

    iget-wide v3, v3, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->id:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_22

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_2

    :cond_20
    int-to-long v3, v2

    return-wide v3

    :cond_22
    move v0, v1

    goto :goto_2
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .registers 3

    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2800()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$SyncScheduler;->queryAccounts()V

    :cond_9
    return-void
.end method

.method public removeRepeatingAlarmLocked(Landroid/app/PendingIntent;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/AlarmManagerService;->access$3300(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    #calls: Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/AlarmManagerService;->access$3400(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

    :cond_18
    return-void
.end method

.method public removeRepeatingAlarmLocked(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    #calls: Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    invoke-static {v0, v1, p1}, Lcom/android/server/AlarmManagerService;->access$3300(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    #calls: Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/AlarmManagerService;->access$3500(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

    :cond_14
    return-void
.end method

.method public schedulingRepeatingAlarms(Lcom/android/server/AlarmManagerService$Alarm;)V
    .registers 32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-wide/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerService$SyncScheduler;->lookForNonAdjustableAlarmLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;J)Z

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    if-nez v20, :cond_373

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/AlarmManagerService$SyncScheduler;->lookForTargetPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->WHITELIST:Z

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_373

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v26, v0

    const-wide/32 v28, 0x493e0

    cmp-long v26, v26, v28

    if-ltz v26, :cond_192

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v26, v0

    const-wide/32 v28, 0xdbba00

    cmp-long v26, v26, v28

    if-gtz v26, :cond_192

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v26

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move-wide/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerService$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v28

    rem-long v26, v26, v28

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-nez v26, :cond_181

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AlarmManagerService$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerService$Alarm;J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cb
    :goto_cb
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2900()Z

    move-result v26

    if-eqz v26, :cond_373

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    if-eqz v8, :cond_373

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_373

    const/16 v18, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    sub-long v10, v26, v28

    move/from16 v19, v18

    :goto_eb
    move/from16 v0, v19

    if-ge v0, v9, :cond_347

    add-int/lit8 v18, v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$Alarm;

    new-instance v24, Landroid/text/format/Time;

    invoke-direct/range {v24 .. v24}, Landroid/text/format/Time;-><init>()V

    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v28, v0

    iget v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_343

    move-wide/from16 v26, v10

    :goto_110
    add-long v26, v26, v28

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    invoke-virtual/range {v24 .. v24}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v25

    const-string v26, "AlarmManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v28, v18, -0x1

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " (T:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "): "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", INT:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v19, v18

    goto/16 :goto_eb

    :cond_181
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AlarmManagerService$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerService$Alarm;J)V

    goto/16 :goto_cb

    :cond_192
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-nez v26, :cond_cb

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_299

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    :goto_1b0
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v26, v0

    sub-long v14, v26, v22

    const-wide/32 v26, 0x325aa0

    cmp-long v26, v14, v26

    if-ltz v26, :cond_29f

    const-wide/32 v5, 0xea60

    :goto_1c2
    long-to-double v0, v14

    move-wide/from16 v26, v0

    long-to-double v0, v5

    move-wide/from16 v28, v0

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->round(D)J

    move-result-wide v26

    mul-long v16, v26, v5

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v26

    const-string v27, "com.android.email"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_30e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService$SyncScheduler;->getActiveEmailAccountsCount()J

    move-result-wide v26

    const-wide/16 v28, 0x1

    cmp-long v26, v26, v28

    if-nez v26, :cond_2a3

    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2900()Z

    move-result v26

    if-eqz v26, :cond_1f9

    const-string v26, "AlarmManager"

    const-string v27, " Email : 1 active account"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f9
    :goto_1f9
    const-wide/32 v26, 0xdbba00

    cmp-long v26, v16, v26

    if-gtz v26, :cond_cb

    const-wide/32 v26, 0x493e0

    cmp-long v26, v16, v26

    if-ltz v26, :cond_cb

    const-wide/32 v26, 0x493e0

    rem-long v26, v16, v26

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-nez v26, :cond_cb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move-wide/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerService$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    new-instance v21, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct/range {v21 .. v21}, Lcom/android/server/AlarmManagerService$Alarm;-><init>()V

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    move-wide/from16 v0, v16

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AlarmManagerService$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerService$Alarm;J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto/16 :goto_cb

    :cond_299
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    goto/16 :goto_1b0

    :cond_29f
    const-wide/16 v5, 0x2710

    goto/16 :goto_1c2

    :cond_2a3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailIdForNextSync:J

    move-wide/from16 v26, v0

    const-wide/16 v28, -0x1

    cmp-long v26, v26, v28

    if-eqz v26, :cond_373

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailNextSyncTime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v28, v0

    sub-long v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/16 v26, 0x1388

    cmp-long v26, v12, v26

    if-gtz v26, :cond_1f9

    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2900()Z

    move-result v26

    if-eqz v26, :cond_2f1

    const-string v26, "AlarmManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, " Email : Detected ID("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailIdForNextSync:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailIdForNextSync:J

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    long-to-int v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->getRepeatInterval()J

    move-result-wide v16

    goto/16 :goto_1f9

    :cond_30e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v26

    const-string v27, "com.google.android.gsf"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1f9

    const-wide/32 v26, 0x124f80

    cmp-long v26, v16, v26

    if-lez v26, :cond_1f9

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x41224f8000000000L

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide/32 v28, 0x927c0

    mul-long v16, v26, v28

    goto/16 :goto_1f9

    :cond_343
    const-wide/16 v26, 0x0

    goto/16 :goto_110

    :cond_347
    const-string v26, "AlarmManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, " GCD("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "):"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_373
    return-void
.end method

.method public timeToNextRepeatingAlarmLocked(J)Lcom/android/server/AlarmManagerService$Alarm;
    .registers 28

    const-wide v13, 0x7fffffffffffffffL

    const-wide v15, 0x7fffffffffffffffL

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    if-eqz v3, :cond_dd

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_dd

    const/4 v11, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v23

    sub-long v7, v21, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v21

    cmp-long v21, p1, v21

    if-nez v21, :cond_79

    const/4 v9, 0x1

    :goto_36
    move v12, v11

    :goto_37
    if-ge v12, v6, :cond_dd

    add-int/lit8 v11, v12, 0x1

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    iget v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_53

    iget v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v21, v0

    if-nez v21, :cond_7b

    :cond_53
    const/4 v10, 0x1

    :goto_54
    iget-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v23, v0

    if-eqz v10, :cond_7d

    const-wide/16 v21, 0x0

    :goto_5c
    add-long v19, v23, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v21

    add-long v21, v21, v19

    cmp-long v21, v17, v21

    if-gez v21, :cond_ca

    if-eqz v9, :cond_80

    cmp-long v21, v19, v13

    if-gez v21, :cond_77

    move-wide/from16 v13, v19

    move-object v4, v2

    :cond_77
    :goto_77
    move v12, v11

    goto :goto_37

    :cond_79
    const/4 v9, 0x0

    goto :goto_36

    :cond_7b
    const/4 v10, 0x0

    goto :goto_54

    :cond_7d
    move-wide/from16 v21, v7

    goto :goto_5c

    :cond_80
    iget-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-eqz v21, :cond_77

    iget-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v21, v0

    cmp-long v21, v21, p1

    if-nez v21, :cond_9a

    cmp-long v21, v19, v15

    if-gez v21, :cond_77

    move-wide/from16 v15, v19

    move-object v5, v2

    goto :goto_77

    :cond_9a
    iget-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v21, v0

    cmp-long v21, v21, p1

    if-lez v21, :cond_ae

    iget-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v21, v0

    rem-long v21, v21, p1

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-eqz v21, :cond_c2

    :cond_ae
    iget-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v21, v0

    cmp-long v21, v21, p1

    if-gez v21, :cond_77

    iget-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v21, v0

    rem-long v21, p1, v21

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-nez v21, :cond_77

    :cond_c2
    cmp-long v21, v19, v13

    if-gez v21, :cond_77

    move-wide/from16 v13, v19

    move-object v4, v2

    goto :goto_77

    :cond_ca
    const-wide/32 v21, 0x2932e00

    add-long v21, v21, v19

    cmp-long v21, v21, v17

    if-gez v21, :cond_77

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto :goto_77

    :cond_dd
    if-eqz v5, :cond_e0

    move-object v4, v5

    :cond_e0
    return-object v4
.end method

.method public updateEmailSyncStatusLocked(JJ[J)V
    .registers 29

    const/4 v11, 0x0

    move-object/from16 v0, p5

    array-length v13, v0

    const/4 v10, 0x2

    const/4 v11, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v11, v3, :cond_42

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;

    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->id:J

    const-wide/16 v21, -0x1

    cmp-long v3, v8, v21

    if-eqz v3, :cond_40

    const/16 v18, 0x0

    const/4 v14, 0x0

    :goto_27
    div-int/lit8 v3, v13, 0x2

    if-ge v14, v3, :cond_3b

    add-int/lit8 v15, v14, 0x1

    mul-int/lit8 v3, v14, 0x2

    aget-wide v4, p5, v3

    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->id:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_39

    const/16 v18, 0x1

    :cond_39
    move v14, v15

    goto :goto_27

    :cond_3b
    if-nez v18, :cond_40

    #calls: Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->clear()V
    invoke-static {v2}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->access$3600(Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;)V

    :cond_40
    move v11, v12

    goto :goto_6

    :cond_42
    const/4 v11, 0x0

    const-wide v8, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailNextSyncTime:J

    move v12, v11

    :cond_4d
    :goto_4d
    if-ge v12, v13, :cond_1fa

    add-int/lit8 v11, v12, 0x1

    aget-wide v4, p5, v12

    add-int/lit8 v12, v11, 0x1

    aget-wide v6, p5, v11

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-ltz v3, :cond_4d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v8, v3

    cmp-long v3, v4, v8

    if-ltz v3, :cond_1e9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    const-wide/16 v8, 0x1

    add-long/2addr v8, v4

    long-to-int v8, v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :goto_75
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-wide/16 v8, 0x1

    add-long/2addr v8, v4

    long-to-int v8, v8

    if-ge v3, v8, :cond_92

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;-><init>(Lcom/android/server/AlarmManagerService$SyncScheduler;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_75

    :cond_92
    new-instance v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;

    const-wide/16 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;-><init>(Lcom/android/server/AlarmManagerService$SyncScheduler;JJJ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    long-to-int v8, v4

    invoke-virtual {v3, v8, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_a3
    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->id:J

    cmp-long v3, v8, v4

    if-eqz v3, :cond_ac

    #calls: Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->setId(J)V
    invoke-static {v2, v4, v5}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->access$3700(Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;J)V

    :cond_ac
    const-wide/16 v19, 0x0

    cmp-long v3, p1, v4

    if-nez v3, :cond_1f6

    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->countOfLastTrigTime:J

    const-wide/16 v21, 0x1

    add-long v8, v8, v21

    iput-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->countOfLastTrigTime:J

    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->countOfLastSyncTime:J

    const-wide/16 v21, 0x1

    cmp-long v3, v8, v21

    if-ltz v3, :cond_15a

    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->countOfLastTrigTime:J

    const-wide/16 v21, 0x2

    cmp-long v3, v8, v21

    if-ltz v3, :cond_15a

    sub-long v8, p3, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2900()Z

    move-result v3

    if-eqz v3, :cond_fa

    const-string v3, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(Email ID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") interval: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fa
    move-wide/from16 v0, v16

    long-to-double v8, v0

    const-wide v21, 0x40c7700000000000L

    div-double v8, v8, v21

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    const-wide/16 v21, 0x2ee0

    mul-long v16, v8, v21

    const-wide/32 v8, 0x493e0

    cmp-long v3, v16, v8

    if-ltz v3, :cond_15a

    const-wide/32 v8, 0x493e0

    rem-long v8, v16, v8

    const-wide/16 v21, 0x0

    cmp-long v3, v8, v21

    if-nez v3, :cond_15a

    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2900()Z

    move-result v3

    if-eqz v3, :cond_158

    const-string v3, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(Email ID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") interval: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v0, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->repeatInterval:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " --> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_158
    move-wide/from16 v19, v16

    :cond_15a
    :goto_15a
    move-wide/from16 v0, v19

    #calls: Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->update(JJ)V
    invoke-static {v2, v6, v7, v0, v1}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->access$3800(Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;JJ)V

    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->repeatInterval:J

    const-wide/16 v21, 0x0

    cmp-long v3, v8, v21

    if-lez v3, :cond_1bd

    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->nextSyncTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailNextSyncTime:J

    move-wide/from16 v21, v0

    cmp-long v3, v8, v21

    if-gez v3, :cond_1bd

    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->id:J

    cmp-long v3, v8, p1

    if-eqz v3, :cond_1bd

    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->nextSyncTime:J

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailNextSyncTime:J

    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->id:J

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailIdForNextSync:J

    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2900()Z

    move-result v3

    if-eqz v3, :cond_1bd

    const-string v3, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mEmailIdForNextSync: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailIdForNextSync:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mEmailNextSyncTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailNextSyncTime:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1bd
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    long-to-int v8, v4

    invoke-virtual {v3, v8, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2900()Z

    move-result v3

    if-eqz v3, :cond_4d

    const-string v3, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4d

    :cond_1e9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$SyncScheduler;->mEmailAccounts:Ljava/util/ArrayList;

    long-to-int v8, v4

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$SyncScheduler$EmailAccountInfo;

    goto/16 :goto_a3

    :cond_1f6
    const-wide/16 v19, 0x0

    goto/16 :goto_15a

    :cond_1fa
    return-void
.end method
