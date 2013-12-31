.class Lcom/android/server/location/GpsLocationProvider$WifiState;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiState"
.end annotation


# static fields
.field private static final WIFI_STATE_CLOSED:I = 0x0

.field private static final WIFI_STATE_CLOSING:I = 0x3

.field private static final WIFI_STATE_OPEN:I = 0x2

.field private static final WIFI_STATE_OPENING:I = 0x1


# instance fields
.field private currentNetId:I

.field private currentSSID:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private originalNetId:I

.field private originalNetworkPreference:I

.field private originalSSID:Ljava/lang/String;

.field private reportFailOnClosed:Z

.field private state:I

.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I

    iput-object v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->currentSSID:Ljava/lang/String;

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->currentNetId:I

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetId:I

    iput-object v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalSSID:Ljava/lang/String;

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetworkPreference:I

    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->reportFailOnClosed:Z

    iput-object v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/location/GpsLocationProvider;->access$500(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/location/GpsLocationProvider$WifiState;)I
    .registers 2

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/location/GpsLocationProvider$WifiState;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/location/GpsLocationProvider$WifiState;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->currentSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/location/GpsLocationProvider$WifiState;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->currentSSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/location/GpsLocationProvider$WifiState;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/server/location/GpsLocationProvider$WifiState;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalSSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/server/location/GpsLocationProvider$WifiState;)Landroid/net/wifi/WifiManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/location/GpsLocationProvider$WifiState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$WifiState;->handleFailure()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/location/GpsLocationProvider$WifiState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$WifiState;->handleSuccess()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/location/GpsLocationProvider$WifiState;)I
    .registers 2

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetId:I

    return v0
.end method

.method static synthetic access$4302(Lcom/android/server/location/GpsLocationProvider$WifiState;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetId:I

    return p1
.end method

.method static synthetic access$4400(Lcom/android/server/location/GpsLocationProvider$WifiState;)I
    .registers 2

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetworkPreference:I

    return v0
.end method

.method static synthetic access$4402(Lcom/android/server/location/GpsLocationProvider$WifiState;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetworkPreference:I

    return p1
.end method

.method static synthetic access$4500(Lcom/android/server/location/GpsLocationProvider$WifiState;)I
    .registers 2

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->currentNetId:I

    return v0
.end method

.method static synthetic access$4502(Lcom/android/server/location/GpsLocationProvider$WifiState;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->currentNetId:I

    return p1
.end method

.method static synthetic access$4800(Lcom/android/server/location/GpsLocationProvider$WifiState;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$WifiState;->restoreOriginalWifiSettings(Z)V

    return-void
.end method

.method private handleFailure()V
    .registers 4

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I

    if-ne v0, v2, :cond_10

    const-string v0, "GpsLocationProvider"

    const-string v1, "handleFailure for WIFI_STATE_OPENING"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/server/location/GpsLocationProvider$WifiState;->restoreOriginalWifiSettings(Z)V

    :goto_f
    return-void

    :cond_10
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_26

    const-string v0, "GpsLocationProvider"

    const-string v1, "handleFailure for WIFI_STATE_CLOSING"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v1, 0x5

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed(I)V
    invoke-static {v0, v1}, Lcom/android/server/location/GpsLocationProvider;->access$6300(Lcom/android/server/location/GpsLocationProvider;I)V

    goto :goto_f

    :cond_26
    const-string v0, "GpsLocationProvider"

    const-string v1, "handleFailure invalid case"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method private handleSuccess()V
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x5

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    const-string v0, "GpsLocationProvider"

    const-string v1, "handleSuccess for WIFI_STATE_OPENING"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const-string v1, "dummy-apn"

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(ILjava/lang/String;I)V
    invoke-static {v0, v2, v1, v3}, Lcom/android/server/location/GpsLocationProvider;->access$6500(Lcom/android/server/location/GpsLocationProvider;ILjava/lang/String;I)V

    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->getAGpsConnectionInfo(I)Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    invoke-static {v0, v2}, Lcom/android/server/location/GpsLocationProvider;->access$6600(Lcom/android/server/location/GpsLocationProvider;I)Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    move-result-object v0

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0, v5}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2002(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    :goto_23
    return-void

    :cond_24
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_57

    const-string v0, "GpsLocationProvider"

    const-string v1, "handleSuccess for WIFI_STATE_CLOSING"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->reportFailOnClosed:Z

    if-eqz v0, :cond_51

    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->reportFailOnClosed:Z

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed(I)V
    invoke-static {v0, v2}, Lcom/android/server/location/GpsLocationProvider;->access$6300(Lcom/android/server/location/GpsLocationProvider;I)V

    :goto_3b
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->getAGpsConnectionInfo(I)Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    invoke-static {v0, v2}, Lcom/android/server/location/GpsLocationProvider;->access$6600(Lcom/android/server/location/GpsLocationProvider;I)Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    move-result-object v0

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0, v3}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2002(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    iput v4, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->currentNetId:I

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->currentSSID:Ljava/lang/String;

    iput v4, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetId:I

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalSSID:Ljava/lang/String;

    iput v4, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetworkPreference:I

    goto :goto_23

    :cond_51
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_closed(I)V
    invoke-static {v0, v2}, Lcom/android/server/location/GpsLocationProvider;->access$6400(Lcom/android/server/location/GpsLocationProvider;I)V

    goto :goto_3b

    :cond_57
    const-string v0, "GpsLocationProvider"

    const-string v1, "handleSuccess invalid case"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method private restoreOriginalNetworkPreference()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$6200(Lcom/android/server/location/GpsLocationProvider;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetworkPreference:I

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setNetworkPreference(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetworkPreference:I

    return-void
.end method

.method private restoreOriginalWifiSettings(Z)V
    .registers 7

    const/4 v4, 0x5

    const-string v1, "GpsLocationProvider"

    const-string v2, "restoreOriginalWifiSettings"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "originalNetId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentNetId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->currentNetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportFailOnClosed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->reportFailOnClosed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->reportFailOnClosed:Z

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$6200(Lcom/android/server/location/GpsLocationProvider;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getNetworkPreference()I

    move-result v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetworkPreference:I

    if-ne v1, v2, :cond_c2

    const-string v1, "GpsLocationProvider"

    const-string v2, "current network preference same as original. do nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6d
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->currentNetId:I

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetId:I

    if-eq v1, v2, :cond_78

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_ec

    :cond_78
    const-string v1, "GpsLocationProvider"

    const-string v2, "currentNetId == originalNetId or original was not connected. don\'t touch netId."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I

    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->reportFailOnClosed:Z

    if-eqz v1, :cond_e6

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->currentNetId:I

    if-ltz v1, :cond_b5

    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removing currentNetId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->currentNetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->currentNetId:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_cd

    const-string v1, "GpsLocationProvider"

    const-string v2, "successfully removed current AP"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b5
    :goto_b5
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed(I)V
    invoke-static {v1, v4}, Lcom/android/server/location/GpsLocationProvider;->access$6300(Lcom/android/server/location/GpsLocationProvider;I)V

    :goto_ba
    const-string v1, "GpsLocationProvider"

    const-string v2, "restoreOriginalWifiSettings end"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c2
    const-string v1, "GpsLocationProvider"

    const-string v2, "restoring original Network Preference..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$WifiState;->restoreOriginalNetworkPreference()V

    goto :goto_6d

    :cond_cd
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: removeNetwork returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5

    :cond_e6
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_closed(I)V
    invoke-static {v1, v4}, Lcom/android/server/location/GpsLocationProvider;->access$6400(Lcom/android/server/location/GpsLocationProvider;I)V

    goto :goto_ba

    :cond_ec
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->currentNetId:I

    if-ltz v1, :cond_104

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->currentNetId:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_12f

    const-string v1, "GpsLocationProvider"

    const-string v2, "successfully removed current AP"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_104
    :goto_104
    const-string v1, "GpsLocationProvider"

    const-string v2, "restoring original network..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$WifiState;->originalNetId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v0

    if-eqz v0, :cond_148

    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableNetwork returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ba

    :cond_12f
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: removeNetwork returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_104

    :cond_148
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: enableNetwork returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ba
.end method
