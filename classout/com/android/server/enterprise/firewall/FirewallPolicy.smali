.class public Lcom/android/server/enterprise/firewall/FirewallPolicy;
.super Landroid/app/enterprise/IFirewallPolicy$Stub;
.source "FirewallPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;,
        Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;
    }
.end annotation


# static fields
.field private static final ALLOW_TYPE:Ljava/lang/String; = "allow"

.field private static final DENY_TYPE:Ljava/lang/String; = "deny"

.field private static final HTTP_PROXY_TYPE:Ljava/lang/String; = "proxy"

.field private static final INTERFACE_TYPES:[Ljava/lang/String; = null

.field private static final IPTABLES:Ljava/lang/String; = "/system/bin/iptables"

.field private static final LOCATION:I = 0x4

.field private static final MARKET_ALL_NETWORKS:I = 0x0

.field private static final MARKET_IPTABLES_CHAIN:Ljava/lang/String; = "samsung_market_policy"

.field private static final MARKET_PACKAGE_NAMES:[Ljava/lang/String; = null

.field private static final MARKET_WIFI_ONLY:I = 0x1

.field static final NUM_OF_CONTAINER:I = 0x2

.field public static final REDIRECT_EXCEPTION_CHAIN:Ljava/lang/String; = "samsung_exceptions"

.field private static final REDIRECT_EXCEPTION_TYPE:Ljava/lang/String; = "redirect_exception"

.field private static final REROUTE_TYPE:Ljava/lang/String; = "reroute"

.field private static final TAG:Ljava/lang/String; = "FirewallPolicy"

.field public static final iptablesChains:[Ljava/lang/String;

.field private static isIptChainsCreated:Z


# instance fields
.field private final BOOT_COMPLETED:Ljava/lang/String;

.field private isMarketChainCreated:Z

.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field private mCache:[Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

.field private mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

.field private mConnectionReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mIsOnline:Z

.field private mLooperThread:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIptChainsCreated:Z

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "samsung_reroute"

    aput-object v1, v0, v3

    const-string v1, "samsung_allow"

    aput-object v1, v0, v4

    const-string v1, "samsung_deny"

    aput-object v1, v0, v5

    const-string v1, "samsung_proxy"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "samsung_log"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.android.vending"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->MARKET_PACKAGE_NAMES:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "wifi"

    aput-object v1, v0, v3

    const-string v1, "data"

    aput-object v1, v0, v4

    const-string v1, "*"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->INTERFACE_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/4 v5, 0x2

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/app/enterprise/IFirewallPolicy$Stub;-><init>()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    iput-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->BOOT_COMPLETED:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z

    iput-boolean v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isMarketChainCreated:Z

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    new-array v3, v5, [Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    iput-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCache:[Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v5, :cond_25

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCache:[Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    new-instance v4, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    invoke-direct {v4, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;-><init>(I)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_25
    new-instance v3, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;-><init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V

    iput-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mLooperThread:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mLooperThread:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;

    invoke-virtual {v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;->start()V

    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v3, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;-><init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V

    iput-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Lcom/android/server/enterprise/firewall/FirewallPolicy$2;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy$2;-><init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V

    iput-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-direct {v3}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;-><init>()V

    iput-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/firewall/FirewallPolicy;I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/firewall/FirewallPolicy;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyNetworkForMarket(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->handleConnectivityAction()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/firewall/FirewallPolicy;Ljava/lang/Process;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getCommandResult(Ljava/lang/Process;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/firewall/FirewallPolicy;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->checkIptablesCommandResult(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/firewall/FirewallPolicy;)[Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCache:[Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/firewall/FirewallPolicy;Lcom/android/server/enterprise/firewall/FirewallPolicyCache;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addPendingCommand(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;Ljava/lang/String;I)V

    return-void
.end method

.method private addPendingCommand(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;Ljava/lang/String;I)V
    .registers 6

    packed-switch p3, :pswitch_data_40

    :goto_3
    return-void

    :pswitch_4
    const-string v0, "FirewallPolicy"

    const-string v1, "allow command enqueued"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    monitor-enter v1

    :try_start_e
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_3

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw v0

    :pswitch_18
    const-string v0, "FirewallPolicy"

    const-string v1, "deny command enqueued"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    monitor-enter v1

    :try_start_22
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_3

    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_29

    throw v0

    :pswitch_2c
    const-string v0, "FirewallPolicy"

    const-string v1, "reroute command enqueued"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    monitor-enter v1

    :try_start_36
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_3

    :catchall_3d
    move-exception v0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_3d

    throw v0

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_4
        :pswitch_18
    .end packed-switch
.end method

.method private addRulesToDb(ILjava/util/ArrayList;ILjava/lang/String;ZLjava/util/List;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v1, -0x1

    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_69

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3, p4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->checkDuplicateRule(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_27
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "adminUid"

    invoke-static {p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "rules"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_61

    const-string v4, "enabled"

    const-string v6, "true"

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_47
    const-string v4, "type"

    invoke-virtual {v0, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "timestamp"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "FirewallTable"

    invoke-virtual {v4, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    if-nez v4, :cond_7

    move v4, v5

    :goto_60
    return v4

    :cond_61
    const-string v4, "enabled"

    const-string v6, "false"

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    :cond_69
    const/4 v4, 0x1

    goto :goto_60
.end method

.method private applyBasicRules(IILjava/util/List;II)Z
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_e
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const-string v5, ";"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_36

    move-object/from16 v0, v18

    array-length v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_36

    move-object/from16 v0, v18

    array-length v5, v0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_36

    const/4 v5, 0x0

    :goto_35
    return v5

    :cond_36
    const/4 v5, 0x0

    aget-object v5, v18, v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "host"

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "port"

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "portLocation"

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    aget-object v5, v14, v5

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    aget-object v5, v14, v5

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    aget-object v5, v18, v5

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v18

    array-length v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_86

    const-string v5, "type"

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "default"

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v17

    :goto_80
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_86
    move-object/from16 v0, v18

    array-length v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_a8

    const-string v5, "networkInterface"

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "type"

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x2

    aget-object v5, v18, v5

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "app"

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v17

    goto :goto_80

    :cond_a8
    const-string v5, "packageName"

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "networkInterface"

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "type"

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x2

    aget-object v5, v18, v5

    move/from16 v0, p1

    invoke-static {v0, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x3

    aget-object v5, v18, v5

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "app"

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v17

    goto :goto_80

    :cond_d5
    const-string v9, ""

    const/4 v5, 0x1

    move/from16 v0, p5

    if-ne v0, v5, :cond_111

    const-string v9, "allow"

    :goto_de
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(I)I

    move-result v15

    move/from16 v0, p2

    if-ne v15, v0, :cond_11c

    const/4 v10, 0x1

    :goto_e7
    const/4 v5, 0x1

    move/from16 v0, p4

    if-ne v0, v5, :cond_121

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addRulesToDb(ILjava/util/ArrayList;ILjava/lang/String;ZLjava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_147

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeDuplicatesFromList(Ljava/util/List;Ljava/util/List;)V

    if-eqz v10, :cond_11e

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyBasicRulesToIptables(ILjava/util/List;II)Z

    move-result v5

    goto/16 :goto_35

    :cond_111
    const/4 v5, 0x2

    move/from16 v0, p5

    if-ne v0, v5, :cond_119

    const-string v9, "deny"

    goto :goto_de

    :cond_119
    const/4 v5, 0x0

    goto/16 :goto_35

    :cond_11c
    const/4 v10, 0x0

    goto :goto_e7

    :cond_11e
    const/4 v5, 0x1

    goto/16 :goto_35

    :cond_121
    const/4 v5, 0x2

    move/from16 v0, p4

    if-ne v0, v5, :cond_147

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v7, v2, v9}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRulesFromDb(ILjava/util/ArrayList;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_147

    if-eqz v10, :cond_144

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyBasicRulesToIptables(ILjava/util/List;II)Z

    move-result v5

    goto/16 :goto_35

    :cond_144
    const/4 v5, 0x1

    goto/16 :goto_35

    :cond_147
    const/4 v5, 0x0

    goto/16 :goto_35
.end method

.method private applyBasicRulesToIptables(ILjava/util/List;II)Z
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    const-string v5, "FirewallPolicy"

    const-string v6, "applyBasicRulesToIptables..."

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x0

    const-string v12, ""

    const-string v26, ""

    const-string v8, ""

    const-string v9, ""

    const-string v11, ""

    const/4 v5, 0x1

    move/from16 v0, p3

    if-eq v0, v5, :cond_1f

    const/4 v5, 0x2

    move/from16 v0, p3

    if-eq v0, v5, :cond_1f

    const/4 v5, 0x0

    :goto_1e
    return v5

    :cond_1f
    sget-boolean v5, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIptChainsCreated:Z

    if-nez v5, :cond_26

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createIptablesChains(I)V

    :cond_26
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    const/16 v25, 0x0

    const/4 v5, 0x1

    move/from16 v0, p4

    if-eq v0, v5, :cond_43

    const/4 v5, 0x2

    move/from16 v0, p4

    if-eq v0, v5, :cond_43

    const/4 v5, 0x0

    goto :goto_1e

    :cond_43
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_47
    :goto_47
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b2

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    if-eqz v19, :cond_58

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    :cond_58
    const-string v5, ";"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    array-length v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_74

    move-object/from16 v0, v27

    array-length v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_74

    move-object/from16 v0, v27

    array-length v5, v0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_74

    const/4 v5, 0x0

    goto :goto_1e

    :cond_74
    const/4 v5, 0x0

    aget-object v5, v27, v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    const/4 v5, 0x0

    aget-object v8, v17, v5

    const/4 v5, 0x1

    aget-object v9, v17, v5

    const/4 v5, 0x1

    aget-object v11, v27, v5

    const/4 v5, 0x0

    aget-object v5, v17, v5

    const-string v6, "(.*[a-zA-Z]+.*)"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_129

    const/16 v25, 0x1

    :goto_93
    move-object/from16 v0, v27

    array-length v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_12d

    const/4 v5, 0x2

    aget-object v5, v27, v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a7

    const/4 v5, 0x2

    aget-object v12, v27, v5

    :cond_a7
    :goto_a7
    const-string v5, "*"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b1

    const-string v8, ""

    :cond_b1
    const-string v5, "*"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bb

    const-string v9, ""

    :cond_bb
    const-string v5, "-"

    const-string v6, ":"

    invoke-virtual {v9, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "*"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cd

    const-string v11, "both"

    :cond_cd
    if-eqz v26, :cond_d9

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(ILjava/lang/String;)[I

    move-result-object v16

    :cond_d9
    if-eqz v16, :cond_47

    const/16 v21, 0x0

    :goto_dd
    move-object/from16 v0, v16

    array-length v5, v0

    move/from16 v0, v21

    if-ge v0, v5, :cond_47

    new-instance v15, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v15}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    move/from16 v0, p4

    invoke-virtual {v15, v0}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    new-instance v4, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string v5, "filter"

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getChain(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "both"

    const-string v10, ""

    aget v14, v16, v21

    move/from16 v13, p3

    invoke-direct/range {v4 .. v15}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v5, v4}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_1ae

    if-eqz v25, :cond_196

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_115
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1ae

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_115

    :cond_129
    const/16 v25, 0x0

    goto/16 :goto_93

    :cond_12d
    move-object/from16 v0, v27

    array-length v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_157

    const/4 v5, 0x2

    aget-object v5, v27, v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_147

    const/4 v5, 0x2

    aget-object v5, v27, v5

    move/from16 v0, p1

    invoke-static {v0, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    :cond_147
    const/4 v5, 0x3

    aget-object v5, v27, v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a7

    const/4 v5, 0x3

    aget-object v12, v27, v5

    goto/16 :goto_a7

    :cond_157
    const-string v5, "*"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a7

    const-string v5, "*"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a7

    const/4 v5, 0x2

    move/from16 v0, p4

    if-ne v0, v5, :cond_a7

    const/4 v5, 0x1

    move/from16 v0, p3

    if-ne v0, v5, :cond_181

    const-string v5, "/system/bin/iptables -P INPUT DROP"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "/system/bin/iptables -P OUTPUT DROP"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_47

    :cond_181
    const/4 v5, 0x2

    move/from16 v0, p3

    if-ne v0, v5, :cond_47

    const-string v5, "/system/bin/iptables -P INPUT ACCEPT"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "/system/bin/iptables -P OUTPUT ACCEPT"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_47

    :cond_196
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_19a
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1ae

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19a

    :cond_1ae
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_dd

    :cond_1b2
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1c1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    :cond_1c1
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1d3

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;ZI)Ljava/util/List;

    :cond_1d3
    const/4 v5, 0x1

    goto/16 :goto_1e
.end method

.method private applyMarketIptablesRules(ILjava/lang/String;)V
    .registers 20

    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(ILjava/lang/String;)[I

    move-result-object v14

    if-eqz v14, :cond_42

    const/16 v16, 0x0

    :goto_8
    array-length v3, v14

    move/from16 v0, v16

    if-ge v0, v3, :cond_42

    new-instance v13, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v13}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    const/4 v3, 0x6

    invoke-virtual {v13, v3}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string v3, "filter"

    const-string v4, "samsung_market_policy"

    const-string v5, "out"

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, "data"

    const/4 v11, 0x1

    aget v12, v14, v16

    invoke-direct/range {v2 .. v13}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_3f

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    :cond_3f
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    :cond_42
    return-void
.end method

.method private applyNetworkForMarket(I)V
    .registers 8

    const/4 v5, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createChainForMarket(I)V

    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getNetworkForMarket(IZ)I

    move-result v4

    if-ne v4, v5, :cond_18

    sget-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->MARKET_PACKAGE_NAMES:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v2, :cond_1f

    aget-object v3, v0, v1

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyMarketIptablesRules(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_18
    const-string v4, "samsung_market_policy-output"

    const-string v5, "filter"

    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method private applyProxyRules(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .registers 16

    const-string v0, "FirewallPolicy"

    const-string v1, "applyProxyRules..."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(I)I

    move-result v8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-ne v8, v3, :cond_2e

    const/4 v5, 0x1

    :goto_1c
    if-eqz p2, :cond_2c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2c

    if-eqz p3, :cond_2c

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_30

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    return v0

    :cond_2e
    const/4 v5, 0x0

    goto :goto_1c

    :cond_30
    :try_start_30
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "host"

    invoke-virtual {v9, v0, p2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "port"

    invoke-virtual {v9, v0, p3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_42} :catch_55

    :goto_42
    const/4 v0, 0x1

    if-ne p4, v0, :cond_62

    move-object v0, p0

    move v1, p1

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addRulesToDb(ILjava/util/ArrayList;ILjava/lang/String;ZLjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_60

    if-eqz v5, :cond_5e

    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    goto :goto_2d

    :catch_55
    move-exception v7

    const-string v0, "FirewallPolicy"

    const-string v1, "JSONException"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    :cond_5e
    const/4 v0, 0x1

    goto :goto_2d

    :cond_60
    const/4 v0, 0x0

    goto :goto_2d

    :cond_62
    const/4 v0, 0x2

    if-ne p4, v0, :cond_76

    invoke-direct {p0, p1, v2, v3, p5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRulesFromDb(ILjava/util/ArrayList;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    if-eqz v5, :cond_72

    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    goto :goto_2d

    :cond_72
    const/4 v0, 0x1

    goto :goto_2d

    :cond_74
    const/4 v0, 0x0

    goto :goto_2d

    :cond_76
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method private applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .registers 20

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIptChainsCreated:Z

    if-nez v2, :cond_c

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createIptablesChains(I)V

    :cond_c
    if-eqz p2, :cond_1c

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1c

    if-eqz p3, :cond_1c

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1e

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    return v2

    :cond_1e
    const-string v6, ""

    const-string v2, "proxy"

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const-string v6, "80"

    :cond_2c
    new-instance v12, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v12}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v12, v2}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setIpAddress(Ljava/lang/String;)Z

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setPort(Ljava/lang/String;)Z

    new-instance v1, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string v2, "nat"

    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getChain(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "out"

    const-string v5, ""

    const-string v7, "tcp"

    const-string v8, "remote"

    const-string v9, ""

    const/4 v11, -0x1

    move/from16 v10, p4

    invoke-direct/range {v1 .. v12}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_70

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_70

    const/4 v2, 0x0

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    :cond_70
    const/4 v2, 0x1

    goto :goto_1d
.end method

.method private applyRedirectExceptionRules(IILjava/util/List;I)Z
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    const-string v4, "FirewallPolicy"

    const-string v5, "applyRedirectExceptionRules..."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_15
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    const-string v4, ":"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    array-length v4, v15

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2f

    const/4 v4, 0x0

    :goto_2e
    return v4

    :cond_2f
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "host"

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "port"

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    aget-object v4, v15, v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    aget-object v4, v15, v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_59
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(I)I

    move-result v13

    move/from16 v0, p2

    if-ne v13, v0, :cond_8b

    const/4 v9, 0x1

    :goto_62
    const/4 v4, 0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_8f

    const-string v8, "redirect_exception"

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addRulesToDb(ILjava/util/ArrayList;ILjava/lang/String;ZLjava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_b5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeDuplicatesFromList(Ljava/util/List;Ljava/util/List;)V

    if-eqz v9, :cond_8d

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRedirectExceptionRulesToIptables(ILjava/util/List;I)Z

    move-result v4

    goto :goto_2e

    :cond_8b
    const/4 v9, 0x0

    goto :goto_62

    :cond_8d
    const/4 v4, 0x1

    goto :goto_2e

    :cond_8f
    const/4 v4, 0x2

    move/from16 v0, p4

    if-ne v0, v4, :cond_b5

    const-string v4, "redirect_exception"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRulesFromDb(ILjava/util/ArrayList;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b5

    if-eqz v9, :cond_b2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRedirectExceptionRulesToIptables(ILjava/util/List;I)Z

    move-result v4

    goto/16 :goto_2e

    :cond_b2
    const/4 v4, 0x1

    goto/16 :goto_2e

    :cond_b5
    const/4 v4, 0x0

    goto/16 :goto_2e
.end method

.method private applyRedirectExceptionRulesToIptables(ILjava/util/List;I)Z
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    const-string v3, "FirewallPolicy"

    const-string v4, "applyRedirectExceptionRulesToIptables..."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIptChainsCreated:Z

    if-nez v3, :cond_e

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createIptablesChains(I)V

    :cond_e
    const-string v8, "both"

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_19
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const-string v3, ":"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/4 v3, 0x0

    aget-object v3, v18, v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v18, v3

    :cond_3d
    const/4 v3, 0x1

    aget-object v3, v18, v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v18, v3

    const-string v8, ""

    :cond_4f
    new-instance v13, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v13}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string v3, "nat"

    const-string v4, "samsung_exceptions"

    const-string v5, "out"

    const/4 v6, 0x0

    aget-object v6, v18, v6

    const/4 v7, 0x1

    aget-object v7, v18, v7

    const-string v9, "remote"

    const-string v10, ""

    const/4 v12, -0x1

    move/from16 v11, p3

    invoke-direct/range {v2 .. v13}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v20

    if-eqz v20, :cond_19

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_7e
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v3, "FirewallPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    :cond_a6
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_b3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    :cond_b3
    const/4 v3, 0x1

    return v3
.end method

.method private applyRerouteRules(IILjava/util/List;I)Z
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_e
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_bb

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const-string v4, ";"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v4, v13

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2c

    array-length v4, v13

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2c

    const/4 v4, 0x0

    :goto_2b
    return v4

    :cond_2c
    const/4 v4, 0x0

    aget-object v4, v13, v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/4 v4, 0x1

    aget-object v4, v13, v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "originHost"

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "originPort"

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "destHost"

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "destPort"

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    aget-object v4, v18, v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    aget-object v4, v18, v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    aget-object v4, v14, v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    aget-object v4, v14, v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v4, v13

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8e

    const-string v4, "type"

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "default"

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v17

    :goto_88
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_8e
    const-string v4, "packageName"

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "networkInterface"

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "type"

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    aget-object v4, v13, v4

    move/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x3

    aget-object v4, v13, v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "app"

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v17

    goto :goto_88

    :cond_bb
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(I)I

    move-result v15

    move/from16 v0, p2

    if-ne v15, v0, :cond_f3

    const/4 v9, 0x1

    :goto_c4
    const/4 v4, 0x1

    move/from16 v0, p4

    if-eq v0, v4, :cond_ce

    const/4 v4, 0x3

    move/from16 v0, p4

    if-ne v0, v4, :cond_fb

    :cond_ce
    const-string v8, "reroute"

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addRulesToDb(ILjava/util/ArrayList;ILjava/lang/String;ZLjava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_f8

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeDuplicatesFromList(Ljava/util/List;Ljava/util/List;)V

    if-eqz v9, :cond_f5

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRerouteRulesToIptables(ILjava/util/List;I)Z

    move-result v4

    goto/16 :goto_2b

    :cond_f3
    const/4 v9, 0x0

    goto :goto_c4

    :cond_f5
    const/4 v4, 0x1

    goto/16 :goto_2b

    :cond_f8
    const/4 v4, 0x0

    goto/16 :goto_2b

    :cond_fb
    const/4 v4, 0x2

    move/from16 v0, p4

    if-ne v0, v4, :cond_124

    const-string v4, "reroute"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRulesFromDb(ILjava/util/ArrayList;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_121

    if-eqz v9, :cond_11e

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRerouteRulesToIptables(ILjava/util/List;I)Z

    move-result v4

    goto/16 :goto_2b

    :cond_11e
    const/4 v4, 0x1

    goto/16 :goto_2b

    :cond_121
    const/4 v4, 0x0

    goto/16 :goto_2b

    :cond_124
    const/4 v4, 0x0

    goto/16 :goto_2b
.end method

.method private applyRerouteRulesToIptables(ILjava/util/List;I)Z
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    const/16 v25, 0x0

    const-string v27, ""

    const-string v11, ""

    const/4 v15, 0x0

    sget-boolean v4, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIptChainsCreated:Z

    if-nez v4, :cond_e

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createIptablesChains(I)V

    :cond_e
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_21
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14f

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    if-eqz v18, :cond_32

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->clear()V

    :cond_32
    const-string v4, ";"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const/4 v4, 0x0

    aget-object v4, v16, v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    const/4 v4, 0x1

    aget-object v4, v16, v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    array-length v4, v0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_74

    const/4 v4, 0x2

    aget-object v4, v16, v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_66

    const/4 v4, 0x2

    aget-object v4, v16, v4

    move/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    :cond_66
    const/4 v4, 0x3

    aget-object v4, v16, v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_74

    const/4 v4, 0x3

    aget-object v11, v16, v4

    :cond_74
    const/4 v4, 0x0

    aget-object v4, v26, v4

    const-string v5, "(.*[a-zA-Z]+.*)"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11f

    const/16 v25, 0x1

    :goto_81
    const/4 v4, 0x0

    aget-object v4, v26, v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_93

    const/16 v25, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    aput-object v5, v26, v4

    :cond_93
    const/4 v4, 0x1

    aget-object v4, v26, v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_123

    const/4 v4, 0x1

    const-string v5, ""

    aput-object v5, v26, v4

    :goto_a3
    const/4 v4, 0x1

    aget-object v4, v19, v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b3

    const/4 v4, 0x1

    const-string v5, ""

    aput-object v5, v19, v4

    :cond_b3
    if-eqz v27, :cond_bf

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(ILjava/lang/String;)[I

    move-result-object v15

    :cond_bf
    if-eqz v15, :cond_21

    const/16 v21, 0x0

    :goto_c3
    array-length v4, v15

    move/from16 v0, v21

    if-ge v0, v4, :cond_21

    new-instance v14, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v14}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    const/4 v4, 0x0

    aget-object v4, v19, v4

    invoke-virtual {v14, v4}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setIpAddress(Ljava/lang/String;)Z

    const/4 v4, 0x1

    aget-object v4, v19, v4

    invoke-virtual {v14, v4}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setPort(Ljava/lang/String;)Z

    new-instance v3, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string v4, "nat"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getChain(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "out"

    const/4 v7, 0x0

    aget-object v7, v26, v7

    const/4 v8, 0x1

    aget-object v8, v26, v8

    const-string v9, "both"

    const-string v10, "remote"

    aget v13, v15, v21

    move/from16 v12, p3

    invoke-direct/range {v3 .. v14}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_14b

    if-eqz v25, :cond_133

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_10b
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14b

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10b

    :cond_11f
    const/16 v25, 0x0

    goto/16 :goto_81

    :cond_123
    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-object v5, v26, v5

    const-string v6, "-"

    const-string v7, ":"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v26, v4

    goto/16 :goto_a3

    :cond_133
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_137
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14b

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_137

    :cond_14b
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_c3

    :cond_14f
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_15e

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    :cond_15e
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_16f

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;ZI)Ljava/util/List;

    :cond_16f
    const/4 v4, 0x1

    return v4
.end method

.method private checkDuplicateRule(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 13

    const/4 v7, 0x1

    const/4 v8, 0x0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-array v3, v7, [Ljava/lang/String;

    const-string v0, "rules"

    aput-object v0, v3, v8

    const-string v0, "rules =? "

    invoke-virtual {v4, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type =? "

    invoke-virtual {v4, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "FirewallTable"

    const/4 v5, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    :goto_2b
    return v0

    :cond_2c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_2b
.end method

.method private checkIptablesCommandResult(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    const-string v1, "host/network"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "not found"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_3
.end method

.method private checkOnline()V
    .registers 8

    const-string v5, "FirewallPolicy"

    const-string v6, "checkOnline()..."

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_43

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_43

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->executePendingCommands(I)V

    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_46

    const/4 v3, 0x0

    :goto_2d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_46

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->executePendingCommands(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_43
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_46} :catch_47

    :cond_46
    :goto_46
    return-void

    :catch_47
    move-exception v2

    const-string v5, "FirewallPolicy"

    const-string v6, "Exception "

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_46
.end method

.method private cleanChain(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    if-nez p3, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    goto :goto_2
.end method

.method private cleanInDb(IILjava/lang/String;)Z
    .registers 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "adminUid"

    invoke-static {p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "FirewallTable"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I

    const/4 v1, 0x1

    return v1
.end method

.method private clearPendingCommands(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;)V
    .registers 4

    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1c

    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    monitor-enter v1

    :try_start_c
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_1f

    iget-object v1, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    monitor-enter v1

    :try_start_15
    iget-object v0, p1, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_22

    return-void

    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0

    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0

    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

.method private createChainForMarket(I)V
    .registers 5

    iget-boolean v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isMarketChainCreated:Z

    if-nez v1, :cond_1a

    const-string v1, "samsung_market_policy-output"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "/system/bin/iptables -I OUTPUT 1 -j samsung_market_policy-output"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isMarketChainCreated:Z

    :cond_1a
    return-void
.end method

.method private createIptablesChains(I)V
    .registers 10

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v1, v1, v6

    const-string v2, "nat"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v1, v1, v7

    const-string v2, "nat"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "samsung_exceptions-output"

    const-string v2, "nat"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -A INPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -A INPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -A OUTPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -A OUTPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "/system/bin/iptables -t nat -A OUTPUT -j samsung_exceptions-output"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -t nat -A OUTPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -t nat -A OUTPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    sput-boolean v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIptChainsCreated:Z

    return-void
.end method

.method private createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_d

    move-object v2, v5

    :cond_c
    :goto_c
    return-object v2

    :cond_d
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    :goto_13
    :try_start_13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_c

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_2f

    const-string v6, ""

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_2f
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_32} :catch_33

    goto :goto_2c

    :catch_33
    move-exception v0

    const-string v6, "FirewallPolicy"

    const-string v7, "JSONException..."

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    goto :goto_c
.end method

.method private createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-nez p3, :cond_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -N "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2f
    return-object v0

    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -N "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f
.end method

.method private disableProxyOnIptables(II)Z
    .registers 14

    const/4 v10, 0x1

    const/4 v2, 0x0

    const-string v0, "FirewallPolicy"

    const-string v1, "disableProxyOnIptables"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v9

    if-ne p2, v9, :cond_3b

    const-string v0, "proxy"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3b

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_3b

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3b

    const-string v0, ":"

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v2, v7, v2

    aget-object v3, v7, v10

    const/4 v4, 0x2

    const-string v5, "proxy"

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    :cond_3b
    return v10
.end method

.method private disableRulesOnIptables(II)Z
    .registers 9

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "FirewallPolicy"

    const-string v2, "disableRulesOnIptables"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v0

    if-ne p2, v0, :cond_93

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "nat"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "samsung_exceptions-output"

    const-string v2, "nat"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "/system/bin/iptables -P INPUT ACCEPT"

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    const-string v1, "/system/bin/iptables -P OUTPUT ACCEPT"

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    :cond_93
    return v4
.end method

.method private enforceFirewallPermission()I
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_FIREWALL"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private declared-synchronized executePendingCommands(I)V
    .registers 12

    monitor-enter p0

    :try_start_1
    const-string v0, "FirewallPolicy"

    const-string v1, "execute pending commands"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCache:[Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    aget-object v6, v0, p1

    iget-object v1, v6, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    monitor-enter v1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_35

    :try_start_f
    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, v6, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, v6, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_38

    :try_start_1c
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_20
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;ZIZ)Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_1c .. :try_end_34} :catchall_35

    goto :goto_20

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_38
    move-exception v0

    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw v0

    :cond_3b
    iget-object v1, v6, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    monitor-enter v1
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_35

    :try_start_3e
    new-instance v9, Ljava/util/ArrayList;

    iget-object v0, v6, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_64

    :try_start_45
    iget-object v0, v6, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_98

    :try_start_4b
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;ZIZ)Ljava/lang/String;
    :try_end_63
    .catchall {:try_start_4b .. :try_end_63} :catchall_35

    goto :goto_4f

    :catchall_64
    move-exception v0

    :goto_65
    :try_start_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    :try_start_66
    throw v0

    :cond_67
    iget-object v1, v6, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    monitor-enter v1
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_35

    :try_start_6a
    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, v6, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_90

    :try_start_71
    iget-object v0, v6, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_77
    .catchall {:try_start_71 .. :try_end_77} :catchall_96

    :try_start_77
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;ZIZ)Ljava/lang/String;
    :try_end_8f
    .catchall {:try_start_77 .. :try_end_8f} :catchall_35

    goto :goto_7b

    :catchall_90
    move-exception v0

    move-object v8, v9

    :goto_92
    :try_start_92
    monitor-exit v1
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_96

    :try_start_93
    throw v0
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_35

    :cond_94
    monitor-exit p0

    return-void

    :catchall_96
    move-exception v0

    goto :goto_92

    :catchall_98
    move-exception v0

    move-object v8, v9

    goto :goto_65
.end method

.method private getAllRules(II)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "allow"

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";allow"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_37
    const-string v4, "deny"

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";deny"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_64
    const-string v4, "reroute"

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_91

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";reroute"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    :cond_91
    const-string v4, "redirect_exception"

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_be

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";redirect_exceptions"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9b

    :cond_be
    return-object v1
.end method

.method private getAppUid(Ljava/lang/String;)I
    .registers 9

    const/4 v1, -0x1

    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_8
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_e} :catch_10

    move v4, v1

    :goto_f
    return v4

    :catch_10
    move-exception v2

    const-string v4, "FirewallPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package Name not found error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    goto :goto_f
.end method

.method private getAppUids(I)[I
    .registers 12

    const/4 v9, -0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerizedPackages(I)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3f

    array-length v8, v6

    if-lez v8, :cond_3f

    array-length v8, v6

    new-array v7, v8, [I

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_10
    array-length v8, v6

    if-ge v2, v8, :cond_31

    aget-object v8, v6, v2

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUid(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v9, :cond_2b

    add-int/lit8 v5, v3, -0x1

    :goto_1d
    if-ltz v5, :cond_24

    aget v8, v7, v5

    if-ne v8, v0, :cond_2e

    const/4 v0, -0x1

    :cond_24
    if-eq v0, v9, :cond_2b

    add-int/lit8 v4, v3, 0x1

    aput v0, v7, v3

    move v3, v4

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_2e
    add-int/lit8 v5, v5, -0x1

    goto :goto_1d

    :cond_31
    if-lez v3, :cond_3f

    new-array v1, v3, [I

    const/4 v2, 0x0

    :goto_36
    if-ge v2, v3, :cond_3f

    aget v8, v7, v2

    aput v8, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_3f
    return-object v1
.end method

.method private getAppUids(ILjava/lang/String;)[I
    .registers 7

    const/4 v1, 0x0

    if-lez p1, :cond_e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_e

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(I)[I

    move-result-object v1

    :cond_d
    :goto_d
    return-object v1

    :cond_e
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUid(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1b

    const/4 v2, -0x1

    if-eq v0, v2, :cond_d

    :cond_1b
    const/4 v2, 0x1

    new-array v1, v2, [I

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUid(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    goto :goto_d
.end method

.method private getChain(I)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    const/4 v0, 0x3

    if-ne p1, v0, :cond_10

    :cond_b
    sget-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_f
    return-object v0

    :cond_10
    const-string v0, ""

    goto :goto_f
.end method

.method private getCommandResult(Ljava/lang/Process;)Ljava/lang/String;
    .registers 10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_4b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_14} :catch_70

    :goto_14
    :try_start_14
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_44

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_30
    .catchall {:try_start_14 .. :try_end_30} :catchall_6d
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_30} :catch_31

    goto :goto_14

    :catch_31
    move-exception v0

    move-object v1, v2

    :goto_33
    :try_start_33
    const-string v5, "FirewallPolicy"

    const-string v6, "getCommandResult : "

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_4b

    if-eqz v1, :cond_3f

    :try_start_3c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_5b

    :cond_3f
    :goto_3f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_44
    if-eqz v2, :cond_49

    :try_start_46
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_64

    :cond_49
    :goto_49
    move-object v1, v2

    goto :goto_3f

    :catchall_4b
    move-exception v5

    :goto_4c
    if-eqz v1, :cond_51

    :try_start_4e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    :cond_51
    :goto_51
    throw v5

    :catch_52
    move-exception v0

    const-string v6, "FirewallPolicy"

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    :catch_5b
    move-exception v0

    const-string v5, "FirewallPolicy"

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    :catch_64
    move-exception v0

    const-string v5, "FirewallPolicy"

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    :catchall_6d
    move-exception v5

    move-object v1, v2

    goto :goto_4c

    :catch_70
    move-exception v0

    goto :goto_33
.end method

.method public static getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;
    .registers 2

    if-gtz p0, :cond_3

    :goto_2
    return-object p1

    :cond_3
    invoke-static {p0, p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getLastUidForProxy(I)I
    .registers 12

    const-string v0, "FirewallPolicy"

    const-string v1, "getLastUidForProxy"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "adminUid"

    aput-object v1, v3, v0

    const-string v0, "type =? "

    const-string v1, "proxy"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "enabled =? "

    const-string v1, "true"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "FirewallTable"

    const/4 v5, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6d

    const-string v0, "adminUid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    new-instance v8, Ljava/lang/Long;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_4d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const-string v0, "FirewallPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastUidForProxy() uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_6d
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_4d
.end method

.method private getLastUidForRules(I)I
    .registers 12

    const-string v0, "FirewallPolicy"

    const-string v1, "getLastUidForRules"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "adminUid"

    aput-object v1, v3, v0

    const-string v0, "type !=? "

    const-string v1, "proxy"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "enabled =? "

    const-string v1, "true"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "FirewallTable"

    const/4 v5, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "adminUid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    new-instance v8, Ljava/lang/Long;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_4d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_55
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_4d
.end method

.method private getNetworkAppsList()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    const-string v5, "android.permission.INTERNET"

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_14

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_30
    return-object v4
.end method

.method public static getPackageName(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    if-gtz p0, :cond_3

    :goto_2
    return-object p1

    :cond_3
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method private getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v9, "FirewallPolicy"

    const-string v10, "getRulesFromDb.."

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "rules"

    aput-object v10, v6, v9

    const-string v9, "type =? "

    invoke-virtual {v2, v9, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "adminUid =? "

    invoke-static {p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "FirewallTable"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v6, v2, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_263

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_39
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_260

    const-string v9, "rules"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, ""

    :try_start_4b
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "reroute"

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_124

    const-string v9, "type"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b2

    const-string v9, "default"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "originHost"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "originPort"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "destHost"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "destPort"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_aa
    .catch Lorg/json/JSONException; {:try_start_4b .. :try_end_aa} :catch_256

    move-result-object v7

    :cond_ab
    :goto_ab
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_39

    :cond_b2
    if-eqz v8, :cond_ab

    :try_start_b4
    const-string v9, "app"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ab

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "originHost"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "originPort"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "destHost"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "destPort"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "packageName"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "networkInterface"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_ab

    :cond_124
    const-string v9, "allow"

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_134

    const-string v9, "deny"

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_231

    :cond_134
    const-string v9, "type"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_179

    const-string v9, "default"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_179

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "host"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "port"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "portLocation"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_ab

    :cond_179
    if-eqz v8, :cond_ab

    const-string v9, "app"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ab

    const-string v9, "deny"

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "host"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "port"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "portLocation"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "packageName"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "networkInterface"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_ab

    :cond_1e4
    const-string v9, "allow"

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ab

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "host"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "port"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "portLocation"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "networkInterface"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_ab

    :cond_231
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "host"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "port"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_253
    .catch Lorg/json/JSONException; {:try_start_b4 .. :try_end_253} :catch_256

    move-result-object v7

    goto/16 :goto_ab

    :catch_256
    move-exception v1

    const-string v9, "FirewallPolicy"

    const-string v10, "JSONException"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ab

    :cond_260
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_263
    return-object v5
.end method

.method private getUrlBlackList(II)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "url"

    aput-object v9, v0, v8

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-lez p2, :cond_4a

    iget-object v8, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "WebFilterTable"

    invoke-virtual {v8, v9, p2, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_23

    const-string v8, "FirewallPolicy"

    const-string v9, "getUrlBlackList - Cursor is null"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    :cond_22
    :goto_22
    return-object v6

    :cond_23
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_3c

    :cond_29
    :try_start_29
    const-string v8, "url"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_39} :catch_40

    move-result v8

    if-nez v8, :cond_29

    :cond_3c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_22

    :catch_40
    move-exception v4

    const-string v8, "FirewallPolicy"

    const-string v9, "getUrlBlackList - IllegalArgumentException"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    goto :goto_22

    :cond_4a
    iget-object v8, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "WebFilterTable"

    invoke-virtual {v8, p1, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(ILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_5d

    const-string v8, "FirewallPolicy"

    const-string v9, "getUrlBlackList - cv is null"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    goto :goto_22

    :cond_5d
    const/4 v2, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_62
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string v7, "url"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_62
.end method

.method private getUrlFilterState(IILjava/lang/String;)Z
    .registers 16

    const/4 v11, 0x1

    const/4 v10, 0x0

    new-array v0, v11, [Ljava/lang/String;

    aput-object p3, v0, v10

    const/4 v5, 0x0

    const-string v7, "FirewallPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getUrlFilterState - uid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p2, :cond_60

    iget-object v7, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "WebFilterSettingsTable"

    invoke-virtual {v7, v8, p2, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_47

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ne v7, v11, :cond_44

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_44

    const/4 v5, 0x1

    :cond_44
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_47
    :goto_47
    const-string v7, "FirewallPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getUrlFilterState - ret: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_60
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "WebFilterSettingsTable"

    invoke-virtual {v7, p1, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(ILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_47

    const/4 v2, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    invoke-virtual {v2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6f

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6f

    const/4 v5, 0x1

    goto :goto_47
.end method

.method private handleConnectivityAction()V
    .registers 3

    const-string v0, "FirewallPolicy"

    const-string v1, "Entering handleConnectivityAction..."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->checkOnline()V

    return-void
.end method

.method private removeDuplicatesFromList(Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v3, v2, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    sub-int v3, v2, v0

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_25
    return-void
.end method

.method private removeRulesFromDb(ILjava/util/ArrayList;ILjava/lang/String;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "adminUid"

    invoke-static {p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "rules"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "type"

    invoke-virtual {v0, v3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "FirewallTable"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_9

    :cond_3b
    const/4 v3, 0x1

    return v3
.end method

.method private rollbackEnabled(I)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableRules(IZI)Z

    :cond_b
    return-void
.end method

.method private rollbackProxyEnabled(I)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxy(IZI)Z

    :cond_b
    return-void
.end method

.method private runIptablesCommands(ILjava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private runIptablesCommands(ILjava/util/List;ZI)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZI)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1f

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1f
    return-object v2
.end method

.method private runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private runSingleIptablesCommand(ILjava/lang/String;ZI)Ljava/lang/String;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;ZIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private runSingleIptablesCommand(ILjava/lang/String;ZIZ)Ljava/lang/String;
    .registers 16

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v9, " "

    invoke-virtual {p2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v8, ""

    move-object v0, v3

    array-length v6, v0

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v6, :cond_1a

    aget-object v2, v0, v5

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_1a
    if-eqz p3, :cond_20

    iget-boolean v9, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z

    if-eqz v9, :cond_44

    :cond_20
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v9, "command"

    invoke-virtual {v1, v9, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "type"

    invoke-virtual {v1, v9, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "containerid"

    invoke-virtual {v1, v9, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v7, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v9, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mLooperThread:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;

    iget-object v9, v9, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;->mHandler:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;

    invoke-virtual {v9, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_43
    :goto_43
    return-object v8

    :cond_44
    if-nez p5, :cond_43

    iget-object v9, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCache:[Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    aget-object v9, v9, p1

    invoke-direct {p0, v9, p2, p4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addPendingCommand(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;Ljava/lang/String;I)V

    goto :goto_43
.end method

.method private runSynchronousIptablesCommand(Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    const/4 v9, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v10, " "

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v8, ""

    move-object v0, v2

    array-length v6, v0

    const/4 v5, 0x0

    :goto_11
    if-ge v5, v6, :cond_1b

    aget-object v1, v0, v5

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_1b
    :try_start_1b
    new-instance v10, Ljava/lang/ProcessBuilder;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Process;->waitFor()I

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getCommandResult(Ljava/lang/Process;)Ljava/lang/String;
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_36} :catch_39
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_36} :catch_42

    move-result-object v8

    move-object v9, v8

    :goto_38
    return-object v9

    :catch_39
    move-exception v4

    const-string v10, "FirewallPolicy"

    const-string v11, "Synchronous iptables command failed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    :catch_42
    move-exception v4

    const-string v10, "FirewallPolicy"

    const-string v11, "Synchronous iptables command failed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38
.end method

.method private saveUrlBlackList(IILjava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "WebFilterTable"

    invoke-virtual {v2, v3, p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdmin(Ljava/lang/String;II)Z

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    const-string v2, "adminUid"

    invoke-static {p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "url"

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "FirewallPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveUrlBlackList - cv: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "WebFilterTable"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    if-nez v2, :cond_52

    const/4 v2, 0x0

    :goto_51
    return v2

    :cond_52
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    goto :goto_10

    :cond_56
    const/4 v2, 0x1

    goto :goto_51
.end method

.method private setBasicRules(ILjava/util/List;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const-string v3, "FirewallPolicy"

    const-string v4, "setBasicRules..."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(I)I

    move-result v0

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v1

    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanRules(II)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addRules(ILjava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_22

    if-ne v0, v1, :cond_21

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableRules(IZI)Z

    :cond_21
    :goto_21
    return v2

    :cond_22
    const/4 v2, 0x0

    goto :goto_21
.end method

.method private setBasicRulesEnableOnDb(IZI)Z
    .registers 8

    const-string v1, "FirewallPolicy"

    const-string v2, "setBasicRulesEnableOnDb"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "allow"

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setEnableOnDb(IZLjava/lang/String;I)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "deny"

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setEnableOnDb(IZLjava/lang/String;I)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "reroute"

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setEnableOnDb(IZLjava/lang/String;I)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "redirect_exception"

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setEnableOnDb(IZLjava/lang/String;I)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "FirewallPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBasicRulesEnableOnDb before ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private setEnableOnDb(IZLjava/lang/String;I)Z
    .registers 27

    const-string v19, "FirewallPolicy"

    const-string v20, "setEnableOnDb..."

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const-string v19, "adminUid =? "

    move/from16 v0, p4

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v19, "type =? "

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_c4

    const-string v19, "enabled"

    const-string v20, "true"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v19, Ljava/util/Date;

    invoke-direct/range {v19 .. v19}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    const-string v19, "timestamp"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    const-string v20, "FirewallTable"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I

    move-result v18

    if-lez v18, :cond_c1

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v19, "enabled"

    const-string v20, "false"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v19, "adminUid IN (SELECT adminUid  from admin where containerId=? ) "

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v19, "adminUid !=? "

    move/from16 v0, p4

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v19, "enabled =? "

    const-string v20, "true"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v19, "type =? "

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    const-string v20, "FirewallTable"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I

    :goto_be
    const/16 v19, 0x1

    :goto_c0
    return v19

    :cond_c1
    const/16 v19, 0x0

    goto :goto_c0

    :cond_c4
    const-string v19, "enabled"

    const-string v20, "false"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v19, "timestamp"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    const-string v20, "FirewallTable"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I

    move-result v19

    if-lez v19, :cond_188

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v15, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string v20, "adminUid"

    aput-object v20, v15, v19

    const/16 v19, 0x1

    const-string v20, "timestamp"

    aput-object v20, v15, v19

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    const-string v19, "adminUid IN (SELECT adminUid  from admin where containerId=? ) "

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v19, "adminUid !=? "

    move/from16 v0, p4

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    const-string v20, "FirewallTable"

    const-string v21, "timestamp"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v15, v13, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_13d
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19

    if-eqz v19, :cond_175

    const-string v19, "adminUid"

    move-object/from16 v0, v19

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    new-instance v12, Ljava/lang/Long;

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x1

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    move-object/from16 v3, p3

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setEnableOnDb(IZLjava/lang/String;I)Z
    :try_end_175
    .catchall {:try_start_13d .. :try_end_175} :catchall_183
    .catch Ljava/lang/NumberFormatException; {:try_start_13d .. :try_end_175} :catch_17a

    :cond_175
    :goto_175
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto/16 :goto_be

    :catch_17a
    move-exception v7

    :try_start_17b
    const-string v19, "FirewallPolicy"

    const-string v20, "NumberFormatException"

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_182
    .catchall {:try_start_17b .. :try_end_182} :catchall_183

    goto :goto_175

    :catchall_183
    move-exception v19

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v19

    :cond_188
    const/16 v19, 0x0

    goto/16 :goto_c0
.end method

.method private setProxyRulesEnableOnDb(IZI)Z
    .registers 6

    const/4 v0, 0x1

    const-string v1, "proxy"

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setEnableOnDb(IZLjava/lang/String;I)Z

    move-result v1

    and-int/2addr v0, v1

    return v0
.end method

.method private validateHostAndPort(ILjava/lang/String;)Z
    .registers 23

    const-string v13, "([A-Za-z0-9][a-zA-Z0-9\\-\\.\\_\\~\\:\\/\\?\\#\\@\\!\\$\\&\\\'\\(\\)\\*\\+\\,\\;\\=\\[\\]]+)|(^\\*$)"

    const-string v14, "\\b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)"

    const-string v15, "\\b(?:(?:6553[0-5]|655[0-2][0-9]|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5]?[0-9]{1,4}))|\\*"

    const-string v16, "^(remote|local|\\*)$"

    packed-switch p1, :pswitch_data_11c

    :goto_b
    :pswitch_b
    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x3a

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    if-lez v8, :cond_ad

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_ad

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_7c

    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v0, v6

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_7c

    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_7c

    const/4 v10, 0x0

    :goto_52
    return v10

    :pswitch_53
    move-object v13, v14

    const-string v15, "\\b(?:(?:6553[0-5]|655[0-2][0-9]|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5]?[0-9]{1,4}))"

    goto :goto_b

    :pswitch_57
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")|\\*"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_b

    :pswitch_73
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    goto :goto_52

    :cond_7c
    add-int/lit8 v17, v8, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_af

    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v0, v12

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_af

    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_af

    const/4 v10, 0x0

    goto :goto_52

    :cond_ad
    const/4 v10, 0x0

    goto :goto_52

    :cond_af
    if-eqz v6, :cond_d7

    move-object v4, v6

    array-length v9, v4

    const/4 v7, 0x0

    :goto_b4
    if-ge v7, v9, :cond_d8

    aget-object v5, v4, v7

    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_d2

    const/4 v10, 0x0

    :goto_c3
    if-nez v10, :cond_c9

    invoke-virtual {v5, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    :cond_c9
    if-nez v10, :cond_cf

    invoke-virtual {v5, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    :cond_cf
    add-int/lit8 v7, v7, 0x1

    goto :goto_b4

    :cond_d2
    invoke-virtual {v5, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    goto :goto_c3

    :cond_d7
    const/4 v10, 0x0

    :cond_d8
    if-eqz v12, :cond_ec

    move-object v4, v12

    array-length v9, v4

    const/4 v7, 0x0

    :goto_dd
    if-ge v7, v9, :cond_ed

    aget-object v11, v4, v7

    if-ltz v8, :cond_e9

    if-eqz v10, :cond_e9

    invoke-virtual {v11, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    :cond_e9
    add-int/lit8 v7, v7, 0x1

    goto :goto_dd

    :cond_ec
    const/4 v10, 0x0

    :cond_ed
    const-string v17, "TAG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " > "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_52

    nop

    :pswitch_data_11c
    .packed-switch 0x3
        :pswitch_53
        :pswitch_73
        :pswitch_b
        :pswitch_b
        :pswitch_57
    .end packed-switch
.end method

.method private validateNetworkInterface(Ljava/lang/String;)Z
    .registers 7

    sget-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->INTERFACE_TYPES:[Ljava/lang/String;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v3, :cond_13

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    :goto_f
    return v4

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_13
    const/4 v4, 0x0

    goto :goto_f
.end method

.method private validatePackageName(Ljava/lang/String;)Z
    .registers 6

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getNetworkAppsList()Ljava/util/List;

    move-result-object v2

    const-string v3, "*"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    :goto_20
    return v3

    :cond_21
    const/4 v3, 0x0

    goto :goto_20
.end method

.method private validateParameters(ILjava/util/List;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    if-eqz p2, :cond_d

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_f

    :cond_d
    move v2, v6

    :cond_e
    :goto_e
    return v2

    :cond_f
    const/4 v2, 0x1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_24

    move v2, v6

    goto :goto_e

    :cond_24
    packed-switch p1, :pswitch_data_e6

    :pswitch_27
    move v2, v6

    goto :goto_e

    :pswitch_29
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6b

    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v7, v4

    if-ne v7, v9, :cond_49

    aget-object v7, v4, v6

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    aget-object v7, v4, v8

    invoke-direct {p0, v11, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto :goto_14

    :cond_49
    array-length v7, v4

    if-ne v7, v10, :cond_69

    aget-object v7, v4, v6

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    aget-object v7, v4, v8

    invoke-direct {p0, v11, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    aget-object v7, v4, v9

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validatePackageName(Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    aget-object v7, v4, v11

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateNetworkInterface(Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto :goto_14

    :cond_69
    move v2, v6

    goto :goto_e

    :cond_6b
    move v2, v6

    goto :goto_e

    :pswitch_6d
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v7, v0

    if-ne v7, v9, :cond_85

    aget-object v7, v0, v6

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    aget-object v7, v0, v8

    invoke-direct {p0, v10, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto :goto_14

    :cond_85
    array-length v7, v0

    if-ne v7, v11, :cond_9f

    aget-object v7, v0, v6

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    aget-object v7, v0, v8

    invoke-direct {p0, v10, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    aget-object v7, v0, v9

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateNetworkInterface(Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto/16 :goto_14

    :cond_9f
    move v2, v6

    goto/16 :goto_e

    :pswitch_a2
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v7, v1

    if-ne v7, v9, :cond_bb

    aget-object v7, v1, v6

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    aget-object v7, v1, v8

    invoke-direct {p0, v10, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto/16 :goto_14

    :cond_bb
    array-length v7, v1

    if-ne v7, v10, :cond_dc

    aget-object v7, v1, v6

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    aget-object v7, v1, v8

    invoke-direct {p0, v10, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    aget-object v7, v1, v9

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validatePackageName(Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    aget-object v7, v1, v11

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateNetworkInterface(Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto/16 :goto_14

    :cond_dc
    move v2, v6

    goto/16 :goto_e

    :pswitch_df
    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto/16 :goto_14

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_29
        :pswitch_6d
        :pswitch_a2
        :pswitch_df
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_df
    .end packed-switch
.end method


# virtual methods
.method public addRules(ILjava/util/List;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v2

    invoke-direct {p0, p3, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateParameters(ILjava/util/List;)Z

    move-result v1

    if-nez v1, :cond_d

    :goto_c
    return v0

    :cond_d
    packed-switch p3, :pswitch_data_24

    :pswitch_10
    goto :goto_c

    :pswitch_11
    invoke-direct {p0, p1, v2, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRerouteRules(IILjava/util/List;I)Z

    move-result v0

    goto :goto_c

    :pswitch_16
    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyBasicRules(IILjava/util/List;II)Z

    move-result v0

    goto :goto_c

    :pswitch_1f
    invoke-direct {p0, p1, v2, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRedirectExceptionRules(IILjava/util/List;I)Z

    move-result v0

    goto :goto_c

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_11
        :pswitch_16
        :pswitch_16
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_1f
    .end packed-switch
.end method

.method public declared-synchronized applyRules()Z
    .registers 13

    const/4 v11, 0x2

    const/4 v10, 0x1

    monitor-enter p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v11, :cond_10

    :try_start_6
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCache:[Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    aget-object v6, v6, v1

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->clearPendingCommands(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_10
    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-input"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-output"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-input"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-output"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    sget-object v7, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const-string v8, "nat"

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const-string v7, "samsung_exceptions-output"

    const-string v8, "nat"

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_98
    if-ge v1, v11, :cond_ce

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(I)I

    move-result v3

    const/4 v6, -0x1

    if-eq v6, v3, :cond_cb

    const-string v6, "allow"

    invoke-direct {p0, v1, v3, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct {p0, v1, v0, v6, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyBasicRulesToIptables(ILjava/util/List;II)Z

    const-string v6, "deny"

    invoke-direct {p0, v1, v3, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-direct {p0, v1, v2, v6, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyBasicRulesToIptables(ILjava/util/List;II)Z

    const-string v6, "reroute"

    invoke-direct {p0, v1, v3, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v1, v5, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRerouteRulesToIptables(ILjava/util/List;I)Z

    const-string v6, "redirect_exception"

    invoke-direct {p0, v1, v3, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v6, 0x1

    invoke-direct {p0, v1, v4, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRedirectExceptionRulesToIptables(ILjava/util/List;I)Z
    :try_end_cb
    .catchall {:try_start_6 .. :try_end_cb} :catchall_d0

    :cond_cb
    add-int/lit8 v1, v1, 0x1

    goto :goto_98

    :cond_ce
    monitor-exit p0

    return v10

    :catchall_d0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public cleanAllRules(I)Z
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanAllRules(II)Z

    move-result v0

    return v0
.end method

.method public cleanAllRules(II)Z
    .registers 6

    const-string v1, "FirewallPolicy"

    const-string v2, "cleanAllRules()... "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanBasicRules(III)Z

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanBasicRules(III)Z

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanBasicRules(III)Z

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x7

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanBasicRules(III)Z

    move-result v1

    and-int/2addr v0, v1

    return v0
.end method

.method public cleanBasicRules(III)Z
    .registers 14

    const-string v8, "FirewallPolicy"

    const-string v9, "cleanBasicRules..."

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    const/4 v8, -0x1

    if-ne p2, v8, :cond_11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    :cond_11
    const-string v7, ""

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(I)I

    move-result v3

    iget-object v8, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCache:[Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    aget-object v0, v8, p1

    packed-switch p3, :pswitch_data_108

    :goto_24
    :pswitch_24
    invoke-direct {p0, p1, p2, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanInDb(IILjava/lang/String;)Z

    if-ne v3, p2, :cond_105

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v1, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    :pswitch_3d
    if-ne v3, p2, :cond_48

    iget-object v9, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    monitor-enter v9

    :try_start_42
    iget-object v8, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mAllowQueue:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    monitor-exit v9
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_7f

    :cond_48
    const-string v7, "allow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v9, v9, p3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-input"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v9, v9, p3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-output"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :catchall_7f
    move-exception v8

    :try_start_80
    monitor-exit v9
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw v8

    :pswitch_82
    if-ne v3, p2, :cond_8d

    iget-object v9, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    monitor-enter v9

    :try_start_87
    iget-object v8, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mDenyQueue:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    monitor-exit v9
    :try_end_8d
    .catchall {:try_start_87 .. :try_end_8d} :catchall_cf

    :cond_8d
    const-string v7, "deny"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v9, v9, p3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-input"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v9, v9, p3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-output"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "/system/bin/iptables -P INPUT ACCEPT"

    invoke-direct {p0, p1, v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    const-string v8, "/system/bin/iptables -P OUTPUT ACCEPT"

    invoke-direct {p0, p1, v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(ILjava/lang/String;)Ljava/lang/String;

    goto/16 :goto_24

    :catchall_cf
    move-exception v8

    :try_start_d0
    monitor-exit v9
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_cf

    throw v8

    :pswitch_d2
    if-ne v3, p2, :cond_dd

    iget-object v9, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    monitor-enter v9

    :try_start_d7
    iget-object v8, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mRerouteQueue:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    monitor-exit v9
    :try_end_dd
    .catchall {:try_start_d7 .. :try_end_dd} :catchall_ea

    :cond_dd
    const-string v7, "reroute"

    sget-object v8, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v8, v8, p3

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "nat"

    goto/16 :goto_24

    :catchall_ea
    move-exception v8

    :try_start_eb
    monitor-exit v9
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_ea

    throw v8

    :pswitch_ed
    const-string v7, "redirect_exception"

    const-string v8, "samsung_exceptions-output"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "nat"

    goto/16 :goto_24

    :cond_f8
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllRules(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_105

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->rollbackEnabled(I)V

    :cond_105
    const/4 v8, 0x1

    return v8

    nop

    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_d2
        :pswitch_3d
        :pswitch_82
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_ed
    .end packed-switch
.end method

.method public cleanProxyRules(II)Z
    .registers 4

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanProxyRules(III)Z

    move-result v0

    return v0
.end method

.method public cleanProxyRules(III)Z
    .registers 10

    const-string v4, "FirewallPolicy"

    const-string v5, "cleanProxyRules..."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    const/4 v4, -0x1

    if-ne p2, v4, :cond_11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    :cond_11
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(I)I

    move-result v1

    const-string v3, ""

    const-string v0, ""

    packed-switch p3, :pswitch_data_42

    const/4 v4, 0x0

    :goto_1d
    return v4

    :pswitch_1e
    sget-object v4, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v0, v4, v5

    const-string v3, "proxy"

    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanInDb(IILjava/lang/String;)Z

    if-ne v1, p2, :cond_40

    const-string v4, "nat"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    const-string v4, "proxy"

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3d

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_40

    :cond_3d
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->rollbackProxyEnabled(I)V

    :cond_40
    const/4 v4, 0x1

    goto :goto_1d

    :pswitch_data_42
    .packed-switch 0x3
        :pswitch_1e
    .end packed-switch
.end method

.method public cleanRules(II)Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    packed-switch p2, :pswitch_data_14

    :pswitch_6
    const/4 v0, 0x0

    :goto_7
    return v0

    :pswitch_8
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanBasicRules(III)Z

    move-result v0

    goto :goto_7

    :pswitch_e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanProxyRules(II)Z

    move-result v0

    goto :goto_7

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_e
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public enableProxy(IZ)Z
    .registers 4

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxy(IZI)Z

    move-result v0

    return v0
.end method

.method public enableProxy(IZI)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxy(IZIZ)Z

    move-result v0

    return v0
.end method

.method public enableProxy(IZIZ)Z
    .registers 16

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v8

    const/4 v1, -0x1

    if-ne p3, v1, :cond_a

    move p3, v8

    :cond_a
    if-eqz p2, :cond_48

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(I)I

    move-result v1

    if-ne p3, v1, :cond_14

    if-eqz p4, :cond_45

    :cond_14
    invoke-direct {p0, p1, v4, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setProxyRulesEnableOnDb(IZI)Z

    move-result v1

    if-eqz v1, :cond_46

    const-string v1, "proxy"

    invoke-direct {p0, p1, p3, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_45

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_45

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_45

    const-string v1, ":"

    invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v2, v7, v0

    aget-object v3, v7, v4

    const-string v5, "proxy"

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    :cond_45
    :goto_45
    return v4

    :cond_46
    move v4, v0

    goto :goto_45

    :cond_48
    const-string v1, "FirewallPolicy"

    const-string v2, "enableProxy disable..."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(I)I

    move-result v9

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setProxyRulesEnableOnDb(IZI)Z

    move-result v1

    if-eqz v1, :cond_62

    if-ne v9, p3, :cond_45

    invoke-direct {p0, p1, v9}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->disableProxyOnIptables(II)Z

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->rollbackProxyEnabled(I)V

    goto :goto_45

    :cond_62
    move v4, v0

    goto :goto_45
.end method

.method public enableProxyWithUid(IZI)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxy(IZIZ)Z

    move-result v0

    return v0
.end method

.method public enableRules(IZ)Z
    .registers 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableRules(IZIZ)Z

    move-result v0

    return v0
.end method

.method public enableRules(IZI)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableRules(IZIZ)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized enableRules(IZIZ)Z
    .registers 10

    const/4 v2, 0x0

    const/4 v4, -0x1

    monitor-enter p0

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v0

    if-ne p3, v4, :cond_a

    move p3, v0

    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(I)I

    move-result v1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setBasicRulesEnableOnDb(IZI)Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_25

    move-result v3

    if-nez v3, :cond_16

    :cond_14
    :goto_14
    monitor-exit p0

    return v2

    :cond_16
    if-ne v1, v4, :cond_1a

    if-nez p2, :cond_20

    :cond_1a
    if-ne v1, p3, :cond_1e

    if-eqz p2, :cond_20

    :cond_1e
    if-eqz p4, :cond_14

    :cond_20
    :try_start_20
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRules()Z
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_25

    const/4 v2, 0x1

    goto :goto_14

    :catchall_25
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public enableRulesWithUid(IZI)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableRules(IZIZ)Z

    move-result v0

    return v0
.end method

.method public getAllRulesForUid(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllRules(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkForMarket(IZ)I
    .registers 8

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string v4, "MarketNetworkType"

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public getRules(II)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v0

    packed-switch p2, :pswitch_data_30

    :pswitch_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_c
    return-object v1

    :pswitch_d
    const-string v1, "allow"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_c

    :pswitch_14
    const-string v1, "deny"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_c

    :pswitch_1b
    const-string v1, "reroute"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_c

    :pswitch_22
    const-string v1, "proxy"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_c

    :pswitch_29
    const-string v1, "redirect_exception"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_c

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_d
        :pswitch_14
        :pswitch_22
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_29
    .end packed-switch
.end method

.method public getURLFilterEnabled(IZ)Z
    .registers 8

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    const-string v2, "FirewallPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getURLFilterEnabled("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCache:[Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    aget-object v0, v2, p1

    iget-boolean v2, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterStateUpdated:Z

    if-nez v2, :cond_35

    const-string v2, "filtering"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUrlFilterState(IILjava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlFilterStateCache:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterStateUpdated:Z

    :cond_35
    iget-boolean v2, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlFilterStateCache:Z

    return v2
.end method

.method public getURLFilterList(IZ)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    const/4 v1, -0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCache:[Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    aget-object v0, v3, p1

    if-ne p2, v4, :cond_53

    iget-boolean v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlBlacklistUpdated:Z

    if-nez v3, :cond_50

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUrlBlackList(II)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_34

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_34

    iget-object v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    monitor-enter v4

    :try_start_1f
    const-string v3, "FirewallPolicy"

    const-string v5, "getUrlBlackList - synchronized"

    invoke-static {v3, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlBlacklistUpdated:Z

    monitor-exit v4
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_4d

    :cond_34
    :goto_34
    const-string v3, "FirewallPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getURLFilterList - return = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catchall_4d
    move-exception v3

    :try_start_4e
    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v3

    :cond_50
    iget-object v2, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    goto :goto_34

    :cond_53
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUrlBlackList(II)Ljava/util/List;

    move-result-object v2

    goto :goto_34
.end method

.method public getURLFilterReport(I)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v8, "FirewallPolicy"

    const-string v9, "getURLFilterReport()"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    const/4 v8, 0x2

    new-array v0, v8, [Ljava/lang/String;

    const-string v8, "url"

    aput-object v8, v0, v10

    const-string v8, "time"

    aput-object v8, v0, v11

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "containerID=?"

    new-array v7, v11, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    iget-object v8, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "WebFilterLogTable"

    invoke-virtual {v8, v9, v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_39

    const-string v8, "FirewallPolicy"

    const-string v9, "getURLFilterReport - cvList is null"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_38
    return-object v5

    :cond_39
    const/4 v1, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3e
    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v8, "time"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3e

    const-string v8, ":"

    invoke-virtual {v4, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "url"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e
.end method

.method public getURLFilterReportEnabled(IZ)Z
    .registers 8

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    const-string v2, "FirewallPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getURLFilterReportEnabled("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCache:[Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    aget-object v0, v2, p1

    iget-boolean v2, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterReportUpdated:Z

    if-nez v2, :cond_35

    const-string v2, "logging"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUrlFilterState(IILjava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlFilterReportState:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterReportUpdated:Z

    :cond_35
    iget-boolean v2, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlFilterReportState:Z

    return v2
.end method

.method public isEnabledProxy(I)Z
    .registers 5

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(I)I

    move-result v0

    if-ne v1, v0, :cond_c

    const/4 v2, 0x1

    :goto_b
    return v2

    :cond_c
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public isEnabledRules(I)Z
    .registers 5

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules(I)I

    move-result v0

    if-ne v1, v0, :cond_c

    const/4 v2, 0x1

    :goto_b
    return v2

    :cond_c
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public isUrlBlocked(ILjava/lang/String;)Z
    .registers 28

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterEnabled(IZ)Z

    move-result v8

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v8, :cond_20

    const-string v22, "FirewallPolicy"

    const-string v23, "isUrlBlocked - Policy disabled"

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v22, 0x0

    :goto_1f
    return v22

    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterList(IZ)Ljava/util/List;

    move-result-object v20

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v22, "FirewallPolicy"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "urlBlacklist: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v20, :cond_170

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_170

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_170

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v22, "*"

    const-string v23, ".*"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    const-string v22, "/"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_95

    const/16 v22, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    :cond_95
    const-string v22, "/"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_af

    const/16 v22, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    :cond_af
    const-string v22, "http://"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_18e

    const/16 v22, 0x7

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    :cond_c1
    :goto_c1
    const-string v22, "https://"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1a2

    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    :cond_d3
    :goto_d3
    :try_start_d3
    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_105

    const-string v22, "/"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_105

    const/16 v22, 0x0

    const/16 v23, 0x2f

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_104} :catch_1b6

    move-result v10

    :cond_105
    :goto_105
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v10, v0, :cond_5b

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterReportEnabled(IZ)Z

    move-result v21

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v21, :cond_170

    const-string v22, "FirewallPolicy"

    const-string v23, "urlFilterReportEnabled == true"

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v22, "url"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v22, "time"

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v22, "containerID"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    const-string v23, "WebFilterLogTable"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v22

    if-nez v22, :cond_170

    const-string v22, "FirewallPolicy"

    const-string v23, "isUrlBlocked - Failed on inserting log"

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_170
    const-string v22, "FirewallPolicy"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "isUrlBlocked: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v10

    goto/16 :goto_1f

    :cond_18e
    const-string v22, "https://"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_c1

    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_c1

    :cond_1a2
    const-string v22, "http://"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_d3

    const/16 v22, 0x7

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_d3

    :catch_1b6
    move-exception v7

    const-string v22, "FirewallPolicy"

    const-string v23, "isUrlBlocked - Regex is not valid"

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_105
.end method

.method public isUrlBlocked(Ljava/lang/String;)Z
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isUrlBlocked(ILjava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public listIptablesRules(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "************ FILTER TABLE ************"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "/system/bin/iptables -t filter -L -n --line-numbers -v"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSynchronousIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "************ NAT TABLE ************"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "/system/bin/iptables -t nat -L -n --line-numbers -v"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSynchronousIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "************ MANGLE TABLE ************"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "/system/bin/iptables -t mangle -L -n --line-numbers -v"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSynchronousIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "************ RAW TABLE ************"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "/system/bin/iptables -t raw -L -n --line-numbers -v"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSynchronousIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyNetworkForMarket(I)V

    return-void
.end method

.method public onContainerCreation(II)V
    .registers 6

    const-string v0, "FirewallPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FirewallPolicy.onContainerCreation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onContainerRemoved(II)V
    .registers 6

    const-string v0, "FirewallPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FirewallPolicy.onContainerRemoved("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyNetworkForMarket(I)V

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeAdmin(II)Z

    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 6

    const-string v0, "FirewallPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FirewallPolicy.onPreContainerRemoval("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeAdmin(II)Z

    return-void
.end method

.method public removeAdmin(II)Z
    .registers 8

    const/4 v4, 0x0

    const-string v2, "FirewallPolicy"

    const-string v3, "removeAdmin..."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanAllRules(II)Z

    move-result v2

    and-int/2addr v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanProxyRules(III)Z

    move-result v2

    and-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCache:[Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    aget-object v0, v2, p1

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iput-boolean v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlBlacklistUpdated:Z

    iput-boolean v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterStateUpdated:Z

    iput-boolean v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterReportUpdated:Z

    return v1
.end method

.method public removeRules(ILjava/util/List;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x2

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v2

    invoke-direct {p0, p3, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateParameters(ILjava/util/List;)Z

    move-result v1

    if-nez v1, :cond_d

    :goto_c
    return v0

    :cond_d
    packed-switch p3, :pswitch_data_24

    :pswitch_10
    goto :goto_c

    :pswitch_11
    invoke-direct {p0, p1, v2, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRerouteRules(IILjava/util/List;I)Z

    move-result v0

    goto :goto_c

    :pswitch_16
    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyBasicRules(IILjava/util/List;II)Z

    move-result v0

    goto :goto_c

    :pswitch_1f
    invoke-direct {p0, p1, v2, p2, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRedirectExceptionRules(IILjava/util/List;I)Z

    move-result v0

    goto :goto_c

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_11
        :pswitch_16
        :pswitch_16
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_1f
    .end packed-switch
.end method

.method public setNetworkForMarket(II)Z
    .registers 10

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v1

    const/4 v6, 0x0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_a

    if-nez p2, :cond_19

    :cond_a
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string v4, "MarketNetworkType"

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(IILjava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyNetworkForMarket(I)V

    :cond_19
    int-to-long v2, v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6
.end method

.method public setProxyRules(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 14

    const/4 v2, 0x3

    const/4 v9, 0x0

    const/4 v4, 0x1

    const-string v0, "FirewallPolicy"

    const-string v1, "setProxyRules..."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v8

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateParameters(ILjava/util/List;)Z

    move-result v0

    if-nez v0, :cond_35

    move v4, v9

    :cond_34
    :goto_34
    return v4

    :cond_35
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(I)I

    move-result v6

    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanProxyRules(II)Z

    move-result v0

    if-eqz v0, :cond_51

    const-string v5, "proxy"

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyProxyRules(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    if-ne v6, v8, :cond_34

    invoke-virtual {p0, p1, v4, v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxy(IZI)Z

    goto :goto_34

    :cond_51
    move v4, v9

    goto :goto_34
.end method

.method public setRules(ILjava/util/List;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    invoke-direct {p0, p3, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateParameters(ILjava/util/List;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_a
    return v0

    :cond_b
    packed-switch p3, :pswitch_data_14

    :pswitch_e
    goto :goto_a

    :pswitch_f
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setBasicRules(ILjava/util/List;I)Z

    move-result v0

    goto :goto_a

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public setURLFilterEnabled(IZ)Z
    .registers 10

    const-string v4, "FirewallPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setURLFilterEnabled("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "filtering"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WebFilterSettingsTable"

    invoke-virtual {v4, v3, p1, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5e

    const-string v4, "FirewallPolicy"

    const-string v5, "setURLFilterEnabled - clean cache"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCache:[Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    aget-object v0, v4, p1

    iget-object v5, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    monitor-enter v5

    :try_start_49
    iget-object v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterStateUpdated:Z

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlBlacklistUpdated:Z

    if-nez p2, :cond_5d

    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "WebFilterTable"

    invoke-virtual {v4, v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdmin(Ljava/lang/String;I)Z

    :cond_5d
    monitor-exit v5
    :try_end_5e
    .catchall {:try_start_49 .. :try_end_5e} :catchall_77

    :cond_5e
    const-string v4, "FirewallPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setURLFilterEnabled - return = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :catchall_77
    move-exception v4

    :try_start_78
    monitor-exit v5
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw v4
.end method

.method public setURLFilterList(ILjava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    const-string v3, "FirewallPolicy"

    const-string v4, "setURLFilterList"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v2

    if-nez p2, :cond_f

    :goto_e
    return v1

    :cond_f
    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->saveUrlBlackList(IILjava/util/List;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2d

    const-string v3, "FirewallPolicy"

    const-string v4, "setURLFilterList - clean cache"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCache:[Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    aget-object v0, v3, p1

    iget-object v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    monitor-enter v4

    :try_start_24
    iget-object v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlBlacklistUpdated:Z

    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_46

    :cond_2d
    const-string v3, "FirewallPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setURLFilterList - return = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :catchall_46
    move-exception v3

    :try_start_47
    monitor-exit v4
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v3
.end method

.method public setURLFilterReportEnabled(IZ)Z
    .registers 15

    const-string v9, "FirewallPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setURLFilterReportEnabled("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v7

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "logging"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "WebFilterSettingsTable"

    invoke-virtual {v9, v7, p1, v10, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    const/4 v9, 0x1

    if-ne v2, v9, :cond_45

    iget-object v9, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCache:[Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    aget-object v0, v9, p1

    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlFilterReportUpdated:Z

    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/android/server/enterprise/firewall/FirewallPolicyCache;->mIsUrlBlacklistUpdated:Z

    :cond_45
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    const/4 v9, 0x1

    invoke-virtual {p0, p1, v9}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterReportEnabled(IZ)Z

    move-result v8

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p2, :cond_55

    if-nez v8, :cond_75

    :cond_55
    const-string v9, "FirewallPolicy"

    const-string v10, "setURLFilterReportEnabled - Clean url report"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    new-array v3, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "containerID"

    aput-object v10, v3, v9

    const/4 v9, 0x1

    new-array v4, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    iget-object v9, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "WebFilterLogTable"

    invoke-virtual {v9, v10, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    :cond_75
    const-string v9, "FirewallPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setURLFilterReportEnabled - return = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method
