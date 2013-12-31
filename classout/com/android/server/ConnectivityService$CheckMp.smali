.class Lcom/android/server/ConnectivityService$CheckMp;
.super Landroid/os/AsyncTask;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckMp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ConnectivityService$CheckMp$CallBack;,
        Lcom/android/server/ConnectivityService$CheckMp$Params;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/server/ConnectivityService$CheckMp$Params;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHECKMP_TAG:Ljava/lang/String; = "CheckMp"

.field public static final MAX_TIMEOUT_MS:I = 0xea60

.field private static final SOCKET_TIMEOUT_MS:I = 0x1388


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCs:Lcom/android/server/ConnectivityService;

.field private mParams:Lcom/android/server/ConnectivityService$CheckMp$Params;

.field private mTm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ConnectivityService;)V
    .registers 5

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/android/server/ConnectivityService$CheckMp;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    iget-object v0, p0, Lcom/android/server/ConnectivityService$CheckMp;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/ConnectivityService$CheckMp;->mTm:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private inetAddressesToString([Ljava/net/InetAddress;)Ljava/lang/String;
    .registers 9

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x1

    move-object v1, p1

    array-length v4, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v4, :cond_1c

    aget-object v0, v1, v3

    if-eqz v2, :cond_16

    const/4 v2, 0x0

    :goto_10
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_16
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_10

    :cond_1c
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private declared-synchronized isMobileOk(Lcom/android/server/ConnectivityService$CheckMp$Params;)Ljava/lang/Integer;
    .registers 28

    monitor-enter p0

    const/16 v22, 0x0

    :try_start_3
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    #getter for: Lcom/android/server/ConnectivityService$CheckMp$Params;->mUrl:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/ConnectivityService$CheckMp$Params;->access$5300(Lcom/android/server/ConnectivityService$CheckMp$Params;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    new-instance v15, Ljava/util/Random;

    invoke-direct {v15}, Ljava/util/Random;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService$CheckMp;->mParams:Lcom/android/server/ConnectivityService$CheckMp$Params;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_3f2

    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/ConnectivityService;->isNetworkSupported(I)Z

    move-result v22

    if-nez v22, :cond_7a

    const-string v22, "isMobileOk: not mobile capable"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_36
    .catchall {:try_start_1a .. :try_end_36} :catchall_3b1

    move-result-object v17

    :try_start_37
    const-string v22, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #calls: Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v22 .. v23}, Lcom/android/server/ConnectivityService;->access$5400(Lcom/android/server/ConnectivityService;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "enableHIPRI"

    invoke-virtual/range {v22 .. v24}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "isMobileOk: X result="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_37 .. :try_end_76} :catchall_3f2

    move-object/from16 v18, v17

    :goto_78
    monitor-exit p0

    return-object v18

    :cond_7a
    :try_start_7a
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "isMobileOk: start hipri url="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    #getter for: Lcom/android/server/ConnectivityService$CheckMp$Params;->mUrl:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/ConnectivityService$CheckMp$Params;->access$5300(Lcom/android/server/ConnectivityService$CheckMp$Params;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #calls: Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v22 .. v23}, Lcom/android/server/ConnectivityService;->access$5400(Lcom/android/server/ConnectivityService;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "enableHIPRI"

    new-instance v25, Landroid/os/Binder;

    invoke-direct/range {v25 .. v25}, Landroid/os/Binder;-><init>()V

    invoke-virtual/range {v22 .. v25}, Lcom/android/server/ConnectivityService;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    #getter for: Lcom/android/server/ConnectivityService$CheckMp$Params;->mTimeOutMs:J
    invoke-static/range {p1 .. p1}, Lcom/android/server/ConnectivityService$CheckMp$Params;->access$5500(Lcom/android/server/ConnectivityService$CheckMp$Params;)J

    move-result-wide v24

    add-long v6, v22, v24

    :goto_bf
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_c2
    .catchall {:try_start_7a .. :try_end_c2} :catchall_3b1

    move-result-wide v22

    cmp-long v22, v22, v6

    if-gez v22, :cond_447

    :try_start_c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v22, v0

    const/16 v23, 0x5

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v19

    sget-object v22, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_111

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "isMobileOk: not connected ni="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v23, v0

    const/16 v24, 0x5

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_10f
    .catchall {:try_start_c7 .. :try_end_10f} :catchall_3b1
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_10f} :catch_392

    move-result-object v17

    goto :goto_bf

    :cond_111
    :try_start_111
    invoke-virtual {v14}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_118
    .catchall {:try_start_111 .. :try_end_118} :catchall_3b1
    .catch Ljava/net/UnknownHostException; {:try_start_111 .. :try_end_118} :catch_2f4
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_118} :catch_392

    move-result-object v4

    :try_start_119
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "isMobileOk: addresses="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/ConnectivityService$CheckMp;->inetAddressesToString([Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v22, v0

    const/16 v23, 0x5

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/ConnectivityService;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/ConnectivityService$CheckMp;->hasIPv4Address(Landroid/net/LinkProperties;)Z

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/ConnectivityService$CheckMp;->hasIPv6Address(Landroid/net/LinkProperties;)Z

    move-result v10

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "isMobileOk: linkHasIpv4="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " linkHasIpv6="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    const/16 v22, 0x3

    array-length v0, v4

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/16 v21, 0x0

    const/4 v3, 0x0

    :goto_185
    move/from16 v0, v21

    if-ge v0, v11, :cond_3f5

    array-length v0, v4

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v3, v0, :cond_3f5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    cmp-long v22, v22, v6

    if-gez v22, :cond_3f5

    array-length v0, v4

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v22

    aget-object v8, v4, v22

    instance-of v0, v8, Ljava/net/Inet4Address;

    move/from16 v22, v0

    if-eqz v22, :cond_1ab

    if-nez v9, :cond_1b3

    :cond_1ab
    instance-of v0, v8, Ljava/net/Inet6Address;

    move/from16 v22, v0

    if-eqz v22, :cond_363

    if-eqz v10, :cond_363

    :cond_1b3
    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v22, v0

    const/16 v23, 0x5

    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Lcom/android/server/ConnectivityService;->requestRouteToHostAddress(I[B)Z

    move-result v22

    if-eqz v22, :cond_347

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "isMobileOk: wait to establish route to hostAddr="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    const/16 v22, 0x3

    invoke-static/range {v22 .. v22}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V

    new-instance v13, Ljava/net/URL;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "://"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v14}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "isMobileOk: newUrl="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_232
    .catchall {:try_start_119 .. :try_end_232} :catchall_3b1
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_232} :catch_392

    const/16 v20, 0x0

    :try_start_234
    sget-object v22, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v22, 0x1388

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v22, 0x1388

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    const-string v22, "Connection"

    const-string v23, "close"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    const/16 v22, 0xcc

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_367

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    :goto_28e
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "isMobileOk: connected responseCode="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2af
    .catchall {:try_start_234 .. :try_end_2af} :catchall_3b1
    .catch Ljava/lang/Exception; {:try_start_234 .. :try_end_2af} :catch_36f

    const/16 v20, 0x0

    :try_start_2b1
    const-string v22, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #calls: Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v22 .. v23}, Lcom/android/server/ConnectivityService;->access$5400(Lcom/android/server/ConnectivityService;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "enableHIPRI"

    invoke-virtual/range {v22 .. v24}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "isMobileOk: X result="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_2f0
    .catchall {:try_start_2b1 .. :try_end_2f0} :catchall_3f2

    move-object/from16 v18, v17

    goto/16 :goto_78

    :catch_2f4
    move-exception v5

    :try_start_2f5
    const-string v22, "isMobileOk: UnknownHostException"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    const/16 v22, 0x3

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_303
    .catchall {:try_start_2f5 .. :try_end_303} :catchall_3b1
    .catch Ljava/lang/Exception; {:try_start_2f5 .. :try_end_303} :catch_392

    move-result-object v17

    :try_start_304
    const-string v22, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #calls: Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v22 .. v23}, Lcom/android/server/ConnectivityService;->access$5400(Lcom/android/server/ConnectivityService;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "enableHIPRI"

    invoke-virtual/range {v22 .. v24}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "isMobileOk: X result="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_343
    .catchall {:try_start_304 .. :try_end_343} :catchall_3f2

    move-object/from16 v18, v17

    goto/16 :goto_78

    :cond_347
    :try_start_347
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "isMobileOk: could not establish route to hostAddr="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_363
    .catchall {:try_start_347 .. :try_end_363} :catchall_3b1
    .catch Ljava/lang/Exception; {:try_start_347 .. :try_end_363} :catch_392

    :cond_363
    :goto_363
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_185

    :cond_367
    const/16 v22, 0x2

    :try_start_369
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_36c
    .catchall {:try_start_369 .. :try_end_36c} :catchall_3b1
    .catch Ljava/lang/Exception; {:try_start_369 .. :try_end_36c} :catch_36f

    move-result-object v17

    goto/16 :goto_28e

    :catch_36f
    move-exception v5

    :try_start_370
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "isMobileOk: HttpURLConnection Exception e="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    if-eqz v20, :cond_363

    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_391
    .catchall {:try_start_370 .. :try_end_391} :catchall_3b1
    .catch Ljava/lang/Exception; {:try_start_370 .. :try_end_391} :catch_392

    goto :goto_363

    :catch_392
    move-exception v5

    :try_start_393
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "isMobileOk: Exception e="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_3af
    .catchall {:try_start_393 .. :try_end_3af} :catchall_3b1

    goto/16 :goto_bf

    :catchall_3b1
    move-exception v22

    :try_start_3b2
    const-string v23, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #calls: Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v23 .. v24}, Lcom/android/server/ConnectivityService;->access$5400(Lcom/android/server/ConnectivityService;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "enableHIPRI"

    invoke-virtual/range {v23 .. v25}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "isMobileOk: X result="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    throw v22
    :try_end_3f2
    .catchall {:try_start_3b2 .. :try_end_3f2} :catchall_3f2

    :catchall_3f2
    move-exception v22

    monitor-exit p0

    throw v22

    :cond_3f5
    const/16 v22, 0x4

    :try_start_3f7
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const-string v22, "isMobileOk: loops|timed out"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_404
    .catchall {:try_start_3f7 .. :try_end_404} :catchall_3b1
    .catch Ljava/lang/Exception; {:try_start_3f7 .. :try_end_404} :catch_392

    :try_start_404
    const-string v22, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #calls: Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v22 .. v23}, Lcom/android/server/ConnectivityService;->access$5400(Lcom/android/server/ConnectivityService;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "enableHIPRI"

    invoke-virtual/range {v22 .. v24}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "isMobileOk: X result="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_443
    .catchall {:try_start_404 .. :try_end_443} :catchall_3f2

    move-object/from16 v18, v17

    goto/16 :goto_78

    :cond_447
    :try_start_447
    const-string v22, "isMobileOk: timed out"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_450
    .catchall {:try_start_447 .. :try_end_450} :catchall_3b1

    :try_start_450
    const-string v22, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #calls: Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v22 .. v23}, Lcom/android/server/ConnectivityService;->access$5400(Lcom/android/server/ConnectivityService;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "enableHIPRI"

    invoke-virtual/range {v22 .. v24}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "isMobileOk: X result="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_48f
    .catchall {:try_start_450 .. :try_end_48f} :catchall_3f2

    move-object/from16 v18, v17

    goto/16 :goto_78
.end method

.method private log(Ljava/lang/String;)V
    .registers 5

    const-string v0, "ConnectivityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CheckMp] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private printNetworkInfo()V
    .registers 10

    iget-object v7, p0, Lcom/android/server/ConnectivityService$CheckMp;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    iget-object v7, p0, Lcom/android/server/ConnectivityService$CheckMp;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasIccCard="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " simState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    invoke-virtual {v7}, Lcom/android/server/ConnectivityService;->getAllNetworkInfoEx()[Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_6f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ni.length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    move-object v0, v5

    array-length v3, v0

    const/4 v2, 0x0

    :goto_4e
    if-ge v2, v3, :cond_74

    aget-object v4, v0, v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "netInfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    :cond_6f
    const-string v7, "no network info ni=null"

    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    :cond_74
    return-void
.end method

.method private static sleep(I)V
    .registers 4

    mul-int/lit16 v1, p0, 0x3e8

    int-to-long v1, v1

    :try_start_3
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_6} :catch_7

    :goto_6
    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/server/ConnectivityService$CheckMp$Params;)Ljava/lang/Integer;
    .registers 3

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService$CheckMp;->isMobileOk(Lcom/android/server/ConnectivityService$CheckMp$Params;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Lcom/android/server/ConnectivityService$CheckMp$Params;

    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$CheckMp;->doInBackground([Lcom/android/server/ConnectivityService$CheckMp$Params;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultUrl()Ljava/lang/String;
    .registers 4

    iget-object v1, p0, Lcom/android/server/ConnectivityService$CheckMp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "captive_portal_server"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, "clients3.google.com"

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/generate_204"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hasIPv4Address(Landroid/net/LinkProperties;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v0

    return v0
.end method

.method public hasIPv6Address(Landroid/net/LinkProperties;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostExecute: result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ConnectivityService$CheckMp;->mParams:Lcom/android/server/ConnectivityService$CheckMp$Params;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/ConnectivityService$CheckMp;->mParams:Lcom/android/server/ConnectivityService$CheckMp$Params;

    #getter for: Lcom/android/server/ConnectivityService$CheckMp$Params;->mCb:Lcom/android/server/ConnectivityService$CheckMp$CallBack;
    invoke-static {v0}, Lcom/android/server/ConnectivityService$CheckMp$Params;->access$5600(Lcom/android/server/ConnectivityService$CheckMp$Params;)Lcom/android/server/ConnectivityService$CheckMp$CallBack;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/ConnectivityService$CheckMp;->mParams:Lcom/android/server/ConnectivityService$CheckMp$Params;

    #getter for: Lcom/android/server/ConnectivityService$CheckMp$Params;->mCb:Lcom/android/server/ConnectivityService$CheckMp$CallBack;
    invoke-static {v0}, Lcom/android/server/ConnectivityService$CheckMp$Params;->access$5600(Lcom/android/server/ConnectivityService$CheckMp$Params;)Lcom/android/server/ConnectivityService$CheckMp$CallBack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$CheckMp$CallBack;->onComplete(Ljava/lang/Integer;)V

    :cond_2b
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$CheckMp;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
