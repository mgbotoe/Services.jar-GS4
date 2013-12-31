.class public Lcom/android/server/HarmonyEASService;
.super Landroid/content/IHarmonyEAS$Stub;
.source "HarmonyEASService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/HarmonyEASService$PackageHandler;,
        Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    }
.end annotation


# static fields
.field public static final HARMONY_EAS_SERVICE:Ljava/lang/String; = "harmony_eas_service"

.field private static final HARMONY_THIRDPARTY_APP_FILES:Ljava/lang/String; = "harmony_third_party_apps.xml"

.field private static final HARMONY_THIRDPARTY_APP_FILE_PATH:Ljava/lang/String; = "data/system/harmony_third_party_apps.xml"

.field private static final SYSTEM_SECURE_DIR:Ljava/lang/String; = "data/system/"

.field private static final TAG:Ljava/lang/String; = "HarmonyEASService"


# instance fields
.field final mContext:Landroid/content/Context;

.field private mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageHandler:Landroid/os/Handler;

.field mUserMgr:Landroid/os/UserManager;

.field private final mUserToAppMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/content/IHarmonyEAS$Stub;-><init>()V

    iput-object v4, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    iput-object v4, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/HarmonyEASService$1;

    invoke-direct {v0, p0}, Lcom/android/server/HarmonyEASService$1;-><init>(Lcom/android/server/HarmonyEASService;)V

    iput-object v0, p0, Lcom/android/server/HarmonyEASService;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/HarmonyEASService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/HarmonyEASService$PackageHandler;

    invoke-direct {v0, p0}, Lcom/android/server/HarmonyEASService$PackageHandler;-><init>(Lcom/android/server/HarmonyEASService;)V

    iput-object v0, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/HarmonyEASService;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/HarmonyEASService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HarmonyEASService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/HarmonyEASService;->saveHash(I)V

    return-void
.end method

.method private declared-synchronized addHashForPackage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p3}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mHashValueToPkgNameMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized addPackageAsUnknown(Ljava/lang/String;I)V
    .registers 10

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    iget-object v3, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v1, 0x1

    :cond_17
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_29

    iget-object v3, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p2, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_29
    .catchall {:try_start_2 .. :try_end_29} :catchall_2b

    :cond_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    if-nez v0, :cond_19

    new-instance v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;-><init>(Lcom/android/server/HarmonyEASService$1;)V

    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Lcom/android/server/HarmonyEASService;->loadHashVaues(Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;I)V

    :cond_19
    monitor-exit p0

    return-object v0

    :catchall_1b
    move-exception v1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private loadHashVaues(Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;I)V
    .registers 20

    const/4 v2, 0x0

    invoke-static/range {p2 .. p2}, Lcom/android/server/HarmonyEASService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mHashValueToPkgNameMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    :try_start_11
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v7}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v14

    invoke-direct {v3, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_ce
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1a} :catch_d0

    if-nez v3, :cond_23

    if-eqz v3, :cond_21

    :try_start_1e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_c9

    :cond_21
    :goto_21
    move-object v2, v3

    :cond_22
    :goto_22
    return-void

    :cond_23
    :try_start_23
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    const/4 v14, 0x0

    invoke-interface {v9, v3, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_2b
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    const/4 v14, 0x1

    if-eq v12, v14, :cond_35

    const/4 v14, 0x2

    if-ne v12, v14, :cond_2b

    :cond_35
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v14, "third-party-apps"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_69

    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "harmony eas settings do not start with proper tag: found "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_5c
    .catchall {:try_start_23 .. :try_end_5c} :catchall_b4
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_5c} :catch_5c

    :catch_5c
    move-exception v1

    move-object v2, v3

    :goto_5e
    :try_start_5e
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_ce

    if-eqz v2, :cond_22

    :try_start_63
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_22

    :catch_67
    move-exception v14

    goto :goto_22

    :cond_69
    :try_start_69
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    :cond_77
    :goto_77
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    const/4 v14, 0x1

    if-eq v12, v14, :cond_bf

    const/4 v14, 0x3

    if-ne v12, v14, :cond_87

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v8, :cond_bf

    :cond_87
    const/4 v14, 0x3

    if-eq v12, v14, :cond_77

    const/4 v14, 0x4

    if-eq v12, v14, :cond_77

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    const-string v15, "hash"

    invoke-interface {v9, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x0

    const-string v15, "isUnsigned"

    invoke-interface {v9, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    monitor-enter p0
    :try_end_a4
    .catchall {:try_start_69 .. :try_end_a4} :catchall_b4
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_a4} :catch_5c

    :try_start_a4
    invoke-virtual {v11, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_af

    invoke-virtual {v13, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_af
    monitor-exit p0
    :try_end_b0
    .catchall {:try_start_a4 .. :try_end_b0} :catchall_bc

    :try_start_b0
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_b4
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b3} :catch_5c

    goto :goto_77

    :catchall_b4
    move-exception v14

    move-object v2, v3

    :goto_b6
    if-eqz v2, :cond_bb

    :try_start_b8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_c7

    :cond_bb
    :goto_bb
    throw v14

    :catchall_bc
    move-exception v14

    :try_start_bd
    monitor-exit p0
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_bc

    :try_start_be
    throw v14
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_b4
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_bf} :catch_5c

    :cond_bf
    if-eqz v3, :cond_c4

    :try_start_c1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_cc

    :cond_c4
    :goto_c4
    move-object v2, v3

    goto/16 :goto_22

    :catch_c7
    move-exception v15

    goto :goto_bb

    :catch_c9
    move-exception v14

    goto/16 :goto_21

    :catch_cc
    move-exception v14

    goto :goto_c4

    :catchall_ce
    move-exception v14

    goto :goto_b6

    :catch_d0
    move-exception v1

    goto :goto_5e
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .registers 7

    if-nez p0, :cond_27

    const-string v0, "data/system/harmony_third_party_apps.xml"

    :goto_4
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1

    :cond_27
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "harmony_third_party_apps.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private saveHash(I)V
    .registers 22

    invoke-direct/range {p0 .. p1}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v3

    iget-object v15, v3, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    iget-object v0, v3, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    move-object/from16 v16, v0

    const/4 v9, 0x0

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/server/HarmonyEASService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v13

    :try_start_10
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-virtual {v13}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v10, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_db
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1f} :catch_f4

    :try_start_1f
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_ed
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_24} :catch_f6

    :try_start_24
    new-instance v14, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v14}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string v17, "utf-8"

    move-object/from16 v0, v17

    invoke-interface {v14, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v17, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const/16 v17, 0x0

    const-string v18, "third-party-apps"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_60
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-interface {v14, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v17, 0x0

    const-string v18, "hash"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v17, 0x0

    const-string v18, "isUnsigned"

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-interface {v14, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_a2
    .catchall {:try_start_24 .. :try_end_a2} :catchall_f0
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_a2} :catch_a3

    goto :goto_60

    :catch_a3
    move-exception v8

    move-object v4, v5

    move-object v9, v10

    :goto_a6
    :try_start_a6
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v13}, Lcom/android/internal/util/JournaledFile;->rollback()V
    :try_end_ac
    .catchall {:try_start_a6 .. :try_end_ac} :catchall_db

    if-eqz v4, :cond_b1

    :try_start_ae
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    :cond_b1
    if-eqz v9, :cond_b6

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b6} :catch_e9

    :cond_b6
    :goto_b6
    return-void

    :cond_b7
    const/16 v17, 0x0

    :try_start_b9
    const-string v18, "third-party-apps"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-static {v10}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v13}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_ce
    .catchall {:try_start_b9 .. :try_end_ce} :catchall_f0
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_ce} :catch_a3

    if-eqz v5, :cond_d3

    :try_start_d0
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    :cond_d3
    if-eqz v10, :cond_d8

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d8} :catch_e7

    :cond_d8
    :goto_d8
    move-object v4, v5

    move-object v9, v10

    goto :goto_b6

    :catchall_db
    move-exception v17

    :goto_dc
    if-eqz v4, :cond_e1

    :try_start_de
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    :cond_e1
    if-eqz v9, :cond_e6

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e6} :catch_eb

    :cond_e6
    :goto_e6
    throw v17

    :catch_e7
    move-exception v17

    goto :goto_d8

    :catch_e9
    move-exception v17

    goto :goto_b6

    :catch_eb
    move-exception v18

    goto :goto_e6

    :catchall_ed
    move-exception v17

    move-object v9, v10

    goto :goto_dc

    :catchall_f0
    move-exception v17

    move-object v4, v5

    move-object v9, v10

    goto :goto_dc

    :catch_f4
    move-exception v8

    goto :goto_a6

    :catch_f6
    move-exception v8

    move-object v9, v10

    goto :goto_a6
.end method


# virtual methods
.method clearDataForUser(I)V
    .registers 5

    monitor-enter p0

    if-nez p1, :cond_5

    :try_start_3
    monitor-exit p0

    :goto_4
    return-void

    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "harmony_third_party_apps.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_20
    monitor-exit p0

    goto :goto_4

    :catchall_22
    move-exception v1

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public getHashValueFromPackageName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    invoke-direct {p0, p2}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    :goto_f
    if-eqz v1, :cond_15

    :goto_11
    return-object v1

    :cond_12
    const-string v1, ""

    goto :goto_f

    :cond_15
    const-string v1, ""

    goto :goto_11
.end method

.method public getPackageNameFromHash(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    invoke-direct {p0, p2}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mHashValueToPkgNameMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    :goto_f
    if-eqz v1, :cond_15

    :goto_11
    return-object v1

    :cond_12
    const-string v1, ""

    goto :goto_f

    :cond_15
    const-string v1, ""

    goto :goto_11
.end method

.method public getThirdPartyApps(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getUnknownSourcesPackages(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method handlePackagesChanged(I)V
    .registers 12

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/server/HarmonyEASService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    monitor-enter p0

    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_17
    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_36

    const/4 v3, 0x0

    const/4 v6, 0x0

    :try_start_25
    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_28} :catch_39

    move-result-object v6

    if-nez v6, :cond_2d

    const/4 v3, 0x1

    const/4 v2, 0x1

    :cond_2d
    :goto_2d
    if-eqz v3, :cond_17

    :try_start_2f
    invoke-virtual {p0, v0, p1}, Lcom/android/server/HarmonyEASService;->removeInstallationPackageExtras(Ljava/lang/String;I)V

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_17

    :catchall_36
    move-exception v6

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_36

    throw v6

    :catch_39
    move-exception v1

    const/4 v3, 0x1

    const/4 v2, 0x1

    goto :goto_2d

    :cond_3d
    if-eqz v2, :cond_4c

    :try_start_3f
    iget-object v6, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p1, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_3f .. :try_end_4d} :catchall_36

    return-void
.end method

.method declared-synchronized handleUserChanged(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isPackageUnknownSource(Ljava/lang/String;I)Z
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method public removeInstallationPackage(Ljava/lang/String;I)V
    .registers 8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_35

    const/4 v3, -0x1

    if-ne p2, v3, :cond_32

    iget-object v3, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v3}, Lcom/android/server/HarmonyEASService;->removeInstallationPackageExtras(Ljava/lang/String;I)V

    goto :goto_20

    :cond_32
    invoke-virtual {p0, p1, p2}, Lcom/android/server/HarmonyEASService;->removeInstallationPackageExtras(Ljava/lang/String;I)V

    :cond_35
    return-void
.end method

.method public removeInstallationPackageExtras(Ljava/lang/String;I)V
    .registers 11

    invoke-direct {p0, p2}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mHashValueToPkgNameMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    monitor-enter p0

    :try_start_b
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_30

    iget-object v4, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p2, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_30
    move-exception v4

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v4
.end method

.method public setInstallationPackageHashValue(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 12

    const/4 v4, 0x1

    if-eq v4, p3, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v4, p4, :cond_17

    iget-object v4, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    if-eqz v4, :cond_17

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    :cond_17
    if-eqz v1, :cond_4b

    const-string v4, "HarmonyEASService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating for all "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/HarmonyEASService;->addHashForPackage(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_39

    :cond_4b
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/HarmonyEASService;->addHashForPackage(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3
.end method

.method public setInstallationPackageUnknown(Ljava/lang/String;II)V
    .registers 11

    const/4 v4, 0x1

    if-eq v4, p2, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v4, p3, :cond_17

    iget-object v4, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    if-eqz v4, :cond_17

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    :cond_17
    if-eqz v1, :cond_4b

    const-string v4, "HarmonyEASService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating for all "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1, v4}, Lcom/android/server/HarmonyEASService;->addPackageAsUnknown(Ljava/lang/String;I)V

    goto :goto_39

    :cond_4b
    invoke-direct {p0, p1, p3}, Lcom/android/server/HarmonyEASService;->addPackageAsUnknown(Ljava/lang/String;I)V

    goto :goto_3
.end method
