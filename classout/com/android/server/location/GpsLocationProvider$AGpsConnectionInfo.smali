.class Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AGpsConnectionInfo"
.end annotation


# static fields
.field private static final BEARER_INVALID:I = -0x1

.field private static final BEARER_IPV4:I = 0x0

.field private static final BEARER_IPV4V6:I = 0x2

.field private static final BEARER_IPV6:I = 0x1

.field private static final CONNECTION_TYPE_ANY:I = 0x0

.field private static final CONNECTION_TYPE_C2K:I = 0x2

.field private static final CONNECTION_TYPE_SUPL:I = 0x1

.field private static final CONNECTION_TYPE_SUPL2:I = 0x3

.field private static final CONNECTION_TYPE_SUPL2_A_GLONASS:I = 0x6

.field private static final CONNECTION_TYPE_WIFI:I = 0x5

.field private static final CONNECTION_TYPE_WWAN_ANY:I = 0x4

.field private static final STATE_CLOSED:I = 0x0

.field private static final STATE_KEEP_OPEN:I = 0x3

.field private static final STATE_OPEN:I = 0x2

.field private static final STATE_OPENING:I = 0x1


# instance fields
.field private mAPN:Ljava/lang/String;

.field private final mAgpsType:I

.field private mBearerType:I

.field private final mCMConnType:I

.field private mIPvVerType:I

.field private mIpAddr:Ljava/net/InetAddress;

.field private final mPHConnFeatureStr:Ljava/lang/String;

.field private mState:I

.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/location/GpsLocationProvider;II)V
    .registers 6

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mCMConnType:I

    iput p3, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I

    const/4 v0, 0x3

    if-ne v0, p2, :cond_1c

    const-string v0, "enableSUPL"

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mPHConnFeatureStr:Ljava/lang/String;

    :goto_11
    iput-object v1, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    iput-object v1, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIpAddr:Ljava/net/InetAddress;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I

    return-void

    :cond_1c
    const-string v0, "enableMMS"

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mPHConnFeatureStr:Ljava/lang/String;

    goto :goto_11
.end method

.method synthetic constructor <init>(Lcom/android/server/location/GpsLocationProvider;IILcom/android/server/location/GpsLocationProvider$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;-><init>(Lcom/android/server/location/GpsLocationProvider;II)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I
    .registers 2

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getIpAddr()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getCMConnType()I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getAgpsType()I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getApn(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Landroid/net/NetworkInfo;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getBearerType(Landroid/net/NetworkInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I
    .registers 2

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Landroid/net/NetworkInfo;[B)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->connect(Landroid/net/NetworkInfo;[B)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mPHConnFeatureStr:Ljava/lang/String;

    return-object v0
.end method

.method private connect(Landroid/net/NetworkInfo;[B)V
    .registers 10

    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v0, -0x1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mCMConnType:I

    if-nez v2, :cond_2a

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v2

    if-nez v2, :cond_2a

    iput v6, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    const/4 v0, 0x0

    :cond_19
    :goto_19
    if-nez v0, :cond_4a

    const-string v2, "GpsLocationProvider"

    const-string v3, "Phone.APN_ALREADY_ACTIVE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    if-eq v2, v6, :cond_29

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    :cond_29
    :goto_29
    return-void

    :cond_2a
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$6200(Lcom/android/server/location/GpsLocationProvider;)Landroid/net/ConnectivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mPHConnFeatureStr:Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    if-eqz p2, :cond_19

    :try_start_3a
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIpAddr:Ljava/net/InetAddress;
    :try_end_40
    .catch Ljava/net/UnknownHostException; {:try_start_3a .. :try_end_40} :catch_41

    goto :goto_19

    :catch_41
    move-exception v1

    const-string v2, "GpsLocationProvider"

    const-string v3, "bad ipaddress"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :cond_4a
    if-ne v0, v4, :cond_54

    const-string v2, "GpsLocationProvider"

    const-string v3, "Phone.APN_REQUEST_STARTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :cond_54
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startUsingNetworkFeature failed with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    goto :goto_29
.end method

.method private getAgpsType()I
    .registers 2

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I

    return v0
.end method

.method private getApn(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->getDefaultApn()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$1000(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getApn(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getApn(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    :cond_8
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    if-nez v0, :cond_e

    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    :cond_e
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    return-object v0
.end method

.method private getBearerType(Landroid/net/NetworkInfo;)I
    .registers 14

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    if-nez v0, :cond_c

    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getApn(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    :cond_c
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$500(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3c

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    const/4 v0, 0x4

    if-eq v0, v8, :cond_34

    const/4 v0, 0x5

    if-eq v0, v8, :cond_34

    const/4 v0, 0x6

    if-eq v0, v8, :cond_34

    const/4 v0, 0x7

    if-eq v0, v8, :cond_34

    const/16 v0, 0xc

    if-ne v0, v8, :cond_3c

    :cond_34
    const-string v0, "persist.telephony.cdma.protocol"

    const-string v1, "IP"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_3c
    if-nez v7, :cond_9b

    const-string v3, "current = 1"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and apn = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and carrier_enabled = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$500(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string v4, "protocol"

    aput-object v4, v2, v10

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_9b

    :try_start_8d
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_98

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_97
    .catchall {:try_start_8d .. :try_end_97} :catchall_e0

    move-result-object v7

    :cond_98
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9b
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ipProtocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " apn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " networkType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_e5

    iput v10, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I

    :goto_dd
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I

    return v0

    :catchall_e0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_e5
    const-string v0, "IPV6"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f0

    iput v11, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I

    goto :goto_dd

    :cond_f0
    const-string v0, "IPV4V6"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I

    goto :goto_dd

    :cond_fc
    iput v10, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I

    goto :goto_dd
.end method

.method private getCMConnType()I
    .registers 2

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mCMConnType:I

    return v0
.end method

.method private getIpAddr()Ljava/net/InetAddress;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIpAddr:Ljava/net/InetAddress;

    return-object v0
.end method
