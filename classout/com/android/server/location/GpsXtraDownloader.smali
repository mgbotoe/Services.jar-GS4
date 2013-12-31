.class public Lcom/android/server/location/GpsXtraDownloader;
.super Ljava/lang/Object;
.source "GpsXtraDownloader.java"


# static fields
.field static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "GpsXtraDownloader"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNextServerIndex:I

.field private mXtraServers:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Properties;)V
    .registers 11

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v6, "XTRA_SERVER_1"

    invoke-virtual {p2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "XTRA_SERVER_2"

    invoke-virtual {p2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "XTRA_SERVER_3"

    invoke-virtual {p2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_1c

    add-int/lit8 v0, v0, 0x1

    :cond_1c
    if-eqz v4, :cond_20

    add-int/lit8 v0, v0, 0x1

    :cond_20
    if-eqz v5, :cond_24

    add-int/lit8 v0, v0, 0x1

    :cond_24
    if-nez v0, :cond_2e

    const-string v6, "GpsXtraDownloader"

    const-string v7, "No XTRA servers were specified in the GPS configuration"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    return-void

    :cond_2e
    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz v3, :cond_5a

    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    aput-object v3, v6, v0

    :goto_3b
    if-eqz v4, :cond_44

    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    aput-object v4, v6, v1

    move v1, v0

    :cond_44
    if-eqz v5, :cond_58

    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    aput-object v5, v6, v1

    :goto_4c
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    goto :goto_2d

    :cond_58
    move v0, v1

    goto :goto_4c

    :cond_5a
    move v1, v0

    goto :goto_3b
.end method

.method static Inject_user_agent()Ljava/lang/String;
    .registers 12

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy_MM_dd"

    invoke-direct {v8, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, ""

    const-string v7, ""

    sget-object v9, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v2, "Android"

    sget-wide v10, Landroid/os/Build;->TIME:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected static doDownload(Ljava/lang/String;ZLjava/lang/String;I)[B
    .registers 19

    const/4 v3, 0x0

    :try_start_1
    const-string v11, "SPR"

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1f

    const-string v11, "BST"

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1f

    const-string v11, "VMU"

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_63

    :cond_1f
    invoke-static {}, Lcom/android/server/location/GpsXtraDownloader;->Inject_user_agent()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v3

    :goto_27
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v8, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_3e

    new-instance v7, Lorg/apache/http/HttpHost;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v7, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-interface {v8}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    invoke-static {v11, v7}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    :cond_3e
    const-string v11, "Accept"

    const-string v12, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-interface {v8, v11, v12}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "x-wap-profile"

    const-string v12, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    invoke-interface {v8, v11, v12}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_57
    .catchall {:try_start_1 .. :try_end_57} :catchall_ad
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_57} :catch_a5

    move-result v11

    const/16 v12, 0xc8

    if-eq v11, v12, :cond_6a

    const/4 v2, 0x0

    if-eqz v3, :cond_62

    :goto_5f
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_62
    :goto_62
    return-object v2

    :cond_63
    :try_start_63
    const-string v11, "Android"

    invoke-static {v11}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v3

    goto :goto_27

    :cond_6a
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_6d
    .catchall {:try_start_63 .. :try_end_6d} :catchall_ad
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6d} :catch_a5

    move-result-object v6

    const/4 v2, 0x0

    if-eqz v6, :cond_96

    :try_start_71
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_91

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v11

    long-to-int v11, v11

    new-array v2, v11, [B

    new-instance v4, Ljava/io/DataInputStream;

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8b
    .catchall {:try_start_71 .. :try_end_8b} :catchall_9e

    :try_start_8b
    invoke-virtual {v4, v2}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_99

    :try_start_8e
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_9e
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_bd

    :cond_91
    :goto_91
    if-eqz v6, :cond_96

    :try_start_93
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_ad
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_96} :catch_a5

    :cond_96
    if-eqz v3, :cond_62

    goto :goto_5f

    :catchall_99
    move-exception v11

    :try_start_9a
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_9e
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_b4

    :goto_9d
    :try_start_9d
    throw v11
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9e

    :catchall_9e
    move-exception v11

    if-eqz v6, :cond_a4

    :try_start_a1
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_a4
    throw v11
    :try_end_a5
    .catchall {:try_start_a1 .. :try_end_a5} :catchall_ad
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a5} :catch_a5

    :catch_a5
    move-exception v11

    if-eqz v3, :cond_ab

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_ab
    const/4 v2, 0x0

    goto :goto_62

    :catchall_ad
    move-exception v11

    if-eqz v3, :cond_b3

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_b3
    throw v11

    :catch_b4
    move-exception v5

    :try_start_b5
    const-string v12, "GpsXtraDownloader"

    const-string v13, "Unexpected IOException."

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9d

    :catch_bd
    move-exception v5

    const-string v11, "GpsXtraDownloader"

    const-string v12, "Unexpected IOException."

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c5
    .catchall {:try_start_b5 .. :try_end_c5} :catchall_9e

    goto :goto_91
.end method


# virtual methods
.method downloadXtraData()[B
    .registers 9

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v1

    if-eqz v0, :cond_1c

    const/4 v6, -0x1

    if-eq v1, v6, :cond_1c

    const/4 v4, 0x1

    :goto_13
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    if-nez v6, :cond_1e

    const/4 v5, 0x0

    :goto_1b
    return-object v5

    :cond_1c
    move v4, v5

    goto :goto_13

    :cond_1e
    if-nez v2, :cond_3d

    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    iget v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    aget-object v6, v6, v7

    invoke-static {v6, v4, v0, v1}, Lcom/android/server/location/GpsXtraDownloader;->doDownload(Ljava/lang/String;ZLjava/lang/String;I)[B

    move-result-object v2

    iget v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    iget v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    array-length v7, v7

    if-ne v6, v7, :cond_39

    iput v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    :cond_39
    iget v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    if-ne v6, v3, :cond_1e

    :cond_3d
    move-object v5, v2

    goto :goto_1b
.end method
