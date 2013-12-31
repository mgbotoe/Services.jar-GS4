.class Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
.super Ljava/lang/Thread;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyVpnRunner"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LegacyVpnRunner"


# instance fields
.field private final mArguments:[[Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mConfig:Lcom/android/internal/net/VpnConfig;

.field private final mDaemons:[Ljava/lang/String;

.field private final mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOuterInterface:Ljava/lang/String;

.field private final mSockets:[Landroid/net/LocalSocket;

.field private mTimer:J

.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 15

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    const-string v2, "LegacyVpnRunner"

    invoke-direct {p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    new-instance v2, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "racoon"

    aput-object v3, v2, v4

    const-string v3, "charon"

    aput-object v3, v2, v6

    const-string v3, "mtpd"

    aput-object v3, v2, v7

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    new-array v2, v8, [[Ljava/lang/String;

    aput-object p3, v2, v4

    aput-object p4, v2, v6

    aput-object p5, v2, v7

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Landroid/net/LocalSocket;

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    :try_start_47
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    #getter for: Lcom/android/server/connectivity/Vpn;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$2100(Lcom/android/server/connectivity/Vpn;)Landroid/net/IConnectivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/net/IConnectivityManager;->findConnectionTypeForIface(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_56} :catch_6a

    :goto_56
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$2200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :catch_6a
    move-exception v0

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_56
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/internal/net/VpnConfig;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    return-object v0
.end method

.method private checkpoint(Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v2, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_14

    iput-wide v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    :goto_13
    return-void

    :cond_14
    iget-wide v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-gtz v4, :cond_27

    if-eqz p1, :cond_23

    const-wide/16 v2, 0xc8

    :cond_23
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_13

    :cond_27
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "checkpoint"

    #calls: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Time is up"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private execute()V
    .registers 28

    const/16 v19, 0x0

    const/4 v2, 0x0

    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v0, v11

    move/from16 v20, v0

    const/16 v17, 0x0

    :goto_11
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_95

    aget-object v13, v11, v17

    :goto_19
    invoke-static {v13}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_91

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_af
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_25} :catch_26

    goto :goto_19

    :catch_26
    move-exception v15

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    :try_start_2a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Connecting to VPN network "

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v26, " failed"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "LegacyVpnRunner"

    const-string v3, "Aborting"

    invoke-static {v2, v3, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V
    :try_end_6e
    .catchall {:try_start_2a .. :try_end_6e} :catchall_af

    if-nez v19, :cond_73

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->stopLegacyDaemons()V

    :cond_73
    if-eqz v19, :cond_85

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_90

    :cond_85
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "execute"

    :goto_8d
    #calls: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    :cond_90
    return-void

    :cond_91
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_11

    :cond_95
    :try_start_95
    new-instance v25, Ljava/io/File;

    const-string v2, "/data/misc/vpn/state"

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_d3

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot delete the state"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_af
    .catchall {:try_start_95 .. :try_end_af} :catchall_af
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_af} :catch_26

    :catchall_af
    move-exception v2

    if-nez v19, :cond_b5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->stopLegacyDaemons()V

    :cond_b5
    if-eqz v19, :cond_c7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$2600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_d2

    :cond_c7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v5, "execute"

    #calls: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    :cond_d2
    throw v2

    :cond_d3
    :try_start_d3
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/misc/vpn/abort"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/16 v19, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    array-length v0, v11

    move/from16 v20, v0

    const/16 v17, 0x0

    :goto_ea
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_fe

    aget-object v10, v11, v17

    if-nez v23, :cond_f6

    if-eqz v10, :cond_fb

    :cond_f6
    const/16 v23, 0x1

    :goto_f8
    add-int/lit8 v17, v17, 0x1

    goto :goto_ea

    :cond_fb
    const/16 v23, 0x0

    goto :goto_f8

    :cond_fe
    if-nez v23, :cond_169

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "execute"

    #calls: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Connecting to VPN network "

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v26, " failed"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_148
    .catchall {:try_start_d3 .. :try_end_148} :catchall_af
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_148} :catch_26

    if-nez v19, :cond_14d

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->stopLegacyDaemons()V

    :cond_14d
    if-eqz v19, :cond_15f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_90

    :cond_15f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "execute"

    goto/16 :goto_8d

    :cond_169
    :try_start_169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "execute"

    #calls: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    const/16 v16, 0x0

    :goto_176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_268

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v10, v2, v16

    if-nez v10, :cond_18a

    :cond_187
    :goto_187
    add-int/lit8 v16, v16, 0x1

    goto :goto_176

    :cond_18a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v13, v2, v16

    invoke-static {v13}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    :goto_193
    invoke-static {v13}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_193

    :cond_1a0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    aput-object v3, v2, v16

    new-instance v8, Landroid/net/LocalSocketAddress;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v8, v13, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_1b2
    .catchall {:try_start_169 .. :try_end_1b2} :catchall_af
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_1b2} :catch_26

    :goto_1b2
    :try_start_1b2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v2, v2, v16

    invoke-virtual {v2, v8}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1bb
    .catchall {:try_start_1b2 .. :try_end_1bb} :catchall_af
    .catch Ljava/lang/Exception; {:try_start_1b2 .. :try_end_1bb} :catch_1f2

    :try_start_1bb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v2, v2, v16

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v2, v2, v16

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v21

    move-object v11, v10

    array-length v0, v11

    move/from16 v20, v0

    const/16 v17, 0x0

    :goto_1d6
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_216

    aget-object v9, v11, v17

    sget-object v2, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    array-length v2, v12

    const v3, 0xffff

    if-lt v2, v3, :cond_1fa

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is too large"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1f2
    move-exception v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_1b2

    :cond_1fa
    array-length v2, v12

    shr-int/lit8 v2, v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    array-length v2, v12

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write([B)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_1d6

    :cond_216
    const/16 v2, 0xff

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0xff

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->flush()V

    const-string v2, "charon"

    invoke-virtual {v13, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_187

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v2, v2, v16

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_238
    .catchall {:try_start_1bb .. :try_end_238} :catchall_af
    .catch Ljava/lang/Exception; {:try_start_1bb .. :try_end_238} :catch_26

    move-result-object v18

    :goto_239
    :try_start_239
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->read()I
    :try_end_23c
    .catchall {:try_start_239 .. :try_end_23c} :catchall_af
    .catch Ljava/lang/Exception; {:try_start_239 .. :try_end_23c} :catch_25a

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_25b

    :try_start_240
    const-string v2, "LegacyVpnRunner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read EOF from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_187

    :catch_25a
    move-exception v2

    :cond_25b
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_239

    :cond_262
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    :cond_268
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2a9

    const/16 v16, 0x0

    :goto_270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_262

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v13, v2, v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v2, v2, v16

    if-eqz v2, :cond_2a6

    invoke-static {v13}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a6

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is dead"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2a6
    add-int/lit8 v16, v16, 0x1

    goto :goto_270

    :cond_2a9
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-static {v0, v2, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    array-length v2, v0

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2c6

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot parse the state"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2c6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v3, 0x0

    aget-object v3, v22, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v3, 0x1

    aget-object v3, v22, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    if-eqz v2, :cond_2f4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_301

    :cond_2f4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v3, 0x2

    aget-object v3, v22, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    :cond_301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v2, :cond_315

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_332

    :cond_315
    const/4 v2, 0x3

    aget-object v2, v22, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_332

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    const-string v3, " "

    invoke-virtual {v14, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    :cond_332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v2, :cond_346

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_365

    :cond_346
    const/4 v2, 0x4

    aget-object v2, v22, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_365

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    const-string v3, " "

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    :cond_365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_398

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    if-eqz v2, :cond_398

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_398

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    #calls: Lcom/android/server/connectivity/Vpn;->jniSetRoutes(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$2400(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/lang/String;)I

    :cond_398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v3
    :try_end_39d
    .catchall {:try_start_240 .. :try_end_39d} :catchall_af
    .catch Ljava/lang/Exception; {:try_start_240 .. :try_end_39d} :catch_26

    const/4 v2, 0x0

    :try_start_39e
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3e1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    #calls: Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I
    invoke-static {v2, v4}, Lcom/android/server/connectivity/Vpn;->access$700(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3e1

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is gone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_3de
    move-exception v2

    monitor-exit v3
    :try_end_3e0
    .catchall {:try_start_39e .. :try_end_3e0} :catchall_3de

    :try_start_3e0
    throw v2
    :try_end_3e1
    .catchall {:try_start_3e0 .. :try_end_3e1} :catchall_af
    .catch Ljava/lang/Exception; {:try_start_3e0 .. :try_end_3e1} :catch_26

    :cond_3e1
    :try_start_3e1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    #setter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/server/connectivity/Vpn;->access$602(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #getter for: Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/ConnectivityService$VpnCallback;->override(Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v5, 0x0

    const/4 v6, 0x0

    #calls: Lcom/android/server/connectivity/Vpn;->showNotification(Lcom/android/internal/net/VpnConfig;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-static {v2, v4, v5, v6}, Lcom/android/server/connectivity/Vpn;->access$2500(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const-string v2, "LegacyVpnRunner"

    const-string v4, "Connected!"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v5, "execute"

    #calls: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v2, v4, v5}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    monitor-exit v3
    :try_end_425
    .catchall {:try_start_3e1 .. :try_end_425} :catchall_3de

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x1

    :try_start_428
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Connecting to VPN network "

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v26, " succeeded"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_462
    .catchall {:try_start_428 .. :try_end_462} :catchall_af
    .catch Ljava/lang/Exception; {:try_start_428 .. :try_end_462} :catch_26

    if-nez v19, :cond_467

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->stopLegacyDaemons()V

    :cond_467
    if-eqz v19, :cond_479

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_90

    :cond_479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "execute"

    goto/16 :goto_8d
.end method

.method private monitorDaemons()V
    .registers 7

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2700(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_d

    :goto_c
    return-void

    :cond_d
    const-wide/16 v2, 0x7d0

    :try_start_f
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    const/4 v1, 0x0

    :goto_13
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_d

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_4a
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_25} :catch_38

    move-result v2

    if-eqz v2, :cond_35

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->stopLegacyDaemons()V

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "babysit"

    :goto_31
    #calls: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_c

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :catch_38
    move-exception v0

    :try_start_39
    const-string v2, "LegacyVpnRunner"

    const-string v3, "interrupted during monitorDaemons(); stopping services"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_4a

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->stopLegacyDaemons()V

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "babysit"

    goto :goto_31

    :catchall_4a
    move-exception v2

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->stopLegacyDaemons()V

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v5, "babysit"

    #calls: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    throw v2
.end method

.method private stopLegacyDaemons()V
    .registers 6

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_6b

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v0, v3, v1

    const-string v3, "charon"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_63

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v3, v3, v1

    if-eqz v3, :cond_42

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_42

    const/4 v2, 0x0

    :try_start_23
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_30} :catch_6c

    :goto_30
    const/16 v3, 0x14

    if-ge v2, v3, :cond_42

    invoke-static {v0}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    const-wide/16 v3, 0xc8

    :try_start_3c
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_69

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_42
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_63

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #getter for: Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/ConnectivityService$VpnCallback;->restore()V

    const-string v3, "LegacyVpnRunner"

    const-string v4, "stopLegacyDaemons : hide notification called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #calls: Lcom/android/server/connectivity/Vpn;->hideNotification()V
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$1000(Lcom/android/server/connectivity/Vpn;)V

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    invoke-static {v3, v4}, Lcom/android/server/connectivity/Vpn;->access$502(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    :cond_63
    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_69
    move-exception v3

    goto :goto_30

    :cond_6b
    return-void

    :catch_6c
    move-exception v3

    goto :goto_30
.end method


# virtual methods
.method public check(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "LegacyVpnRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Legacy VPN is going down with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    :cond_23
    return-void
.end method

.method public exit()V
    .registers 8

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->interrupt()V

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v2, :cond_11

    aget-object v3, v0, v1

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v6, "exit"

    #calls: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    :try_start_1a
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$2300(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_25} :catch_26

    :goto_25
    return-void

    :catch_26
    move-exception v4

    goto :goto_25
.end method

.method public run()V
    .registers 4

    const-string v0, "LegacyVpnRunner"

    const-string v1, "Waiting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "LegacyVpnRunner"

    monitor-enter v1

    :try_start_a
    const-string v0, "LegacyVpnRunner"

    const-string v2, "Executing"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->execute()V

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->monitorDaemons()V

    monitor-exit v1

    return-void

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_19

    throw v0
.end method
