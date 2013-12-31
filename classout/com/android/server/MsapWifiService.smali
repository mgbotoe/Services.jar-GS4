.class public Lcom/android/server/MsapWifiService;
.super Landroid/net/wifi/IMsapWifiManager$Stub;
.source "MsapWifiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MsapWifiService$VenueInfoCacheItem;
    }
.end annotation


# static fields
.field private static final BSSID_STR:Ljava/lang/String; = "bssid="

.field public static final DEBUG:Z = true

.field private static final DELIMITER_STR:Ljava/lang/String; = "===="

.field private static final FLAGS_STR:Ljava/lang/String; = "flags="

.field private static final FREQ_STR:Ljava/lang/String; = "freq="

.field private static final LEVEL_STR:Ljava/lang/String; = "level="

.field private static final NOISE_STR:Ljava/lang/String; = "noise="

.field private static final QUAL_STR:Ljava/lang/String; = "qual="

.field private static final SERVER_STR:Ljava/lang/String; = "server-id="

.field private static final SSID_STR:Ljava/lang/String; = "ssid="

.field public static final TAG:Ljava/lang/String; = "SMsapWifiService"

.field private static final VENUE_STR:Ljava/lang/String; = "venue-hash="

.field private static byteArrayPayload:[B

.field private static dialog_token:I

.field private static mBSSID:Ljava/lang/String;

.field private static mCurr_BSSID:Ljava/lang/String;

.field private static mcurr_dialog_token:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mVenueAddedCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/MsapWifiService$VenueInfoCacheItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private receiverRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput v0, Lcom/android/server/MsapWifiService;->dialog_token:I

    const/4 v0, -0x1

    sput v0, Lcom/android/server/MsapWifiService;->mcurr_dialog_token:I

    sput-object v1, Lcom/android/server/MsapWifiService;->mBSSID:Ljava/lang/String;

    sput-object v1, Lcom/android/server/MsapWifiService;->mCurr_BSSID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/net/wifi/IMsapWifiManager$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MsapWifiService;->receiverRegistered:Z

    new-instance v0, Lcom/android/server/MsapWifiService$1;

    invoke-direct {v0, p0}, Lcom/android/server/MsapWifiService$1;-><init>(Lcom/android/server/MsapWifiService;)V

    iput-object v0, p0, Lcom/android/server/MsapWifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MsapWifiService;->mVenueAddedCache:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcom/android/server/MsapWifiService;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    if-nez p1, :cond_4

    const/4 v5, 0x0

    :goto_3
    return-object v5

    :cond_4
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_1e

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\S"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    move v1, v2

    :cond_1e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :goto_24
    if-lez v3, :cond_37

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\S"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    move v0, v3

    :cond_37
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_41
    add-int/lit8 v3, v3, -0x1

    goto :goto_24
.end method

.method private getValue(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 18

    move-object/from16 v0, p2

    array-length v11, v0

    new-array v12, v11, [Ljava/lang/String;

    :try_start_5
    const-string v13, "\t"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move-object v1, v9

    array-length v7, v1

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v7, :cond_56

    aget-object v8, v1, v5

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v11, :cond_48

    const-string v13, "="

    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_1c} :catch_52

    move-result v3

    const/4 v6, 0x0

    const/4 v10, 0x0

    :try_start_1f
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_30

    const/4 v13, 0x0

    invoke-virtual {v8, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    :cond_30
    invoke-direct {p0, v6}, Lcom/android/server/MsapWifiService;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4f

    invoke-direct {p0, v6}, Lcom/android/server/MsapWifiService;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aget-object v14, p2, v4

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4f

    invoke-direct {p0, v10}, Lcom/android/server/MsapWifiService;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v4
    :try_end_48
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1f .. :try_end_48} :catch_4b
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_48} :catch_52

    :cond_48
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :catch_4b
    move-exception v2

    :try_start_4c
    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V
    :try_end_4f
    .catch Ljava/lang/NullPointerException; {:try_start_4c .. :try_end_4f} :catch_52

    :cond_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :catch_52
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_56
    return-object v12
.end method

.method private hexToBytes(Ljava/lang/String;)[B
    .registers 10

    const/4 v5, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-object v5

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_14

    const-string v6, "SMsapWifiService"

    const-string v7, "Invalid length; must be multiple of 2"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_14
    div-int/lit8 v2, v4, 0x2

    new-array v5, v2, [B

    const/4 v3, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_1b
    if-ge v3, v4, :cond_3

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v6, v3, 0x2

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    add-int/lit8 v3, v3, 0x2

    move v1, v0

    goto :goto_1b
.end method


# virtual methods
.method public gasReq(IILjava/lang/String;)Z
    .registers 13

    const/4 v4, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_3
    const-string v6, "SMsapWifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Process gas request("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "):\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0xff

    if-ne p2, v6, :cond_6d

    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.net.wifi.msap.GAS_RSP"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "responseHash"

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "responseId"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "payloadLen"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "erroInfo"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/MsapWifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v3, 0x0

    :goto_69
    monitor-exit p0

    if-nez v3, :cond_a8

    :goto_6c
    return v4

    :cond_6d
    const/4 v6, 0x0

    sput-object v6, Lcom/android/server/MsapWifiService;->mCurr_BSSID:Ljava/lang/String;

    const/4 v6, -0x1

    sput v6, Lcom/android/server/MsapWifiService;->mcurr_dialog_token:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v6, 0x40

    iput v6, v2, Landroid/os/Message;->what:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/MsapWifiService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v3

    goto :goto_69

    :catchall_a5
    move-exception v4

    monitor-exit p0
    :try_end_a7
    .catchall {:try_start_3 .. :try_end_a7} :catchall_a5

    throw v4

    :cond_a8
    move v4, v5

    goto :goto_6c
.end method

.method public getBss(Ljava/lang/String;)Landroid/net/wifi/MsapBssInfo;
    .registers 27

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v19

    const/16 v22, 0x44

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MsapWifiService;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v20

    monitor-exit p0

    if-nez v20, :cond_2b

    const/16 v22, 0x0

    :goto_27
    return-object v22

    :catchall_28
    move-exception v22

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_28

    throw v22

    :cond_2b
    move-object/from16 v21, v20

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v11, -0x1

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v12, v18

    array-length v0, v12

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_43
    move/from16 v0, v16

    if-ge v15, v0, :cond_1e6

    aget-object v17, v12, v15

    const-string v22, "bssid="

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_66

    const-string v22, "bssid="

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_63
    :goto_63
    add-int/lit8 v15, v15, 0x1

    goto :goto_43

    :cond_66
    const-string v22, "freq="

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_88

    :try_start_72
    const-string v22, "freq="

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_83
    .catch Ljava/lang/NumberFormatException; {:try_start_72 .. :try_end_83} :catch_85

    move-result v4

    goto :goto_63

    :catch_85
    move-exception v13

    const/4 v4, 0x0

    goto :goto_63

    :cond_88
    const-string v22, "qual="

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_aa

    :try_start_94
    const-string v22, "qual="

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a5
    .catch Ljava/lang/NumberFormatException; {:try_start_94 .. :try_end_a5} :catch_a7

    move-result v5

    goto :goto_63

    :catch_a7
    move-exception v13

    const/4 v5, 0x0

    goto :goto_63

    :cond_aa
    const-string v22, "noise="

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_cc

    :try_start_b6
    const-string v22, "noise="

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c7
    .catch Ljava/lang/NumberFormatException; {:try_start_b6 .. :try_end_c7} :catch_c9

    move-result v6

    goto :goto_63

    :catch_c9
    move-exception v13

    const/4 v6, 0x0

    goto :goto_63

    :cond_cc
    const-string v22, "level="

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_f4

    :try_start_d8
    const-string v22, "level="

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_e9
    .catch Ljava/lang/NumberFormatException; {:try_start_d8 .. :try_end_e9} :catch_f0

    move-result v7

    if-lez v7, :cond_63

    add-int/lit16 v7, v7, -0x100

    goto/16 :goto_63

    :catch_f0
    move-exception v13

    const/4 v7, 0x0

    goto/16 :goto_63

    :cond_f4
    const-string v22, "flags="

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_11b

    const-string v22, "flags="

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const-string v22, "MSAP"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_63

    const/4 v9, 0x1

    goto/16 :goto_63

    :cond_11b
    const-string v22, "ssid="

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_137

    const-string v22, "ssid="

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_63

    :cond_137
    const-string v22, "venue-hash="

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_153

    const-string v22, "venue-hash="

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_63

    :cond_153
    const-string v22, "server-id="

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_177

    :try_start_15f
    const-string v22, "server-id="

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_170
    .catch Ljava/lang/NumberFormatException; {:try_start_15f .. :try_end_170} :catch_173

    move-result v11

    goto/16 :goto_63

    :catch_173
    move-exception v13

    const/4 v11, 0x0

    goto/16 :goto_63

    :cond_177
    const-string v22, "===="

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_63

    if-eqz v3, :cond_63

    if-eqz v8, :cond_63

    if-eqz v10, :cond_63

    const-string v22, "SMsapWifiService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "MsapBssInfo"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1da

    new-instance v2, Landroid/net/wifi/MsapBssInfo;

    invoke-direct/range {v2 .. v11}, Landroid/net/wifi/MsapBssInfo;-><init>(Ljava/lang/String;IIIILjava/lang/String;ILjava/lang/String;I)V

    :cond_1da
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v14, ""

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto/16 :goto_63

    :cond_1e6
    move-object/from16 v22, v2

    goto/16 :goto_27
.end method

.method public getGasResponse()[B
    .registers 2

    sget-object v0, Lcom/android/server/MsapWifiService;->byteArrayPayload:[B

    return-object v0
.end method

.method public notifyGasReqStatus(Ljava/lang/String;)V
    .registers 13

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    const/4 v1, 0x1

    const/4 v7, 0x3

    new-array v3, v7, [Ljava/lang/String;

    const-string v7, "addr"

    aput-object v7, v3, v8

    const-string v7, "dialog_token"

    aput-object v7, v3, v9

    const-string v7, "status_code"

    aput-object v7, v3, v10

    invoke-direct {p0, p1, v3}, Lcom/android/server/MsapWifiService;->getValue(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v4, :cond_3e

    aget-object v7, v6, v2

    if-nez v7, :cond_7d

    const/4 v1, 0x0

    const-string v7, "SMsapWifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Gas response has \'NULL\' value for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v3, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    if-eqz v1, :cond_5

    const/4 v7, 0x0

    :try_start_41
    aget-object v7, v6, v7

    sput-object v7, Lcom/android/server/MsapWifiService;->mCurr_BSSID:Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/android/server/MsapWifiService;->mcurr_dialog_token:I

    const/4 v7, 0x2

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v7, "SMsapWifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The total length of all sections expected: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/MsapWifiService;->mBSSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/server/MsapWifiService;->dialog_token:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_79} :catch_80

    if-gez v5, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_7d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :catch_80
    move-exception v0

    const/4 v1, 0x0

    goto :goto_5
.end method

.method public notifyGasResponse(Ljava/lang/String;)V
    .registers 26

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    const/4 v5, 0x1

    const/4 v12, -0x1

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v11, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string v20, "addr"

    aput-object v20, v11, v19

    const/16 v19, 0x1

    const-string v20, "dialog_token"

    aput-object v20, v11, v19

    const/16 v19, 0x2

    const-string v20, "status_code"

    aput-object v20, v11, v19

    const/16 v19, 0x3

    const-string v20, "resp_len"

    aput-object v20, v11, v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/server/MsapWifiService;->getValue(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    array-length v0, v11

    move/from16 v16, v0

    const/16 v17, 0x0

    const/4 v6, 0x0

    :goto_31
    move/from16 v0, v16

    if-ge v6, v0, :cond_54

    aget-object v19, v18, v6

    if-nez v19, :cond_19d

    const/4 v5, 0x0

    const-string v19, "SMsapWifiService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Gas response has \'NULL\' value for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-object v21, v11, v6

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    if-eqz v5, :cond_aa

    const/16 v19, 0x0

    :try_start_58
    aget-object v19, v18, v19

    sput-object v19, Lcom/android/server/MsapWifiService;->mBSSID:Ljava/lang/String;

    const/16 v19, 0x1

    aget-object v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    sput v19, Lcom/android/server/MsapWifiService;->dialog_token:I

    const/16 v19, 0x2

    aget-object v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    const/16 v19, 0x3

    aget-object v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const-string v19, "SMsapWifiService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "The total length of all sections expected: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/android/server/MsapWifiService;->mBSSID:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lcom/android/server/MsapWifiService;->dialog_token:I

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catch Ljava/lang/NumberFormatException; {:try_start_58 .. :try_end_a4} :catch_1a6

    if-gez v17, :cond_a7

    const/4 v5, 0x0

    :cond_a7
    if-gez v12, :cond_1a1

    const/4 v5, 0x0

    :cond_aa
    :goto_aa
    sget-object v19, Lcom/android/server/MsapWifiService;->mCurr_BSSID:Ljava/lang/String;

    sget-object v20, Lcom/android/server/MsapWifiService;->mBSSID:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_c6

    sget v19, Lcom/android/server/MsapWifiService;->mcurr_dialog_token:I

    sget v20, Lcom/android/server/MsapWifiService;->dialog_token:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c6

    const/16 v19, 0x0

    sput-object v19, Lcom/android/server/MsapWifiService;->mCurr_BSSID:Ljava/lang/String;

    const/16 v19, -0x1

    sput v19, Lcom/android/server/MsapWifiService;->mcurr_dialog_token:I

    :cond_c6
    if-lez v12, :cond_240

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v13, v12

    const/16 v9, 0x1000

    const/4 v14, 0x0

    :goto_ce
    monitor-enter p0

    if-le v13, v9, :cond_1ab

    move v8, v9

    sub-int/2addr v13, v9

    :goto_d3
    :try_start_d3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    const/16 v19, 0x41

    move/from16 v0, v19

    iput v0, v10, Landroid/os/Message;->what:I

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/android/server/MsapWifiService;->mBSSID:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/server/MsapWifiService;->dialog_token:I

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MsapWifiService;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;
    :try_end_11f
    .catchall {:try_start_d3 .. :try_end_11f} :catchall_1eb
    .catch Ljava/lang/NullPointerException; {:try_start_d3 .. :try_end_11f} :catch_22d

    move-result-object v15

    if-nez v15, :cond_1ae

    :try_start_122
    monitor-exit p0
    :try_end_123
    .catchall {:try_start_122 .. :try_end_123} :catchall_1eb

    :goto_123
    :try_start_123
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/MsapWifiService;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v19

    sput-object v19, Lcom/android/server/MsapWifiService;->byteArrayPayload:[B

    const-string v19, "SMsapWifiService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Process gas response:\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    new-instance v21, Ljava/lang/String;

    sget-object v22, Lcom/android/server/MsapWifiService;->byteArrayPayload:[B

    const-string v23, "UTF-8"

    invoke-direct/range {v21 .. v23}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v19, Lcom/android/server/MsapWifiService;->byteArrayPayload:[B

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0
    :try_end_153
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_123 .. :try_end_153} :catch_234
    .catch Ljava/lang/NullPointerException; {:try_start_123 .. :try_end_153} :catch_23a

    move/from16 v0, v19

    if-eq v0, v12, :cond_158

    const/4 v5, 0x0

    :cond_158
    :goto_158
    new-instance v7, Landroid/content/Intent;

    const-string v19, "android.net.wifi.msap.GAS_RSP"

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v19, "responseHash"

    const/16 v20, 0x0

    aget-object v20, v18, v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v19, "responseId"

    const/16 v20, 0x1

    aget-object v20, v18, v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v19, "payloadLen"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v19, "erroInfo"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MsapWifiService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v19, "SMsapWifiService"

    const-string v20, "Received gas response event and sending broadcast of event!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_19d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_31

    :cond_1a1
    if-nez v12, :cond_aa

    const/4 v5, 0x2

    goto/16 :goto_aa

    :catch_1a6
    move-exception v4

    const/4 v12, -0x1

    const/4 v5, 0x0

    goto/16 :goto_aa

    :cond_1ab
    move v8, v13

    goto/16 :goto_d3

    :cond_1ae
    :try_start_1ae
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_204

    if-gt v3, v12, :cond_204

    div-int/lit8 v19, v14, 0x2

    move/from16 v0, v19

    if-ne v8, v0, :cond_204

    add-int/2addr v3, v8

    if-nez v2, :cond_1ee

    move-object v2, v15

    :goto_1c0
    if-ne v12, v3, :cond_231

    const-string v19, "SMsapWifiService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "The section\'s actual_len: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " and received payloadLength"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e8
    .catchall {:try_start_1ae .. :try_end_1e8} :catchall_1eb
    .catch Ljava/lang/NullPointerException; {:try_start_1ae .. :try_end_1e8} :catch_22d

    :try_start_1e8
    monitor-exit p0

    goto/16 :goto_123

    :catchall_1eb
    move-exception v19

    monitor-exit p0
    :try_end_1ed
    .catchall {:try_start_1e8 .. :try_end_1ed} :catchall_1eb

    throw v19

    :cond_1ee
    :try_start_1ee
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1c0

    :cond_204
    const-string v19, "SMsapWifiService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "The section\'s actual_len: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " and received payloadLength"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22a
    .catchall {:try_start_1ee .. :try_end_22a} :catchall_1eb
    .catch Ljava/lang/NullPointerException; {:try_start_1ee .. :try_end_22a} :catch_22d

    :try_start_22a
    monitor-exit p0

    goto/16 :goto_123

    :catch_22d
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_231
    monitor-exit p0
    :try_end_232
    .catchall {:try_start_22a .. :try_end_232} :catchall_1eb

    goto/16 :goto_ce

    :catch_234
    move-exception v4

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_158

    :catch_23a
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_158

    :cond_240
    const/16 v19, 0x0

    sput-object v19, Lcom/android/server/MsapWifiService;->byteArrayPayload:[B

    goto/16 :goto_158
.end method

.method public notifyVenueServerAdded(Ljava/lang/String;)V
    .registers 20

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    const/4 v9, 0x1

    const/4 v2, 0x5

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "venue-hash"

    aput-object v3, v12, v2

    const/4 v2, 0x1

    const-string v3, "server-id"

    aput-object v3, v12, v2

    const/4 v2, 0x2

    const-string v3, "bssid"

    aput-object v3, v12, v2

    const/4 v2, 0x3

    const-string v3, "ssid"

    aput-object v3, v12, v2

    const/4 v2, 0x4

    const-string v3, "venue-name"

    aput-object v3, v12, v2

    const-string v2, "SMsapWifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Venue Added dump: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/server/MsapWifiService;->getValue(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    array-length v13, v12

    const/4 v10, 0x0

    :goto_44
    add-int/lit8 v2, v13, -0x1

    if-ge v10, v2, :cond_67

    aget-object v2, v14, v10

    if-nez v2, :cond_110

    const/4 v9, 0x0

    const-string v2, "SMsapWifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In Venue Server Added event getting null value for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v12, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MsapWifiService;->mVenueAddedCache:Ljava/util/LinkedHashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_6e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v14, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v14, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MsapWifiService;->mVenueAddedCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v15}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MsapWifiService;->mVenueAddedCache:Ljava/util/LinkedHashMap;

    move-object/from16 v17, v0

    new-instance v2, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;

    const/4 v3, 0x0

    aget-object v4, v14, v3

    const/4 v3, 0x1

    aget-object v5, v14, v3

    const/4 v3, 0x2

    aget-object v6, v14, v3

    const/4 v3, 0x3

    aget-object v7, v14, v3

    const/4 v3, 0x4

    aget-object v8, v14, v3

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;-><init>(Lcom/android/server/MsapWifiService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SMsapWifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added venue server to cache for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v14, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cb
    monitor-exit v16
    :try_end_cc
    .catchall {:try_start_6e .. :try_end_cc} :catchall_114

    new-instance v11, Landroid/content/Intent;

    const-string v2, "android.net.wifi.msap.VENUE_SERVER_ADDED"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "addVenueHash"

    const/4 v3, 0x0

    aget-object v3, v14, v3

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "addServerId"

    const/4 v3, 0x1

    aget-object v3, v14, v3

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "addBssid"

    const/4 v3, 0x2

    aget-object v3, v14, v3

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "addSsid"

    const/4 v3, 0x3

    aget-object v3, v14, v3

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "addVenueName"

    const/4 v3, 0x4

    aget-object v3, v14, v3

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "erroInfo"

    invoke-virtual {v11, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MsapWifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "SMsapWifiService"

    const-string v3, "Received venue server added event, and sending broadcast of event!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_110
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_44

    :catchall_114
    move-exception v2

    :try_start_115
    monitor-exit v16
    :try_end_116
    .catchall {:try_start_115 .. :try_end_116} :catchall_114

    throw v2
.end method

.method public notifyVenueServerCacheInfo()V
    .registers 9

    iget-object v5, p0, Lcom/android/server/MsapWifiService;->mVenueAddedCache:Ljava/util/LinkedHashMap;

    monitor-enter v5

    :try_start_3
    iget-object v4, p0, Lcom/android/server/MsapWifiService;->mVenueAddedCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.net.wifi.msap.VENUE_SERVER_ADDED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "addVenueHash"

    iget-object v6, v3, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueHash:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "addServerId"

    iget-object v6, v3, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "addBssid"

    iget-object v6, v3, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mBssId:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "addSsid"

    iget-object v6, v3, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mSsId:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "addVenueName"

    iget-object v6, v3, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueName:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "erroInfo"

    iget v6, v3, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mParseError:I

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/MsapWifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v4, "SMsapWifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending venue server added event from cache for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueHash:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :catchall_70
    move-exception v4

    monitor-exit v5
    :try_end_72
    .catchall {:try_start_3 .. :try_end_72} :catchall_70

    throw v4

    :cond_73
    :try_start_73
    monitor-exit v5
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_70

    return-void
.end method

.method public notifyVenueServerDeleted(Ljava/lang/String;)V
    .registers 14

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-nez p1, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    const/4 v8, 0x2

    new-array v3, v8, [Ljava/lang/String;

    const-string v8, "venue-hash"

    aput-object v8, v3, v9

    const-string v8, "server-id"

    aput-object v8, v3, v10

    invoke-direct {p0, p1, v3}, Lcom/android/server/MsapWifiService;->getValue(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v4, v3

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v4, :cond_38

    aget-object v8, v5, v1

    if-nez v8, :cond_7e

    const/4 v0, 0x0

    const-string v8, "SMsapWifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In Venue Server Deleted event getting null value for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v3, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    iget-object v9, p0, Lcom/android/server/MsapWifiService;->mVenueAddedCache:Ljava/util/LinkedHashMap;

    monitor-enter v9

    :try_start_3b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    aget-object v10, v5, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v10, 0x1

    aget-object v10, v5, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/MsapWifiService;->mVenueAddedCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_81

    const-string v8, "SMsapWifiService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No venue server found to remove from cache for: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_75
    monitor-exit v9
    :try_end_76
    .catchall {:try_start_3b .. :try_end_76} :catchall_be

    const-string v8, "SMsapWifiService"

    const-string v9, "Received venue server deleted event, and sending broadcast of event!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7e
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_81
    :try_start_81
    const-string v8, "SMsapWifiService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Removed venue server from cache for: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.net.wifi.msap.VENUE_SERVER_DELETED"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "deleteVenueHash"

    const/4 v10, 0x0

    aget-object v10, v5, v10

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "deleteServerId"

    const/4 v10, 0x1

    aget-object v10, v5, v10

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "erroInfo"

    invoke-virtual {v2, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/MsapWifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_75

    :catchall_be
    move-exception v8

    monitor-exit v9
    :try_end_c0
    .catchall {:try_start_81 .. :try_end_c0} :catchall_be

    throw v8
.end method

.method public resetMsap()I
    .registers 6

    const-string v2, "SMsapWifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset msap Un-receiverRegistered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/MsapWifiService;->receiverRegistered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/server/MsapWifiService;->receiverRegistered:Z

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/android/server/MsapWifiService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/MsapWifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/MsapWifiService;->receiverRegistered:Z

    :cond_28
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x42

    iput v2, v1, Landroid/os/Message;->what:I

    sget v2, Lcom/android/server/MsapWifiService;->mcurr_dialog_token:I

    if-gez v2, :cond_43

    sget-object v2, Lcom/android/server/MsapWifiService;->mCurr_BSSID:Ljava/lang/String;

    if-nez v2, :cond_43

    const-string v0, "OFF"

    :goto_3a
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/MsapWifiService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    return v2

    :cond_43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OFF "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/MsapWifiService;->mCurr_BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/MsapWifiService;->mcurr_dialog_token:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a
.end method

.method public sendVenueAddedCacheInfo()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/MsapWifiService;->notifyVenueServerCacheInfo()V

    return-void
.end method

.method public startWifiManager()V
    .registers 7

    iget-object v3, p0, Lcom/android/server/MsapWifiService;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/server/MsapWifiService;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.net.wifi.MSAP_VENUE_SERVER_ADDED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.net.wifi.MSAP_VENUE_SERVER_DELETED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.net.wifi.MSAP_GAS_RSP_AVAILABLE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.net.wifi.MSAP_GAS_REQ_STATUS"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "SMsapWifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received startMSAPWifiManager and receiverRegistered is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/MsapWifiService;->receiverRegistered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/server/MsapWifiService;->receiverRegistered:Z

    if-nez v3, :cond_4d

    iget-object v3, p0, Lcom/android/server/MsapWifiService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/MsapWifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/MsapWifiService;->receiverRegistered:Z

    :cond_4d
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x42

    iput v3, v2, Landroid/os/Message;->what:I

    const-string v0, "ON"

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/MsapWifiService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void
.end method
