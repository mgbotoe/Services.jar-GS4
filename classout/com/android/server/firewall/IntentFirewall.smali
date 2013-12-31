.class public Lcom/android/server/firewall/IntentFirewall;
.super Ljava/lang/Object;
.source "IntentFirewall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/firewall/IntentFirewall$AMSInterface;,
        Lcom/android/server/firewall/IntentFirewall$RuleObserver;,
        Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;,
        Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;,
        Lcom/android/server/firewall/IntentFirewall$Rule;
    }
.end annotation


# static fields
.field private static final CLEAR_RULES:I = 0x1

.field private static final LOG_PACKAGES_MAX_LENGTH:I = 0x96

.field private static final LOG_PACKAGES_SUFFICIENT_LENGTH:I = 0x7d

.field private static final READ_RULES:I = 0x0

.field private static final RULES_FILE:Ljava/io/File; = null

.field private static final TAG:Ljava/lang/String; = "IntentFirewall"

.field private static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final TAG_BROADCAST:Ljava/lang/String; = "broadcast"

.field private static final TAG_RULES:Ljava/lang/String; = "rules"

.field private static final TAG_SERVICE:Ljava/lang/String; = "service"

.field private static final TYPE_ACTIVITY:I = 0x0

.field private static final TYPE_BROADCAST:I = 0x1

.field private static final TYPE_SERVICE:I = 0x2

.field private static final factoryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/firewall/FilterFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

.field private final mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

.field private mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

.field final mHandler:Landroid/os/Handler;

.field private final mObserver:Lcom/android/server/firewall/IntentFirewall$RuleObserver;

.field private mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "ifw/ifw.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v3, Lcom/android/server/firewall/IntentFirewall;->RULES_FILE:Ljava/io/File;

    const/16 v3, 0x10

    new-array v0, v3, [Lcom/android/server/firewall/FilterFactory;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/server/firewall/AndFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    aput-object v4, v0, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/android/server/firewall/OrFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    aput-object v4, v0, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/android/server/firewall/NotFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    aput-object v4, v0, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/android/server/firewall/StringFilter;->ACTION:Lcom/android/server/firewall/FilterFactory;

    aput-object v4, v0, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/android/server/firewall/StringFilter;->COMPONENT:Lcom/android/server/firewall/StringFilter$ValueProvider;

    aput-object v4, v0, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/android/server/firewall/StringFilter;->COMPONENT_NAME:Lcom/android/server/firewall/StringFilter$ValueProvider;

    aput-object v4, v0, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/android/server/firewall/StringFilter;->COMPONENT_PACKAGE:Lcom/android/server/firewall/StringFilter$ValueProvider;

    aput-object v4, v0, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/android/server/firewall/StringFilter;->DATA:Lcom/android/server/firewall/StringFilter$ValueProvider;

    aput-object v4, v0, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/android/server/firewall/StringFilter;->HOST:Lcom/android/server/firewall/StringFilter$ValueProvider;

    aput-object v4, v0, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/android/server/firewall/StringFilter;->MIME_TYPE:Lcom/android/server/firewall/StringFilter$ValueProvider;

    aput-object v4, v0, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/android/server/firewall/StringFilter;->PATH:Lcom/android/server/firewall/StringFilter$ValueProvider;

    aput-object v4, v0, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/android/server/firewall/StringFilter;->SSP:Lcom/android/server/firewall/StringFilter$ValueProvider;

    aput-object v4, v0, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/android/server/firewall/CategoryFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    aput-object v4, v0, v3

    const/16 v3, 0xd

    sget-object v4, Lcom/android/server/firewall/SenderFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    aput-object v4, v0, v3

    const/16 v3, 0xe

    sget-object v4, Lcom/android/server/firewall/SenderPermissionFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    aput-object v4, v0, v3

    const/16 v3, 0xf

    sget-object v4, Lcom/android/server/firewall/PortFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    aput-object v4, v0, v3

    new-instance v3, Ljava/util/HashMap;

    array-length v4, v0

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lcom/android/server/firewall/IntentFirewall;->factoryMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    :goto_76
    array-length v3, v0

    if-ge v2, v3, :cond_87

    aget-object v1, v0, v2

    sget-object v3, Lcom/android/server/firewall/IntentFirewall;->factoryMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/server/firewall/FilterFactory;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    :cond_87
    return-void
.end method

.method public constructor <init>(Lcom/android/server/firewall/IntentFirewall$AMSInterface;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    invoke-direct {v1, v2}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall$1;)V

    iput-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    new-instance v1, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    invoke-direct {v1, v2}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall$1;)V

    iput-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    new-instance v1, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    invoke-direct {v1, v2}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall$1;)V

    iput-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    new-instance v1, Lcom/android/server/firewall/IntentFirewall$1;

    invoke-direct {v1, p0}, Lcom/android/server/firewall/IntentFirewall$1;-><init>(Lcom/android/server/firewall/IntentFirewall;)V

    iput-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/firewall/IntentFirewall;->mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

    invoke-static {}, Lcom/android/server/firewall/IntentFirewall;->getRulesFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-direct {p0, v0}, Lcom/android/server/firewall/IntentFirewall;->readRules(Ljava/io/File;)V

    new-instance v1, Lcom/android/server/firewall/IntentFirewall$RuleObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/firewall/IntentFirewall$RuleObserver;-><init>(Lcom/android/server/firewall/IntentFirewall;Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mObserver:Lcom/android/server/firewall/IntentFirewall$RuleObserver;

    iget-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mObserver:Lcom/android/server/firewall/IntentFirewall$RuleObserver;

    invoke-virtual {v1}, Lcom/android/server/firewall/IntentFirewall$RuleObserver;->startWatching()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/firewall/IntentFirewall;Ljava/io/File;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/firewall/IntentFirewall;->readRules(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/firewall/IntentFirewall;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/firewall/IntentFirewall;->clearRules()V

    return-void
.end method

.method private clearRules()V
    .registers 4

    const-string v0, "IntentFirewall"

    const-string v1, "Clearing all rules"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

    invoke-interface {v0}, Lcom/android/server/firewall/IntentFirewall$AMSInterface;->getAMSLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_e
    new-instance v0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall$1;)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    new-instance v0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall$1;)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    new-instance v0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall$1;)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    monitor-exit v1

    return-void

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public static getRulesFile()Ljava/io/File;
    .registers 1

    sget-object v0, Lcom/android/server/firewall/IntentFirewall;->RULES_FILE:Ljava/io/File;

    return-object v0
.end method

.method private static joinPackages([Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_7
    array-length v4, p0

    if-ge v1, v4, :cond_37

    aget-object v2, p0, v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x96

    if-ge v4, v5, :cond_2a

    if-nez v0, :cond_28

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_22
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_28
    const/4 v0, 0x0

    goto :goto_22

    :cond_2a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/16 v5, 0x7d

    if-lt v4, v5, :cond_25

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_36
    return-object v4

    :cond_37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_63

    array-length v4, p0

    if-lez v4, :cond_63

    const/4 v4, 0x0

    aget-object v2, p0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit16 v5, v5, -0x96

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_36

    :cond_63
    const/4 v4, 0x0

    goto :goto_36
.end method

.method private static logIntent(ILandroid/content/Intent;ILjava/lang/String;)V
    .registers 17

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    const/4 v1, 0x0

    if-eqz v10, :cond_b

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    :cond_b
    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v12

    if-eqz v12, :cond_1e

    :try_start_13
    invoke-interface {v12, p2}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1e

    array-length v3, v9

    invoke-static {v9}, Lcom/android/server/firewall/IntentFirewall;->joinPackages([Ljava/lang/String;)Ljava/lang/String;
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1d} :catch_32

    move-result-object v4

    :cond_1e
    :goto_1e
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v8

    move v0, p0

    move v2, p2

    move-object/from16 v6, p3

    invoke-static/range {v0 .. v8}, Lcom/android/server/EventLogTags;->writeIfwIntentMatched(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :catch_32
    move-exception v11

    const-string v0, "IntentFirewall"

    const-string v2, "Remote exception while retrieving packages"

    invoke-static {v0, v2, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e
.end method

.method static parseFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/server/firewall/IntentFirewall;->factoryMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/firewall/FilterFactory;

    if-nez v1, :cond_27

    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element in filter list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_27
    invoke-virtual {v1, p0}, Lcom/android/server/firewall/FilterFactory;->newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;

    move-result-object v2

    return-object v2
.end method

.method private readRules(Ljava/io/File;)V
    .registers 18

    const/4 v12, 0x3

    new-array v8, v12, [Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    const/4 v3, 0x0

    :goto_4
    array-length v12, v8

    if-ge v3, v12, :cond_12

    new-instance v12, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall$1;)V

    aput-object v12, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_12
    :try_start_12
    new-instance v2, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_19} :catch_66

    :try_start_19
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    const/4 v12, 0x0

    invoke-interface {v6, v2, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v12, "rules"

    invoke-static {v6, v12}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const/4 v12, 0x3

    new-array v4, v12, [I

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    :cond_2d
    :goto_2d
    invoke-static {v6, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v12

    if-eqz v12, :cond_b0

    const/4 v10, -0x1

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "activity"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_68

    const/4 v10, 0x0

    :cond_41
    :goto_41
    const/4 v12, -0x1

    if-eq v10, v12, :cond_2d

    new-instance v9, Lcom/android/server/firewall/IntentFirewall$Rule;

    const/4 v12, 0x0

    invoke-direct {v9, v12}, Lcom/android/server/firewall/IntentFirewall$Rule;-><init>(Lcom/android/server/firewall/IntentFirewall$1;)V

    aget-object v7, v8, v10
    :try_end_4c
    .catchall {:try_start_19 .. :try_end_4c} :catchall_155
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_4c} :catch_85
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_4c} :catch_12b

    :try_start_4c
    invoke-virtual {v9, v6}, Lcom/android/server/firewall/IntentFirewall$Rule;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/IntentFirewall$Rule;
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_155
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4c .. :try_end_4f} :catch_7c
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_12b

    :try_start_4f
    aget v12, v4, v10

    add-int/lit8 v12, v12, 0x1

    aput v12, v4, v10

    const/4 v3, 0x0

    :goto_56
    invoke-virtual {v9}, Lcom/android/server/firewall/IntentFirewall$Rule;->getIntentFilterCount()I

    move-result v12

    if-ge v3, v12, :cond_2d

    invoke-virtual {v9, v3}, Lcom/android/server/firewall/IntentFirewall$Rule;->getIntentFilter(I)Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    :catch_66
    move-exception v1

    :goto_67
    return-void

    :cond_68
    const-string v12, "broadcast"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_72

    const/4 v10, 0x1

    goto :goto_41

    :cond_72
    const-string v12, "service"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_41

    const/4 v10, 0x2

    goto :goto_41

    :catch_7c
    move-exception v1

    const-string v12, "IntentFirewall"

    const-string v13, "Error reading intent firewall rule"

    invoke-static {v12, v13, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_84
    .catchall {:try_start_4f .. :try_end_84} :catchall_155
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4f .. :try_end_84} :catch_85
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_84} :catch_12b

    goto :goto_2d

    :catch_85
    move-exception v1

    :try_start_86
    const-string v12, "IntentFirewall"

    const-string v13, "Error reading intent firewall rules"

    invoke-static {v12, v13, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/firewall/IntentFirewall;->clearRules()V
    :try_end_90
    .catchall {:try_start_86 .. :try_end_90} :catchall_155

    :try_start_90
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_94

    goto :goto_67

    :catch_94
    move-exception v1

    const-string v12, "IntentFirewall"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error while closing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_ac
    invoke-static {v12, v13, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_67

    :cond_b0
    :try_start_b0
    const-string v12, "IntentFirewall"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Read new rules (A:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget v14, v4, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " B:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    aget v14, v4, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " S:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x2

    aget v14, v4, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/firewall/IntentFirewall;->mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

    invoke-interface {v12}, Lcom/android/server/firewall/IntentFirewall$AMSInterface;->getAMSLock()Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13
    :try_end_f4
    .catchall {:try_start_b0 .. :try_end_f4} :catchall_155
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b0 .. :try_end_f4} :catch_85
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_f4} :catch_12b

    const/4 v12, 0x0

    :try_start_f5
    aget-object v12, v8, v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/firewall/IntentFirewall;->mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    const/4 v12, 0x1

    aget-object v12, v8, v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/firewall/IntentFirewall;->mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    const/4 v12, 0x2

    aget-object v12, v8, v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/firewall/IntentFirewall;->mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    monitor-exit v13
    :try_end_10a
    .catchall {:try_start_f5 .. :try_end_10a} :catchall_128

    :try_start_10a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_10d
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_10d} :catch_10f

    goto/16 :goto_67

    :catch_10f
    move-exception v1

    const-string v12, "IntentFirewall"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error while closing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_ac

    :catchall_128
    move-exception v12

    :try_start_129
    monitor-exit v13
    :try_end_12a
    .catchall {:try_start_129 .. :try_end_12a} :catchall_128

    :try_start_12a
    throw v12
    :try_end_12b
    .catchall {:try_start_12a .. :try_end_12b} :catchall_155
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12a .. :try_end_12b} :catch_85
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_12b} :catch_12b

    :catch_12b
    move-exception v1

    :try_start_12c
    const-string v12, "IntentFirewall"

    const-string v13, "Error reading intent firewall rules"

    invoke-static {v12, v13, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/firewall/IntentFirewall;->clearRules()V
    :try_end_136
    .catchall {:try_start_12c .. :try_end_136} :catchall_155

    :try_start_136
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_139
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_139} :catch_13b

    goto/16 :goto_67

    :catch_13b
    move-exception v1

    const-string v12, "IntentFirewall"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error while closing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_ac

    :catchall_155
    move-exception v12

    :try_start_156
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_159
    .catch Ljava/io/IOException; {:try_start_156 .. :try_end_159} :catch_15a

    :goto_159
    throw v12

    :catch_15a
    move-exception v1

    const-string v13, "IntentFirewall"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error while closing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_159
.end method


# virtual methods
.method checkComponentPermission(Landroid/content/Intent;Ljava/lang/String;IIIZ)Z
    .registers 14

    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/server/firewall/IntentFirewall$AMSInterface;->checkComponentPermission(Landroid/content/Intent;Ljava/lang/String;IIIZ)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public checkStartActivity(Landroid/content/Intent;Landroid/content/pm/ApplicationInfo;IILjava/lang/String;Landroid/content/pm/ActivityInfo;)Z
    .registers 21

    iget-object v3, p0, Lcom/android/server/firewall/IntentFirewall;->mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v3, p1, v0, v4, v5}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v13

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_d
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    if-ge v11, v3, :cond_3b

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/firewall/IntentFirewall$Rule;

    move-object/from16 v0, p6

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/firewall/IntentFirewall$Rule;->matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/Intent;Landroid/content/pm/ApplicationInfo;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-virtual {v2}, Lcom/android/server/firewall/IntentFirewall$Rule;->getBlock()Z

    move-result v3

    or-int/2addr v10, v3

    invoke-virtual {v2}, Lcom/android/server/firewall/IntentFirewall$Rule;->getLog()Z

    move-result v3

    or-int/2addr v12, v3

    if-eqz v10, :cond_49

    if-eqz v12, :cond_49

    :cond_3b
    if-eqz v12, :cond_45

    const/4 v3, 0x0

    move/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {v3, p1, v0, v1}, Lcom/android/server/firewall/IntentFirewall;->logIntent(ILandroid/content/Intent;ILjava/lang/String;)V

    :cond_45
    if-nez v10, :cond_4c

    const/4 v3, 0x1

    :goto_48
    return v3

    :cond_49
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_4c
    const/4 v3, 0x0

    goto :goto_48
.end method

.method signaturesMatch(II)Z
    .registers 8

    const/4 v2, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_d

    move-result v3

    if-nez v3, :cond_c

    const/4 v2, 0x1

    :cond_c
    :goto_c
    return v2

    :catch_d
    move-exception v0

    const-string v3, "IntentFirewall"

    const-string v4, "Remote exception while checking signatures"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method
