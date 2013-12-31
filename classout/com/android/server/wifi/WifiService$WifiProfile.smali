.class Lcom/android/server/wifi/WifiService$WifiProfile;
.super Ljava/lang/Object;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiProfile"
.end annotation


# static fields
.field private static final fileGeneralNwInfo:Ljava/lang/String; = "/data/misc/wifi/generalinfo_nw.conf"

.field private static final fileNamedata:Ljava/lang/String; = "/data/misc/wifi/default_ap.conf"


# instance fields
.field private filePath:Ljava/io/File;

.field private flagForDefaultAp:Z

.field private flagForGeneralNwInfo:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiService;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$1902([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;

    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$2002([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForDefaultAp:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForGeneralNwInfo:Z

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->filePath:Ljava/io/File;

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/WifiService$WifiProfile;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService$WifiProfile;->checkNetworkName()V

    return-void
.end method

.method private checkNetworkName()V
    .registers 13

    const-string v6, ""

    const-string v5, ""

    const-string v4, ""

    new-instance v7, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v7}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const-string v9, "gsm.sim.operator.numeric"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    const-string v9, ""

    invoke-static {v9}, Lcom/android/server/wifi/WifiService;->access$2102(Ljava/lang/String;)Ljava/lang/String;

    const-string v9, ""

    invoke-static {v9}, Lcom/android/server/wifi/WifiService;->access$1702(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v9

    if-eqz v9, :cond_3f

    const-string v9, "WifiService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mMCCMNC = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2000()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v9

    if-eqz v9, :cond_bc

    const/4 v3, 0x0

    :goto_46
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2000()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v9

    array-length v9, v9

    if-ge v3, v9, :cond_bc

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v9

    if-eqz v9, :cond_75

    const-string v9, "WifiService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mGeneralNwInfo[j].getMCCMNC() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2000()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiService$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_75
    const-string v9, ""

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_175

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2000()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v9

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiService$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_175

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2000()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v9

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiService$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/wifi/WifiService;->access$2102(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v9

    if-eqz v9, :cond_bc

    const-string v9, "WifiService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mMatchedNetworkName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2100()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bc
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v9

    if-eqz v9, :cond_174

    const/4 v8, 0x0

    :goto_c3
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v9

    array-length v9, v9

    if-ge v8, v9, :cond_174

    if-eqz v1, :cond_186

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_168

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-nez v9, :cond_ee

    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_f0

    :cond_ee
    const-string v5, "WPA-EAP IEEE8021X"

    :cond_f0
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_179

    const-string v4, "SIM"

    :cond_fb
    :goto_fb
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    aget-object v10, v10, v8

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiService$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/wifi/WifiService$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d0

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v9

    aget-object v9, v9, v8

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiService$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d0

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v9

    aget-object v9, v9, v8

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d0

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v9

    aget-object v9, v9, v8

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiService$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/wifi/WifiService;->access$1702(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v9

    if-eqz v9, :cond_160

    const-string v9, "WifiService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mMatchedPrevNetworkName"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1700()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_160
    const-string v5, ""

    const-string v4, ""

    const/4 v9, 0x1

    invoke-static {v9}, Lcom/android/server/wifi/WifiService;->access$1602(Z)Z

    :cond_168
    const-string v9, ""

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1700()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_186

    :cond_174
    return-void

    :cond_175
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_46

    :cond_179
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_fb

    const-string v4, "AKA"

    goto/16 :goto_fb

    :cond_186
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_c3
.end method

.method private convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGeneralNwInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiService$ApInfo;
    .registers 19

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v14

    if-eqz v14, :cond_d

    const-string v14, "WifiService"

    const-string v15, "getGeneralNwInfoFromFile()"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForGeneralNwInfo:Z

    const-string v1, ""

    const-string v2, ""

    const/4 v6, 0x0

    :try_start_17
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_c9
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_23} :catch_b8

    :cond_23
    :goto_23
    :try_start_23
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d0

    const-string v14, "mccmnc=\""

    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_70

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x22

    invoke-virtual {v8, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x22

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    :cond_70
    const-string v14, "networkname=\""

    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_23

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x22

    invoke-virtual {v11, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x22

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b5
    .catchall {:try_start_23 .. :try_end_b5} :catchall_154
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_b5} :catch_158

    move-result-object v2

    goto/16 :goto_23

    :catch_b8
    move-exception v4

    :goto_b9
    :try_start_b9
    const-string v14, "WifiService"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catchall {:try_start_b9 .. :try_end_c2} :catchall_c9

    const/4 v13, 0x0

    if-eqz v6, :cond_c8

    :try_start_c5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_13b

    :cond_c8
    :goto_c8
    return-object v13

    :catchall_c9
    move-exception v14

    :goto_ca
    if-eqz v6, :cond_cf

    :try_start_cc
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_12f

    :cond_cf
    throw v14

    :cond_d0
    if-eqz v7, :cond_d5

    :try_start_d2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d5} :catch_146

    :cond_d5
    const-string v14, ","

    invoke-virtual {v1, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const-string v14, ","

    invoke-virtual {v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v10, v9

    new-array v13, v10, [Lcom/android/server/wifi/WifiService$ApInfo;

    const/4 v5, 0x0

    :goto_e5
    if-ge v5, v10, :cond_12d

    new-instance v14, Lcom/android/server/wifi/WifiService$ApInfo;

    aget-object v15, v9, v5

    aget-object v16, v12, v5

    invoke-direct/range {v14 .. v16}, Lcom/android/server/wifi/WifiService$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v13, v5

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v14

    if-eqz v14, :cond_12a

    const-string v14, "WifiService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "GeneralNwInfo["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v13, v5

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/WifiService$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v13, v5

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/WifiService$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12a
    add-int/lit8 v5, v5, 0x1

    goto :goto_e5

    :cond_12d
    move-object v6, v7

    goto :goto_c8

    :catch_12f
    move-exception v4

    const-string v14, "WifiService"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_139
    const/4 v13, 0x0

    goto :goto_c8

    :catch_13b
    move-exception v4

    const-string v14, "WifiService"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_139

    :catch_146
    move-exception v4

    const-string v14, "WifiService"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    move-object v6, v7

    goto/16 :goto_c8

    :catchall_154
    move-exception v14

    move-object v6, v7

    goto/16 :goto_ca

    :catch_158
    move-exception v4

    move-object v6, v7

    goto/16 :goto_b9
.end method

.method private getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiService$ApInfo;
    .registers 35

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "WifiService"

    const-string v3, "getVendorApInfoFromFile()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForDefaultAp:Z

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const/16 v19, 0x0

    :try_start_20
    new-instance v20, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_1e1
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2e} :catch_1cf

    :cond_2e
    :goto_2e
    :try_start_2e
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1e8

    const-string v2, "ssid=\""

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x22

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x22

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2e

    :cond_7d
    const-string v2, "key_mgmt="

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_bf

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2e

    :cond_bf
    const-string v2, "wep_key0="

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_101

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2e

    :cond_101
    const-string v2, "priority="

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_143

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2e

    :cond_143
    const-string v2, "eap="

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_185

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2e

    :cond_185
    const-string v2, "networkname=\""

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1cc
    .catchall {:try_start_2e .. :try_end_1cc} :catchall_363
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_1cc} :catch_368

    move-result-object v13

    goto/16 :goto_2e

    :catch_1cf
    move-exception v15

    :goto_1d0
    :try_start_1d0
    const-string v2, "WifiService"

    invoke-virtual {v15}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d9
    .catchall {:try_start_1d0 .. :try_end_1d9} :catchall_1e1

    const/16 v26, 0x0

    if-eqz v19, :cond_1e0

    :try_start_1dd
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_1e0
    .catch Ljava/io/IOException; {:try_start_1dd .. :try_end_1e0} :catch_348

    :cond_1e0
    :goto_1e0
    return-object v26

    :catchall_1e1
    move-exception v2

    :goto_1e2
    if-eqz v19, :cond_1e7

    :try_start_1e4
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_1e7
    .catch Ljava/io/IOException; {:try_start_1e4 .. :try_end_1e7} :catch_33a

    :cond_1e7
    throw v2

    :cond_1e8
    if-eqz v20, :cond_1ed

    :try_start_1ea
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->close()V
    :try_end_1ed
    .catch Ljava/io/IOException; {:try_start_1ea .. :try_end_1ed} :catch_353

    :cond_1ed
    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    const-string v2, ","

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    const-string v2, ","

    invoke-virtual {v10, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    const-string v2, ","

    invoke-virtual {v11, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    const-string v2, ","

    invoke-virtual {v12, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    const-string v2, ","

    invoke-virtual {v13, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v30

    array-length v2, v0

    move-object/from16 v0, v28

    array-length v3, v0

    if-eq v2, v3, :cond_225

    const-string v2, "WifiService"

    const-string v3, "Parse error default ap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x0

    move-object/from16 v19, v20

    goto :goto_1e0

    :cond_225
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [Lcom/android/server/wifi/WifiService$ApInfo;

    move-object/from16 v26, v0

    const-string v2, ""

    const/4 v3, 0x0

    aget-object v3, v25, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32d

    const-string v2, ""

    const/4 v3, 0x0

    aget-object v3, v30, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32d

    const-string v2, ""

    const/4 v3, 0x0

    aget-object v3, v17, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32d

    const/16 v18, 0x0

    :goto_253
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_329

    const-string v2, ""

    aget-object v3, v25, v18

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2ee

    const-string v2, ""

    aget-object v3, v17, v18

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2ee

    const-string v2, ""

    const/4 v3, 0x0

    aget-object v3, v23, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2ee

    const-string v2, ""

    const/4 v3, 0x0

    aget-object v3, v28, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2ee

    new-instance v2, Lcom/android/server/wifi/WifiService$ApInfo;

    aget-object v3, v30, v18

    aget-object v4, v28, v18

    aget-object v5, v25, v18

    aget-object v6, v17, v18

    aget-object v7, v23, v18

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wifi/WifiService$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v26, v18

    :cond_294
    :goto_294
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_2ea

    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DefaultAp["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v26, v18

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiService$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v26, v18

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiService$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ret[].getEap() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v26, v18

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2ea
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_253

    :cond_2ee
    const-string v2, ""

    aget-object v3, v25, v18

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_294

    const-string v2, ""

    aget-object v3, v17, v18

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_294

    const-string v2, ""

    const/4 v3, 0x0

    aget-object v3, v23, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_294

    const-string v2, ""

    const/4 v3, 0x0

    aget-object v3, v28, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_294

    new-instance v2, Lcom/android/server/wifi/WifiService$ApInfo;

    aget-object v3, v30, v18

    aget-object v4, v28, v18

    aget-object v5, v25, v18

    aget-object v6, v17, v18

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/server/wifi/WifiService$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v26, v18

    goto/16 :goto_294

    :cond_329
    move-object/from16 v19, v20

    goto/16 :goto_1e0

    :cond_32d
    const-string v2, "WifiService"

    const-string v3, "No ApInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x0

    move-object/from16 v19, v20

    goto/16 :goto_1e0

    :catch_33a
    move-exception v15

    const-string v2, "WifiService"

    invoke-virtual {v15}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_344
    const/16 v26, 0x0

    goto/16 :goto_1e0

    :catch_348
    move-exception v15

    const-string v2, "WifiService"

    invoke-virtual {v15}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_344

    :catch_353
    move-exception v15

    const-string v2, "WifiService"

    invoke-virtual {v15}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x0

    move-object/from16 v19, v20

    goto/16 :goto_1e0

    :catchall_363
    move-exception v2

    move-object/from16 v19, v20

    goto/16 :goto_1e2

    :catch_368
    move-exception v15

    move-object/from16 v19, v20

    goto/16 :goto_1d0
.end method


# virtual methods
.method public addChangedWifiProfile()V
    .registers 10

    const/4 v8, 0x2

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v5, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService$WifiProfile;->checkNetworkName()V

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v5

    if-eqz v5, :cond_d7

    const/4 v1, 0x0

    :goto_26
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v5

    array-length v5, v5

    if-ge v1, v5, :cond_d7

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1700()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2100()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ba

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2100()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ba

    const-string v5, "WifiService"

    const-string v6, "addChangedWifiProfile()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiService$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiService$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-boolean v7, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput v8, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiService$ApInfo;->getPriority()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/net/wifi/WifiConfiguration;->priority:I

    const-string v5, "WPA-EAP IEEE8021X"

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_97

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v8}, Ljava/util/BitSet;->set(I)V

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    :cond_97
    const-string v5, "SIM"

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_be

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    :cond_af
    :goto_af
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    invoke-virtual {v3, v2, v7}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/server/wifi/WifiService;->access$1302(Z)Z

    :cond_ba
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_26

    :cond_be
    const-string v5, "AKA"

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_af

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_af

    :cond_d7
    return-void
.end method

.method public addWifiVendorProfile()V
    .registers 9

    const/4 v7, 0x2

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v4

    if-eqz v4, :cond_b1

    const/4 v0, 0x0

    :goto_1d
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_b1

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v4

    if-eqz v4, :cond_31

    const-string v4, "WifiService"

    const-string v5, "addWifiVendorProfile()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiService$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiService$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-boolean v6, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput v7, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiService$ApInfo;->getPriority()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/wifi/WifiConfiguration;->priority:I

    const-string v4, "WPA-EAP IEEE8021X"

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiService$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    :cond_72
    const-string v4, "SIM"

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_98

    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    :cond_8a
    :goto_8a
    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    invoke-virtual {v2, v1, v6}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/server/wifi/WifiService;->access$1302(Z)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_98
    const-string v4, "AKA"

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8a

    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_8a

    :cond_b1
    return-void
.end method

.method public getGeneralNwInfo()[Lcom/android/server/wifi/WifiService$ApInfo;
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForGeneralNwInfo:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2000()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/generalinfo_nw.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->filePath:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->filePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "/data/misc/wifi/generalinfo_nw.conf"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiService$WifiProfile;->getGeneralNwInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$2002([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;

    :cond_23
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2000()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    goto :goto_8
.end method

.method public getVendorApInfo()[Lcom/android/server/wifi/WifiService$ApInfo;
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForDefaultAp:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/default_ap.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->filePath:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->filePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "/data/misc/wifi/default_ap.conf"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiService$WifiProfile;->getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$1902([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;

    :cond_23
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    goto :goto_8
.end method

.method public removeChangedWifiProfile()V
    .registers 11

    const/4 v9, 0x1

    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v7, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    const-string v4, ""

    const-string v3, ""

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService$WifiProfile;->checkNetworkName()V

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1700()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2100()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_bf

    const/4 v6, 0x0

    :goto_22
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_bf

    if-eqz v1, :cond_bb

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2f
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_bb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-nez v7, :cond_4d

    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_4f

    :cond_4d
    const-string v4, "WPA-EAP IEEE8021X"

    :cond_4f
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_af

    const-string v3, "SIM"

    :cond_5a
    :goto_5a
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v8

    aget-object v8, v8, v6

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiService$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/wifi/WifiService$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiService$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v7

    if-eqz v7, :cond_9d

    const-string v7, "WifiService"

    const-string v8, "remove proper wifi profile"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9d
    iget-object v7, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiService;->removeNetwork(I)Z

    const-string v4, ""

    const-string v3, ""

    invoke-static {v9}, Lcom/android/server/wifi/WifiService;->access$1302(Z)Z

    invoke-static {v9}, Lcom/android/server/wifi/WifiService;->access$1802(Z)Z

    goto :goto_2f

    :cond_af
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_5a

    const-string v3, "AKA"

    goto :goto_5a

    :cond_bb
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_22

    :cond_bf
    return-void
.end method
