.class public Lcom/android/server/enterprise/wifi/WifiPolicy;
.super Landroid/app/enterprise/IWifiPolicy$Stub;
.source "WifiPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;
    }
.end annotation


# static fields
.field private static final ANONYMOUS_IDENTITY:Ljava/lang/String; = "anonymous_identity"

.field private static final CA_CERT:Ljava/lang/String; = "ca_cert"

.field private static final CLIENT_CERT:Ljava/lang/String; = "client_cert"

.field private static final EAP:Ljava/lang/String; = "eap"

.field private static final ENGINE:Ljava/lang/String; = "engine"

.field private static final ENGINE_ID:Ljava/lang/String; = "engine_id"

.field private static final IDENTITY:Ljava/lang/String; = "identity"

.field private static final IP_REGEX:Ljava/lang/String; = "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

.field private static final KEY_ID:Ljava/lang/String; = "key_id"

.field private static final PASSWORD:Ljava/lang/String; = "password"

.field private static final PHASE2:Ljava/lang/String; = "phase2"

.field private static final PRIVATE_KEY:Ljava/lang/String; = "private_key"

.field private static final TAG:Ljava/lang/String; = "WifiPolicyService"

.field private static isBootCompleted:Z

.field private static final mSecurityLevel:[Ljava/lang/String;

.field private static final sAcceptableSecurityLevels:[Ljava/lang/String;


# instance fields
.field private mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNetworkSsid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/server/enterprise/wifi/WifiPolicy;->isBootCompleted:Z

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Open"

    aput-object v1, v0, v3

    const-string v1, "WEP"

    aput-object v1, v0, v4

    const-string v1, "WPA/WPA2 PSK"

    aput-object v1, v0, v5

    const-string v1, "802.1x EAP-LEAP"

    aput-object v1, v0, v6

    const-string v1, "802.1x EAP-FAST"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "802.1x EAP-PEAP"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "802.1x EAP-TTLS"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "802.1x EAP-TLS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "NONE"

    aput-object v1, v0, v3

    const-string v1, "WEP"

    aput-object v1, v0, v4

    const-string v1, "PSK"

    aput-object v1, v0, v5

    const-string v1, "EAP-LEAP"

    aput-object v1, v0, v6

    const-string v1, "EAP-FAST"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "EAP-PEAP"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EAP-TTLS"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EAP-TLS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->toast:Landroid/widget/Toast;

    iput-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    iput-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    new-instance v1, Lcom/android/server/enterprise/wifi/WifiPolicy$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$2;-><init>(Lcom/android/server/enterprise/wifi/WifiPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iput-object p2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "edm.intent.action.lock"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/wifi/WifiPolicy;Landroid/net/wifi/WifiConfiguration;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->edmAddOrUpdateTask(Landroid/net/wifi/WifiConfiguration;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/wifi/WifiPolicy;)Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/wifi/WifiPolicy;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateWpsBlockedNetworks()Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->isBootCompleted:Z

    return p0
.end method

.method private addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v5

    if-eqz v5, :cond_39

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v5, v6, :cond_2a

    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    if-ne v5, v6, :cond_1a

    move v1, v4

    :cond_1a
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    :goto_21
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    :goto_26
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_2a
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v0, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    if-ne v0, v6, :cond_38

    move v1, v4

    :cond_38
    goto :goto_21

    :cond_39
    const/4 v1, 0x1

    goto :goto_26
.end method

.method private addToBlocked(ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->saveBlockedList(ILjava/util/Set;)V

    :cond_10
    return-void
.end method

.method private alignConfiguredNetworks()V
    .registers 7

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadWifiManager()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3b

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiNetworkSsidBlacklisted(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->disableNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_19

    :cond_35
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enableNetwork(Ljava/lang/String;)Z

    goto :goto_19

    :cond_3b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private asyncEnableNetwork(IZ)V
    .registers 5

    sget-boolean v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->isBootCompleted:Z

    if-eqz v1, :cond_1a

    new-instance v0, Landroid/content/Intent;

    const-string v1, "edm.intent.action.enable"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "netId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "enableOthers"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1a
    return-void
.end method

.method private computeprefixLength(Ljava/net/InetAddress;)I
    .registers 9

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v5, :cond_1d

    aget-byte v1, v0, v4

    const/4 v3, 0x0

    :goto_c
    const/16 v6, 0x8

    if-ge v3, v6, :cond_1a

    const/4 v6, 0x1

    shl-int/2addr v6, v3

    and-int/2addr v6, v1

    if-eqz v6, :cond_17

    add-int/lit8 v2, v2, 0x1

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_1d
    return v2
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/16 v2, 0x22

    if-nez p0, :cond_6

    const/4 p0, 0x0

    :cond_5
    :goto_5
    return-object p0

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1c

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1c

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_5

    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5
.end method

.method private disableNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_19

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    :cond_c
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    :cond_19
    return v0
.end method

.method private disableNetwork(Ljava/lang/String;)Z
    .registers 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkBySSID(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->disableNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    :goto_14
    return v3

    :cond_15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v3, 0x1

    goto :goto_14
.end method

.method private edmAddOrUpdateTask(Landroid/net/wifi/WifiConfiguration;I)V
    .registers 10

    const/4 v6, 0x0

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, p2, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkLinkSecurity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, p2, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    const-string v4, "WEP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v6

    if-eqz v4, :cond_36

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v6

    aput-object v5, v4, v2

    if-eqz v2, :cond_36

    iput v2, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v6

    aput-object v5, v4, v2

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v4, v6

    :cond_36
    :goto_36
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v5, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-eq v4, v5, :cond_49

    new-instance v4, Landroid/net/LinkProperties;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v4, v5}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    :cond_49
    invoke-direct {p0, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, p2, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkLinkSecurity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9e

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, p2, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkLinkSecurity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Open"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9e

    const/4 v1, 0x0

    :goto_67
    sget-object v4, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_9e

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-eqz v4, :cond_78

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v1

    :cond_78
    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    :cond_7b
    const-string v4, "WPA/WPA2 PSK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8c

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v4, :cond_36

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_36

    :cond_8c
    const-string v4, "802.1x EAP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_36

    new-instance v4, Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v4, v5}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    goto :goto_36

    :cond_9e
    return-void
.end method

.method private enableNetwork(Ljava/lang/String;)Z
    .registers 7

    const/4 v4, 0x0

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isNetworkBlocked(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_19

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkIdBySSID(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->asyncEnableNetwork(IZ)V

    :cond_19
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0
.end method

.method private enforceSystemUser()V
    .registers 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_12

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    return-void
.end method

.method private enforceWifiPermission()I
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_WIFI"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceWifiPermission(Ljava/lang/String;)I
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_d

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "WIFI_CONF"

    const-string v2, "networkSSID"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_c
.end method

.method private getAdminUid()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ADMIN_INFO"

    const-string v4, "adminUid"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_37

    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller is not an active admin, adminUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callingUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_37
    return v1
.end method

.method private getAllBlockedList()Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "WIFI"

    const-string v7, "blockedSSIDList"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_13

    :cond_2d
    return-object v3
.end method

.method private getAllEnterpriseLastSSIDs()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "networkLastSSID"

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_22

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    array-length v3, v0

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v3, :cond_22

    aget-object v6, v0, v1

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_22
    return-object v5
.end method

.method private getAllEnterpriseNetworks()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "adminUid"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "networkSSID"

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WIFI_CONF"

    invoke-virtual {v4, v5, v6, v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_1c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_48

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "adminUid"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v6, "networkSSID"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v5, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_48
    return-object v0
.end method

.method private getAllEnterpriseSSIDs()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "WIFI_CONF"

    const-string v2, "networkSSID"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getBlockedList(I)Ljava/util/Set;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "WIFI"

    const-string v9, "blockedSSIDList"

    invoke-virtual {v7, p1, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    if-eqz v6, :cond_24

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    array-length v4, v0

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v4, :cond_24

    aget-object v5, v0, v2

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_24
    return-object v3
.end method

.method private getConfigByNetworkId(I)Landroid/net/wifi/WifiConfiguration;
    .registers 10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v7, :cond_b

    move-object v4, v3

    :goto_a
    return-object v4

    :cond_b
    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v7, p1, :cond_17

    move-object v3, v0

    :cond_28
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v4, v3

    goto :goto_a
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEnterpriseFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_2b

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    :goto_d
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v6, :cond_ab

    const-string v6, "eap"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_36

    sget-object v5, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    aget-object v3, v5, v2

    :cond_2a
    :goto_2a
    return-object v3

    :cond_2b
    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "WIFI_CONF"

    const-string v8, "networkSSID"

    invoke-virtual {v6, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_d

    :cond_36
    move-object v3, v5

    goto :goto_2a

    :cond_38
    const-string v6, "phase2"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    const-string v3, "NULL"

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v4

    if-ltz v4, :cond_4e

    sget-object v6, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    aget-object v3, v6, v4

    :cond_4e
    const-string v6, "NULL"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    move-object v3, v5

    goto :goto_2a

    :cond_58
    const-string v6, "identity"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_67

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v3

    goto :goto_2a

    :cond_67
    const-string v6, "anonymous_identity"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_76

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v3

    goto :goto_2a

    :cond_76
    const-string v6, "password"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v3

    goto :goto_2a

    :cond_85
    const-string v6, "client_cert"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_95

    const-string v6, "key_id"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9c

    :cond_95
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v3

    goto :goto_2a

    :cond_9c
    const-string v6, "ca_cert"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ab

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v3

    goto :goto_2a

    :cond_ab
    move-object v3, v5

    goto/16 :goto_2a
.end method

.method static getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .registers 2

    invoke-static {p0}, Landroid/app/enterprise/WifiPolicy;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method private getNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    if-nez p1, :cond_b

    :cond_a
    :goto_a
    return-object v4

    :cond_b
    new-array v1, v6, [Ljava/lang/String;

    const-string v5, "adminUid"

    aput-object v5, v1, v8

    const-string v5, "networkSSID"

    aput-object v5, v1, v7

    new-array v3, v6, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "WIFI_CONF"

    new-array v7, v7, [Ljava/lang/String;

    aput-object p2, v7, v8

    invoke-virtual {v5, v6, v1, v3, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_a

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    invoke-virtual {v4, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_a
.end method

.method private getNetworkBySSID(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .registers 11

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v7, :cond_7

    move-object v4, v3

    :goto_6
    return-object v4

    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v7

    if-eqz v7, :cond_36

    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    move-object v3, v0

    :cond_36
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v4, v3

    goto :goto_6
.end method

.method private getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .registers 33

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v4, v0, [Ljava/lang/String;

    const/16 v27, 0x0

    const-string v28, "adminUid"

    aput-object v28, v4, v27

    const/16 v27, 0x1

    const-string v28, "networkSSID"

    aput-object v28, v4, v27

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v27, v0

    const-string v28, "WIFI_CONF"

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const/4 v7, 0x0

    if-eqz v8, :cond_54

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_55

    :cond_54
    :goto_54
    return-object v5

    :cond_55
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    const-string v27, "networkSSID"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_54

    const-string v27, "networkBSSID"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const-string v27, "networkKeyMgmt"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    sget-object v28, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const-string v27, "networkAllowedProtos"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    sget-object v28, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const-string v27, "networkAuthAlg"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    sget-object v28, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const-string v27, "networkAllowedPairwiseCiphers"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    sget-object v28, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const-string v27, "networkAllowedGroupProtocols"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    sget-object v28, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const-string v27, "networkPSK"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-string v29, "networkWEPKey1"

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    const-string v29, "networkWEPKey2"

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    const-string v29, "networkWEPKey3"

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    const-string v29, "networkWEPKey4"

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    const-string v27, "networkWEPKeyId"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move/from16 v0, v27

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    const-string v27, "networkEAP"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    :goto_15e
    sget-object v27, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v14, v0, :cond_17e

    sget-object v27, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    aget-object v27, v27, v14

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2dc

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    :cond_17e
    const-string v27, "networkPhase2"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/4 v14, 0x0

    :goto_189
    sget-object v27, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v14, v0, :cond_1ad

    sget-object v27, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    aget-object v27, v27, v14

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2e0

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    const/16 v20, 0x1

    :cond_1ad
    if-nez v20, :cond_1b8

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    :cond_1b8
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v27, v0

    const-string v28, "networkIdentity"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v27, v0

    const-string v28, "networkAnonymousId"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v27, v0

    const-string v28, "networkPassword"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v27, v0

    const-string v28, "networkClientCertification"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v27, v0

    const-string v28, "networkCaCertificate"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    const/16 v27, 0x1

    move/from16 v0, v27

    iput-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkBySSID(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    if-eqz v6, :cond_227

    iget v0, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v27, v0

    move/from16 v0, v27

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v0, v6, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v27, v0

    move/from16 v0, v27

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    :cond_227
    const-string v27, "networkStaticIpEnabled"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2e4

    sget-object v27, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_23d
    move-object/from16 v0, v27

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    new-instance v27, Landroid/net/LinkProperties;

    invoke-direct/range {v27 .. v27}, Landroid/net/LinkProperties;-><init>()V

    move-object/from16 v0, v27

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    const-string v27, "networkStaticIp"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v27, "networkStaticGateway"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v27, "networkStaticPrimaryDns"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v27, "networkStaticSecondaryDns"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v27, "networkStaticSubnetMask"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v24, :cond_2f8

    :try_start_274
    invoke-static/range {v24 .. v24}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v15

    if-eqz v25, :cond_2e8

    invoke-static/range {v25 .. v25}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->computeprefixLength(Ljava/net/InetAddress;)I

    move-result v18

    :goto_286
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v27, v0

    new-instance v28, Landroid/net/LinkAddress;

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-direct {v0, v15, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual/range {v27 .. v28}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V
    :try_end_296
    .catch Ljava/lang/IllegalArgumentException; {:try_start_274 .. :try_end_296} :catch_2eb

    :goto_296
    if-eqz v23, :cond_31e

    :try_start_298
    invoke-static/range {v23 .. v23}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v13

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v27, v0

    new-instance v28, Landroid/net/RouteInfo;

    move-object/from16 v0, v28

    invoke-direct {v0, v13}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual/range {v27 .. v28}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V
    :try_end_2aa
    .catch Ljava/lang/IllegalArgumentException; {:try_start_298 .. :try_end_2aa} :catch_311

    :goto_2aa
    if-eqz v21, :cond_342

    :try_start_2ac
    invoke-static/range {v21 .. v21}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v9}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->addDns(Landroid/net/wifi/WifiConfiguration;Ljava/net/InetAddress;)V
    :try_end_2bb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2ac .. :try_end_2bb} :catch_334

    :goto_2bb
    if-eqz v22, :cond_54

    :try_start_2bd
    invoke-static/range {v22 .. v22}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v10}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->addDns(Landroid/net/wifi/WifiConfiguration;Ljava/net/InetAddress;)V
    :try_end_2cc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2bd .. :try_end_2cc} :catch_2ce

    goto/16 :goto_54

    :catch_2ce
    move-exception v11

    const-string v27, "WifiPolicyService"

    const-string v28, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_54

    :cond_2dc
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_15e

    :cond_2e0
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_189

    :cond_2e4
    sget-object v27, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto/16 :goto_23d

    :cond_2e8
    const/16 v18, 0x18

    goto :goto_286

    :catch_2eb
    move-exception v11

    const-string v27, "WifiPolicyService"

    const-string v28, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_296

    :cond_2f8
    const-string v27, "192.168.1.100"

    invoke-static/range {v27 .. v27}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v15

    const/16 v18, 0x18

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v27, v0

    new-instance v28, Landroid/net/LinkAddress;

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-direct {v0, v15, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual/range {v27 .. v28}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    goto :goto_296

    :catch_311
    move-exception v11

    const-string v27, "WifiPolicyService"

    const-string v28, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2aa

    :cond_31e
    const-string v27, "192.168.1.1"

    invoke-static/range {v27 .. v27}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v13

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v27, v0

    new-instance v28, Landroid/net/RouteInfo;

    move-object/from16 v0, v28

    invoke-direct {v0, v13}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual/range {v27 .. v28}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto/16 :goto_2aa

    :catch_334
    move-exception v11

    const-string v27, "WifiPolicyService"

    const-string v28, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2bb

    :cond_342
    const-string v27, "8.8.8.8"

    invoke-static/range {v27 .. v27}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v9}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->addDns(Landroid/net/wifi/WifiConfiguration;Ljava/net/InetAddress;)V

    goto/16 :goto_2bb
.end method

.method private getNetworkIdBySSID(Ljava/lang/String;)I
    .registers 10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v2, -0x1

    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v6, :cond_b

    const/4 v6, -0x1

    :goto_a
    return v6

    :cond_b
    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_31

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    :cond_31
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v2

    goto :goto_a
.end method

.method private getNetworkLinkSecurity(ILjava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_56

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    sget-object v2, Lcom/android/server/enterprise/wifi/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    aget-object v2, v2, v4

    :goto_1d
    return-object v2

    :cond_1e
    sget-object v2, Lcom/android/server/enterprise/wifi/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    aget-object v2, v2, v3

    goto :goto_1d

    :cond_23
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_30

    sget-object v2, Lcom/android/server/enterprise/wifi/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    aget-object v2, v2, v5

    goto :goto_1d

    :cond_30
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_56

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    if-nez v0, :cond_46

    sget-object v2, Lcom/android/server/enterprise/wifi/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    goto :goto_1d

    :cond_46
    if-ne v0, v5, :cond_4e

    sget-object v2, Lcom/android/server/enterprise/wifi/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    goto :goto_1d

    :cond_4e
    if-ne v0, v4, :cond_56

    sget-object v2, Lcom/android/server/enterprise/wifi/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    goto :goto_1d

    :cond_56
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method private getNetworkWEPKey(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAdminUid()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    if-ltz p2, :cond_d

    const/4 v3, 0x3

    if-le p2, v3, :cond_e

    :cond_d
    :goto_d
    return-object v2

    :cond_e
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, p2

    if-eqz v3, :cond_d

    const-string v2, "*"

    goto :goto_d
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0
.end method

.method private isBlocked(Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllBlockedList()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isHoneycombOrHigher()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_14

    :goto_13
    return v1

    :cond_14
    move v1, v2

    goto :goto_13
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .registers 4

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    :cond_8
    const/4 v1, 0x1

    :goto_9
    return v1

    :cond_a
    const-string v1, "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_9
.end method

.method private isNetworkSecure(II)Z
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    if-eq p1, v3, :cond_14

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getConfigByNetworkId(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    if-le p2, v3, :cond_12

    :cond_11
    :goto_11
    return v1

    :cond_12
    move v1, v2

    goto :goto_11

    :cond_14
    const-string v1, "WifiPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Network id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_11
.end method

.method private declared-synchronized isWifiNetworkSsidBlacklisted(Ljava/lang/String;)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    const-string v1, "*"

    invoke-static {v0, v1, p1}, Lcom/android/server/enterprise/utils/Utils;->isBlacklisted(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_11

    move-result v0

    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isWifiSsidRestrictionActive(I)Z
    .registers 6

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "WIFI"

    const-string v3, "wifiSsidRestriction"

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    :goto_a
    return v1

    :catch_b
    move-exception v0

    const-string v1, "WifiPolicyService"

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_a
.end method

.method private isWifiStateEnabled()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method private declared-synchronized loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v9, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "WIFI_SSID_BLACK_WHITE_LIST"

    const-string v11, "adminUid"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_20

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    sget-boolean v9, Lcom/android/server/enterprise/wifi/WifiPolicy;->isBootCompleted:Z

    if-eqz v9, :cond_1e

    const-string v9, "WHITE_BLACK_SSID_LIST"

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_7a

    :cond_1e
    :goto_1e
    monitor-exit p0

    return-object v5

    :cond_20
    :try_start_20
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    iget-object v9, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    const-string v10, "BLACKLIST"

    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    const-string v10, "WHITELIST"

    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8, v7}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/HashMap;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v9

    invoke-direct {v5, v9}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_51
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v9, "BLACKLIST"

    new-instance v10, Ljava/util/TreeSet;

    invoke-direct {v10}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "WHITELIST"

    new-instance v10, Ljava/util/TreeSet;

    invoke-direct {v10}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_79
    .catchall {:try_start_20 .. :try_end_79} :catchall_7a

    goto :goto_51

    :catchall_7a
    move-exception v9

    monitor-exit p0

    throw v9

    :cond_7d
    const/4 v9, 0x3

    :try_start_7e
    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v1, v9

    const/4 v9, 0x1

    const-string v10, "WIFI_SSID"

    aput-object v10, v1, v9

    const/4 v9, 0x2

    const-string v10, "WIFI_LIST_TYPE"

    aput-object v10, v1, v9

    iget-object v9, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v9, v10, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string v9, "adminUid"

    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    const-string v10, "WIFI_LIST_TYPE"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    const-string v10, "WIFI_SSID"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9b

    :cond_c9
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_cd
    :goto_cd
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiSsidRestrictionActive(I)Z

    move-result v9

    if-eqz v9, :cond_cd

    iget-object v10, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    const-string v11, "*"

    invoke-static {v10, v9, v11}, Lcom/android/server/enterprise/utils/Utils;->makeEffectiveLists(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    goto :goto_cd

    :cond_f4
    sget-boolean v9, Lcom/android/server/enterprise/wifi/WifiPolicy;->isBootCompleted:Z

    if-eqz v9, :cond_1e

    const-string v9, "WHITE_BLACK_SSID_LIST"

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V
    :try_end_fd
    .catchall {:try_start_7e .. :try_end_fd} :catchall_7a

    goto/16 :goto_1e
.end method

.method private loadWifiManager()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_10
    return-void
.end method

.method private static lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    array-length v1, p1

    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_18

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    :goto_14
    return v0

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_18
    const/4 v0, -0x1

    goto :goto_14
.end method

.method private makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;
    .registers 11

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_24

    const-string v7, " "

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    array-length v4, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v4, :cond_24

    aget-object v5, v0, v2

    invoke-static {v5, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_21

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_24
    return-object v1
.end method

.method private makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, -0x1

    const/4 v2, 0x0

    array-length v3, p2

    invoke-virtual {p1, v2, v3}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p1

    :goto_c
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    aget-object v2, p2, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    :cond_29
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_38

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private putString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/16 v3, 0x22

    const/4 v2, 0x1

    if-nez p0, :cond_7

    const/4 p0, 0x0

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_6

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_6

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_6

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method private removeFromBlocked(ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->saveBlockedList(ILjava/util/Set;)V

    return-void
.end method

.method private saveBlockedList(ILjava/util/Set;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_2c
    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "WIFI"

    const-string v5, "blockedSSIDList"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private sendCacheUpdateCommand(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.enterprise.action.ACTION_WIFI_POLICY_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_e

    const-string v1, "android.app.enterprise.extra.WIFI_TYPE_CHANGED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_e
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setEnterpriseFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_11

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    :goto_d
    if-nez p3, :cond_1c

    move v4, v5

    :cond_10
    :goto_10
    return v4

    :cond_11
    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "WIFI_CONF"

    const-string v8, "networkSSID"

    invoke-virtual {v6, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_d

    :cond_1c
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    const/4 v4, 0x0

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v6, :cond_10

    const-string v6, "phase2"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_2f
    sget-object v6, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_44

    sget-object v6, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    const/4 v3, 0x1

    :cond_44
    if-nez v3, :cond_53

    const-string v6, "None"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5e

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    :cond_53
    :goto_53
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    goto :goto_10

    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_5e
    move v4, v5

    goto :goto_10

    :cond_60
    const-string v6, "identity"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6e

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, p3}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    goto :goto_53

    :cond_6e
    const-string v6, "anonymous_identity"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, p3}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_53

    :cond_7c
    const-string v6, "password"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8a

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, p3}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto :goto_53

    :cond_8a
    const-string v6, "client_cert"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9a

    const-string v6, "key_id"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a0

    :cond_9a
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, p3}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    goto :goto_53

    :cond_a0
    const-string v6, "ca_cert"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ae

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, p3}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    goto :goto_53

    :cond_ae
    move v4, v5

    goto/16 :goto_10
.end method

.method private setNetworkAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v2

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez p1, :cond_e

    :cond_c
    const/4 v6, 0x0

    :goto_d
    return v6

    :cond_e
    const/4 v6, 0x1

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v5, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "WIFI_CONF"

    const-string v3, "networkSSID"

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    and-int/2addr v6, v0

    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_d
.end method

.method private setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z
    .registers 21

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "networkSSID"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "networkBSSID"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "networkKeyMgmt"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "networkAllowedProtos"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "networkAuthAlg"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "networkAllowedPairwiseCiphers"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "networkAllowedGroupProtocols"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "networkPSK"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "networkWEPKey1"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "networkWEPKey2"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "networkWEPKey3"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "networkWEPKey4"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "networkWEPKeyId"

    move-object/from16 v0, p2

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    if-ltz v1, :cond_d1

    const-string v1, "networkEAP"

    sget-object v2, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d1
    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v2

    aget-object v15, v1, v2

    const-string v1, "NULL"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ed

    const-string v1, ""

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_212

    :cond_ed
    const-string v1, "networkPhase2"

    const-string v2, ""

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f4
    const-string v1, "networkIdentity"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "networkAnonymousId"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "networkPassword"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "networkClientCertification"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "networkPrivateKey"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "networkCaCertificate"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "networkStaticIpEnabled"

    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v1, v3, :cond_221

    const/4 v1, 0x1

    :goto_14d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v12, 0x0

    const/16 v17, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/LinkAddress;

    invoke-virtual {v14}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v14}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->prefixLengthToNetmaskInt(I)I

    move-result v1

    invoke-static {v1}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v17

    :cond_18e
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_19a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/RouteInfo;

    invoke-virtual/range {v16 .. v16}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v1

    if-eqz v1, :cond_19a

    invoke-virtual/range {v16 .. v16}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    :cond_1b4
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    :cond_1d0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    :cond_1e0
    const-string v1, "networkStaticIp"

    invoke-virtual {v6, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "networkStaticGateway"

    invoke-virtual {v6, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "networkStaticPrimaryDns"

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "networkStaticSecondaryDns"

    invoke-virtual {v6, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "networkStaticSubnetMask"

    move-object/from16 v0, v17

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "WIFI_CONF"

    const-string v4, "networkSSID"

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move/from16 v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    return v1

    :cond_212
    const-string v1, "networkPhase2"

    const-string v2, "auth="

    const-string v3, ""

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f4

    :cond_221
    const/4 v1, 0x0

    goto/16 :goto_14d
.end method

.method private setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13

    iget-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "networkLastSSID"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_41

    if-eqz p2, :cond_3e

    move-object v2, p2

    const-string v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    array-length v4, v0

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v4, :cond_41

    aget-object v7, v0, v1

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_3e
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_41
    if-eqz p1, :cond_59

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_59
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkLastSSID(Ljava/lang/String;)Z

    move-result v8

    return v8
.end method

.method private setNetworkWEPKey(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 10

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    if-eqz p3, :cond_b

    if-ltz p2, :cond_b

    const/4 v4, 0x3

    if-le p2, v4, :cond_d

    :cond_b
    const/4 v3, 0x0

    :cond_c
    :goto_c
    return v3

    :cond_d
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    const/4 v3, 0x1

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_c

    if-eqz p3, :cond_c

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_28

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_28

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_3c

    :cond_28
    const-string v4, "[0-9A-Fa-f]*"

    invoke-virtual {p3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object p3, v4, p2

    :goto_34
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_c

    :cond_3c
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {p3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p2

    goto :goto_34
.end method

.method private updateNetworkLastSSID(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "networkLastSSID"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized updateWpsBlockedNetworks()Z
    .registers 11

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceSystemUser()V

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadWifiManager()V

    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5a

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    const/4 v7, 0x1

    iget v8, v6, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v7, v8, :cond_16

    iget v7, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v7, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isNetworkSecure(IZ)Z

    move-result v7

    if-eqz v7, :cond_37

    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v7, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isNetworkBlocked(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_16

    :cond_37
    iget v7, v6, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v7, :cond_55

    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "message"

    iget-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    const v9, 0x104026c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_55
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->disableNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    const/4 v0, 0x1

    goto :goto_16

    :cond_5a
    if-eqz v0, :cond_6c

    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v7

    if-nez v7, :cond_6c

    const-string v7, "WifiPolicyService"

    const-string v8, "updateWpsBlockedNetworks - error saving network configuration."

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_1 .. :try_end_6b} :catchall_6e

    const/4 v5, 0x0

    :cond_6c
    monitor-exit p0

    return v5

    :catchall_6e
    move-exception v7

    monitor-exit p0

    throw v7
.end method


# virtual methods
.method public activateWifiSsidRestriction(Z)Z
    .registers 7

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "WIFI"

    const-string v4, "wifiSsidRestriction"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->alignConfiguredNetworks()V

    return v1
.end method

.method public addBlockedNetwork(Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    if-nez p1, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addToBlocked(ILjava/lang/String;)V

    const-string v1, "BLOCKED_NETWORKS"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->disableNetwork(Ljava/lang/String;)Z

    move-result v1

    goto :goto_7
.end method

.method public addWifiSsidToBlackList(Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    if-nez p1, :cond_8

    :goto_7
    return v5

    :cond_8
    const/4 v3, 0x1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "WIFI_SSID"

    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "WIFI_LIST_TYPE"

    const-string v7, "BLACKLIST"

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_41

    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v6, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v6

    if-eqz v6, :cond_41

    const/4 v3, 0x1

    :goto_40
    goto :goto_d

    :cond_41
    move v3, v5

    goto :goto_40

    :cond_43
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->alignConfiguredNetworks()V

    move v5, v3

    goto :goto_7
.end method

.method public addWifiSsidToWhiteList(Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    const/4 v3, 0x1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "WIFI_SSID"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "WIFI_LIST_TYPE"

    const-string v6, "WHITELIST"

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_3d

    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_3d

    const/4 v3, 0x1

    :goto_3c
    goto :goto_9

    :cond_3d
    const/4 v3, 0x0

    goto :goto_3c

    :cond_3f
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->alignConfiguredNetworks()V

    return v3
.end method

.method public allowOpenWifiAp(Z)Z
    .registers 6

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "WIFI"

    const-string v3, "allowOpenWifi"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public allowWifiApSettingUserModification(Z)Z
    .registers 6

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "WIFI"

    const-string v3, "allowWifiApSettingModification"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public clearWifiSsidBlackList()Z
    .registers 9

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    const/4 v2, 0x1

    new-array v1, v7, [Ljava/lang/String;

    const-string v6, "adminUid"

    aput-object v6, v1, v5

    const-string v6, "WIFI_LIST_TYPE"

    aput-object v6, v1, v4

    new-array v3, v7, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "BLACKLIST"

    aput-object v6, v3, v4

    if-eqz v2, :cond_32

    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v6, v7, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32

    move v2, v4

    :goto_2b
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->alignConfiguredNetworks()V

    return v2

    :cond_32
    move v2, v5

    goto :goto_2b
.end method

.method public clearWifiSsidWhiteList()Z
    .registers 9

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    const/4 v2, 0x1

    new-array v1, v7, [Ljava/lang/String;

    const-string v6, "adminUid"

    aput-object v6, v1, v5

    const-string v6, "WIFI_LIST_TYPE"

    aput-object v6, v1, v4

    new-array v3, v7, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "WHITELIST"

    aput-object v6, v3, v4

    if-eqz v2, :cond_32

    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v6, v7, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32

    move v2, v4

    :goto_2b
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->alignConfiguredNetworks()V

    return v2

    :cond_32
    move v2, v5

    goto :goto_2b
.end method

.method public edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .registers 10

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceSystemUser()V

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iput-object p2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "WIFI_CONF"

    const-string v5, "networkSSID"

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    new-instance v1, Lcom/android/server/enterprise/wifi/WifiPolicy$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$1;-><init>(Lcom/android/server/enterprise/wifi/WifiPolicy;Landroid/net/wifi/WifiConfiguration;I)V

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_5
.end method

.method public declared-synchronized edmUpdateConfiguredNetworks()V
    .registers 13

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceSystemUser()V

    iget-object v10, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_54

    if-nez v10, :cond_a

    :cond_8
    :goto_8
    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllEnterpriseLastSSIDs()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseDeviceManager;->hasAnyActiveAdmin()Z

    move-result v10

    if-nez v10, :cond_1e

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    :cond_1e
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllEnterpriseNetworks()Ljava/util/List;

    move-result-object v2

    iget-object v10, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllEnterpriseSSIDs()Ljava/util/List;

    move-result-object v4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_37
    :goto_37
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_57

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iget-object v10, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v10, :cond_37

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_53
    .catchall {:try_start_a .. :try_end_53} :catchall_54

    goto :goto_37

    :catchall_54
    move-exception v10

    monitor-exit p0

    throw v10

    :cond_57
    :try_start_57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5b
    :goto_5b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iget-object v10, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7f

    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8b

    :cond_7f
    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_95

    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_95

    :cond_8b
    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ltz v10, :cond_5b

    iget-object v10, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v10, v1}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->forget(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_5b

    :cond_95
    iget-object v10, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v1, v11}, Landroid/sec/enterprise/WifiPolicyCache;->isNetworkAllowed(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v10

    if-nez v10, :cond_ab

    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_5b

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->disableNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_5b

    :cond_ab
    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/server/enterprise/wifi/WifiPolicy;->asyncEnableNetwork(IZ)V

    goto :goto_5b

    :cond_b2
    iget-object v10, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c0

    :cond_e3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkLastSSID(Ljava/lang/String;)Z
    :try_end_ea
    .catchall {:try_start_57 .. :try_end_ea} :catchall_54

    goto/16 :goto_8
.end method

.method public getAllWifiSsidBlackLists()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/WifiControlInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v1, 0x0

    :cond_a
    return-object v1

    :cond_b
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    new-instance v5, Landroid/app/enterprise/WifiControlInfo;

    invoke-direct {v5}, Landroid/app/enterprise/WifiControlInfo;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/app/enterprise/WifiControlInfo;->adminPackageName:Ljava/lang/String;

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v8, "BLACKLIST"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v5, Landroid/app/enterprise/WifiControlInfo;->entries:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c
.end method

.method public getAllWifiSsidWhiteLists()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/WifiControlInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v1, 0x0

    :cond_a
    return-object v1

    :cond_b
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    new-instance v5, Landroid/app/enterprise/WifiControlInfo;

    invoke-direct {v5}, Landroid/app/enterprise/WifiControlInfo;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/app/enterprise/WifiControlInfo;->adminPackageName:Ljava/lang/String;

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v8, "WHITELIST"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v5, Landroid/app/enterprise/WifiControlInfo;->entries:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c
.end method

.method public getAllowUserPolicyChanges()Z
    .registers 8

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowUserChanges"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_f

    move v1, v2

    :cond_22
    return v1
.end method

.method public getAllowUserProfiles(Z)Z
    .registers 10

    const/4 v2, 0x1

    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "WIFI"

    const-string v7, "allowUserProfiles"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_f

    move v2, v3

    :cond_22
    if-nez v2, :cond_40

    if-eqz p1, :cond_40

    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    const v7, 0x104026d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_40
    return v2
.end method

.method public getAutomaticConnectionToWifi()Z
    .registers 8

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowAutomaticConnection"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_f

    move v1, v2

    :cond_22
    return v1
.end method

.method public getBlockedNetworks()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllBlockedList()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_24
    return-object v2
.end method

.method public getDHCPEnabled()Z
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_use_static_ip"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v0, :cond_1a

    const/4 v3, 0x1

    :cond_1a
    return v3
.end method

.method public getDefaultGateway()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    const-string v1, "wifi_static_gateway"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getDefaultIp()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    const-string v1, "wifi_static_ip"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getDefaultPrimaryDNS()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    const-string v1, "wifi_static_dns1"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getDefaultSecondaryDNS()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    const-string v1, "wifi_static_dns2"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getDefaultSubnetMask()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    const-string v1, "wifi_static_netmask"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getMinimumRequiredSecurity()I
    .registers 8

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "minimumRequiredSecurity"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v1, :cond_f

    move v1, v2

    goto :goto_f

    :cond_23
    return v1
.end method

.method public getNetworkAnonymousIdValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "anonymous_identity"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCaCertification(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v1, "ca_cert"

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v1, "keystore://CACERT_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getNetworkClientCertificate(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v1, "client_cert"

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v1, "keystore://USRCERT_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getNetworkDHCPEnabled(Ljava/lang/String;)Z
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_14

    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v4, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v3, v4, :cond_14

    const/4 v2, 0x1

    :cond_14
    return v2
.end method

.method public getNetworkEAPType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "eap"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkGateway(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "networkStaticGateway"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkIdentityValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "identity"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkIp(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "networkStaticIp"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkLinkSecurity(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAdminUid()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkLinkSecurity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPSK(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAdminUid()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_9

    :cond_8
    :goto_8
    return-object v2

    :cond_9
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v3, :cond_8

    const-string v2, "*"

    goto :goto_8
.end method

.method public getNetworkPassword(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v1, "password"

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "*"

    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getNetworkPhase2(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v1, "phase2"

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v1, "auth="

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getNetworkPrimaryDNS(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "networkStaticPrimaryDns"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPrivateKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v1, "key_id"

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    const-string v1, "keystore://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "keystore://USRPKEY_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :goto_18
    return-object v1

    :cond_19
    const-string v1, "USRPKEY_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    :cond_22
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public getNetworkSSIDList()Ljava/util/List;
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

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "networkSSID"

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WIFI_CONF"

    invoke-virtual {v4, v5, v6, v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "networkSSID"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_32
    return-object v0
.end method

.method public getNetworkSecondaryDNS(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "networkStaticSecondaryDns"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkSubnetMask(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "networkStaticSubnetMask"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey1(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey1:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkWEPKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey2(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey2:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkWEPKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey3(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey3:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkWEPKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey4(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey4:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkWEPKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKeyId(Ljava/lang/String;)I
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAdminUid()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_14

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    add-int/lit8 v1, v1, 0x1

    :goto_13
    return v1

    :cond_14
    const/4 v1, -0x1

    goto :goto_13
.end method

.method public getPasswordHidden()Z
    .registers 8

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "passwordHidden"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_f

    move v1, v2

    goto :goto_f

    :cond_24
    return v1
.end method

.method public getPromptCredentialsEnabled()Z
    .registers 8

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "promptCredentials"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_f

    move v1, v2

    :cond_22
    return v1
.end method

.method public getTlsCertificateSecurityLevel()I
    .registers 8

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "tlsCertificateSecurityLevel"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v2, :cond_12

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_12

    :cond_29
    return v2
.end method

.method public getWifiApSetting()Landroid/net/wifi/WifiConfiguration;
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_7
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadWifiManager()V

    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_14

    move-result-object v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getWifiProfile(Ljava/lang/String;)Landroid/app/enterprise/WifiAdminProfile;
    .registers 13

    const/4 v7, 0x0

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    new-instance v4, Landroid/app/enterprise/WifiAdminProfile;

    invoke-direct {v4}, Landroid/app/enterprise/WifiAdminProfile;-><init>()V

    new-array v1, v10, [Ljava/lang/String;

    const-string v6, "adminUid"

    aput-object v6, v1, v9

    const-string v6, "networkSSID"

    aput-object v6, v1, v8

    new-array v5, v10, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "WIFI_CONF"

    invoke-virtual {v6, v8, v1, v5, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_16f

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    invoke-virtual {v6}, Landroid/content/ContentValues;->size()I

    move-result v6

    if-eqz v6, :cond_16f

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string v6, "networkSSID"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_58

    const-string v6, "networkSSID"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    :cond_58
    const-string v6, "networkPSK"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_68

    const-string v6, "networkPSK"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    :cond_68
    const-string v6, "networkPassword"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_78

    const-string v6, "networkPassword"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->password:Ljava/lang/String;

    :cond_78
    const-string v6, "networkWEPKey1"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_88

    const-string v6, "networkWEPKey1"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    :cond_88
    const-string v6, "networkWEPKey2"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_98

    const-string v6, "networkWEPKey2"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    :cond_98
    const-string v6, "networkWEPKey3"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a8

    const-string v6, "networkWEPKey3"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    :cond_a8
    const-string v6, "networkWEPKey4"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b8

    const-string v6, "networkWEPKey4"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    :cond_b8
    const-string v6, "networkWEPKeyId"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ce

    const-string v6, "networkWEPKeyId"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    :cond_ce
    const-string v6, "networkIdentity"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_de

    const-string v6, "networkIdentity"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    :cond_de
    const-string v6, "networkAnonymousId"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ee

    const-string v6, "networkAnonymousId"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    :cond_ee
    const-string v6, "networkPhase2"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_fe

    const-string v6, "networkPhase2"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->phase2:Ljava/lang/String;

    :cond_fe
    const-string v6, "networkCaCertificate"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11e

    const-string v6, "networkCaCertificate"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    if-eqz v6, :cond_11e

    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    const-string v7, "keystore://CACERT_"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    :cond_11e
    const-string v6, "networkClientCertification"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13e

    const-string v6, "networkClientCertification"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    if-eqz v6, :cond_13e

    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    const-string v7, "keystore://USRCERT_"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    :cond_13e
    const-string v6, "networkPrivateKey"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_168

    const-string v6, "networkPrivateKey"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    if-eqz v6, :cond_168

    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    const-string v7, "keystore://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_171

    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    const-string v7, "keystore://USRPKEY_"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    :cond_168
    :goto_168
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkLinkSecurity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    :goto_16e
    return-object v4

    :cond_16f
    move-object v4, v7

    goto :goto_16e

    :cond_171
    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    const-string v7, "USRPKEY_"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    goto :goto_168
.end method

.method public getWifiSsidRestrictionList(I)Ljava/util/List;
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

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    if-eqz v0, :cond_28

    if-nez p1, :cond_17

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    const-string v2, "BLACKLIST"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    :goto_16
    return-object v0

    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    const-string v2, "WHITELIST"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    goto :goto_16

    :cond_28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_16
.end method

.method public isEnterpriseNetwork(Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllEnterpriseSSIDs()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isNetworkBlocked(Ljava/lang/String;Z)Z
    .registers 8

    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isBlocked(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiNetworkSsidBlacklisted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    :cond_14
    const/4 v1, 0x1

    :goto_15
    if-eqz v1, :cond_33

    if-eqz p2, :cond_33

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "message"

    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    const v4, 0x104026a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_33
    return v1

    :cond_34
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public isNetworkSecure(IZ)Z
    .registers 8

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getMinimumRequiredSecurity()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isNetworkSecure(II)Z

    move-result v1

    if-nez v1, :cond_29

    if-eqz p2, :cond_29

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "message"

    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    const v4, 0x104026c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_29
    return v1
.end method

.method public isOpenWifiApAllowed()Z
    .registers 8

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowOpenWifi"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_f

    move v1, v2

    :cond_22
    return v1
.end method

.method public isWifiAllowed(Z)Z
    .registers 9

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowWifi"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_f

    move v1, v2

    :cond_22
    if-nez v1, :cond_2d

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v1, 0x1

    :cond_2d
    return v1
.end method

.method public isWifiApSettingUserModificationAllowed()Z
    .registers 8

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowWifiApSettingModification"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_f

    move v1, v2

    :cond_22
    return v1
.end method

.method public isWifiSsidRestrictionActive()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiSsidRestrictionActive(I)Z

    move-result v1

    return v1
.end method

.method public isWifiStateChangeAllowed()Z
    .registers 8

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowWifi"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_f

    move v1, v2

    :cond_22
    return v1
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public removeBlockedNetwork(Ljava/lang/String;)Z
    .registers 8

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    if-nez p1, :cond_9

    move v1, v4

    :goto_8
    return v1

    :cond_9
    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeFromBlocked(ILjava/lang/String;)V

    const-string v5, "BLOCKED_NETWORKS"

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isNetworkBlocked(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2d

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkIdBySSID(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->asyncEnableNetwork(IZ)V

    :cond_2d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8
.end method

.method public removeNetworkConfiguration(Ljava/lang/String;)Z
    .registers 11

    const/4 v5, 0x0

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_15

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    if-nez p1, :cond_21

    :cond_14
    :goto_14
    return v5

    :cond_15
    if-eqz p1, :cond_14

    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "WIFI_CONF"

    const-string v8, "networkSSID"

    invoke-virtual {v6, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_21
    const/4 v6, -0x1

    if-ne v0, v6, :cond_2c

    const-string v6, "WifiPolicyService"

    const-string v7, "No admin found for the given SSID"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_2c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    if-eq v6, v7, :cond_85

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v6

    if-eqz v6, :cond_82

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v6, :cond_53

    const-string v6, "WifiPolicyService"

    const-string v7, "Not a valid MDM SSID"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_14

    :cond_53
    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ltz v5, :cond_76

    const-string v5, "WifiPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "forgetting network id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v5, v1}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->forget(Landroid/net/wifi/WifiConfiguration;)V

    :cond_76
    const/4 v5, 0x0

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v2, v5

    :cond_82
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_85
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "WIFI_CONF"

    const-string v7, "networkSSID"

    invoke-virtual {v5, v6, v0, v7, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v2, v5

    const-string v5, "ENTERPRISE_SSIDS"

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    move v5, v2

    goto/16 :goto_14
.end method

.method public removeWifiSsidFromBlackList(Ljava/util/List;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    const/4 v3, 0x1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-array v1, v11, [Ljava/lang/String;

    const-string v8, "adminUid"

    aput-object v8, v1, v7

    const-string v8, "WIFI_SSID"

    aput-object v8, v1, v6

    const-string v8, "WIFI_LIST_TYPE"

    aput-object v8, v1, v10

    new-array v5, v11, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    aput-object v4, v5, v6

    const-string v8, "BLACKLIST"

    aput-object v8, v5, v10

    if-eqz v3, :cond_43

    iget-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v8, v9, v1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_43

    move v3, v6

    :goto_42
    goto :goto_d

    :cond_43
    move v3, v7

    goto :goto_42

    :cond_45
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->alignConfiguredNetworks()V

    return v3
.end method

.method public removeWifiSsidFromWhiteList(Ljava/util/List;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    const/4 v3, 0x1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-array v1, v11, [Ljava/lang/String;

    const-string v8, "adminUid"

    aput-object v8, v1, v7

    const-string v8, "WIFI_SSID"

    aput-object v8, v1, v6

    const-string v8, "WIFI_LIST_TYPE"

    aput-object v8, v1, v10

    new-array v5, v11, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    aput-object v4, v5, v6

    const-string v8, "WHITELIST"

    aput-object v8, v5, v10

    if-eqz v3, :cond_43

    iget-object v8, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v8, v9, v1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_43

    move v3, v6

    :goto_42
    goto :goto_d

    :cond_43
    move v3, v7

    goto :goto_42

    :cond_45
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->alignConfiguredNetworks()V

    return v3
.end method

.method public setAllowUserPolicyChanges(Z)Z
    .registers 7

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "WIFI"

    const-string v4, "allowUserChanges"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "ALLOW_USER_CHANGES"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    return v1
.end method

.method public setAllowUserProfiles(Z)Z
    .registers 7

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "WIFI"

    const-string v4, "allowUserProfiles"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "ALLOW_USER_PROFILES"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    return v1
.end method

.method public setAutomaticConnectionToWifi(Z)Z
    .registers 7

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "WIFI"

    const-string v4, "allowAutomaticConnection"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "ALLOW_AUTOMATIC_CONNECTION"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    return v1
.end method

.method public setDHCPEnabled(Z)Z
    .registers 8

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_a
    return v3

    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_use_static_ip"

    if-eqz p1, :cond_22

    :goto_19
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v0

    goto :goto_a

    :cond_22
    const/4 v3, 0x1

    goto :goto_19
.end method

.method public setDefaultGateway(Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "wifi_static_gateway"

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_a
.end method

.method public setDefaultIp(Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "wifi_static_ip"

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_a
.end method

.method public setDefaultPrimaryDNS(Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "wifi_static_dns1"

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_a
.end method

.method public setDefaultSecondaryDNS(Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "wifi_static_dns2"

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_a
.end method

.method public setDefaultSubnetMask(Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    :goto_b
    return v1

    :cond_c
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "wifi_static_netmask"

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_18
    move v1, v0

    goto :goto_b
.end method

.method public setMinimumRequiredSecurity(I)Z
    .registers 18

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v1

    if-ltz p1, :cond_10

    const/4 v13, 0x7

    move/from16 v0, p1

    if-gt v0, v13, :cond_10

    const/4 v13, 0x3

    move/from16 v0, p1

    if-ne v0, v13, :cond_12

    :cond_10
    const/4 v8, 0x0

    :goto_11
    return v8

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getMinimumRequiredSecurity()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "WIFI"

    const-string v15, "minimumRequiredSecurity"

    move/from16 v0, p1

    invoke-virtual {v13, v1, v14, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "WIFI"

    const-string v15, "minimumRequiredSecurity"

    invoke-virtual {v13, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v7, 0x0

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_35
    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v7, :cond_35

    move v7, v11

    goto :goto_35

    :cond_49
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v13

    if-eqz v13, :cond_99

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_99

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_61
    :goto_61
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_99

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget v6, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isNetworkSecure(II)Z

    move-result v13

    if-nez v13, :cond_82

    iget v13, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_61

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->disableNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_61

    :cond_82
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isNetworkSecure(II)Z

    move-result v13

    if-nez v13, :cond_61

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isNetworkSecure(II)Z

    move-result v13

    if-eqz v13, :cond_61

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->asyncEnableNetwork(IZ)V

    goto :goto_61

    :cond_99
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v13, "MINIMUM_SECURITY_LEVEL"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    goto/16 :goto_11
.end method

.method public setNetworkAnonymousIdValue(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "anonymous_identity"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    if-nez p2, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const-string v0, "ca_cert"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public setNetworkClientCertification(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    if-nez p2, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const-string v0, "client_cert"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public setNetworkDHCPEnabled(Ljava/lang/String;Z)Z
    .registers 7

    if-nez p1, :cond_4

    const/4 v2, 0x0

    :goto_3
    return v2

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz p2, :cond_1b

    sget-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_11
    iput-object v3, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_3

    :cond_1b
    sget-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_11
.end method

.method public setNetworkGateway(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "networkStaticGateway"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkIdentityValue(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_11

    const-string v0, "WifiPolicyService"

    const-string v1, "Identity value excedes maximum length (32)"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_10
    return v0

    :cond_11
    const-string v0, "identity"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_10
.end method

.method public setNetworkIp(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "networkStaticIp"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkLinkSecurity(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v1

    if-eqz p2, :cond_c

    if-nez p1, :cond_e

    :cond_c
    move v4, v5

    :goto_d
    return v4

    :cond_e
    sget-object v6, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    aget-object v6, v6, v10

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_23

    sget-object v6, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    :cond_23
    const-string v6, "WifiPolicyService"

    const-string v7, "security level no longer supported"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto :goto_d

    :cond_2c
    sget-object v6, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_41

    const-string v6, "WifiPolicyService"

    const-string v7, "security level not supported"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto :goto_d

    :cond_41
    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    const/4 v4, 0x1

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v6, :cond_12d

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6}, Ljava/util/BitSet;->clear()V

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v6}, Ljava/util/BitSet;->clear()V

    sget-object v6, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {p2, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b2

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v5}, Ljava/util/BitSet;->set(I)V

    :goto_63
    const/4 v5, -0x1

    iput v5, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeNetworkConfiguration(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "WifiPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNetworkLinkSecurity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    and-int/2addr v4, v5

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v5

    if-eqz v5, :cond_95

    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_95
    const-string v5, "NONE"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_123

    const/4 v3, 0x0

    :goto_9e
    sget-object v5, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_123

    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v3

    if-eqz v5, :cond_af

    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const-string v6, ""

    aput-object v6, v5, v3

    :cond_af
    add-int/lit8 v3, v3, 0x1

    goto :goto_9e

    :cond_b2
    sget-object v6, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {p2, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_cc

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v6, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v5, v8}, Ljava/util/BitSet;->set(I)V

    goto :goto_63

    :cond_cc
    sget-object v6, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-virtual {p2, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_dc

    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v8}, Ljava/util/BitSet;->set(I)V

    goto :goto_63

    :cond_dc
    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v9}, Ljava/util/BitSet;->set(I)V

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v10}, Ljava/util/BitSet;->set(I)V

    sget-object v6, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f8

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_63

    :cond_f8
    sget-object v6, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/4 v7, 0x6

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_10a

    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_63

    :cond_10a
    sget-object v6, Lcom/android/server/enterprise/wifi/WifiPolicy;->sAcceptableSecurityLevels:[Ljava/lang/String;

    const/4 v7, 0x7

    aget-object v6, v6, v7

    invoke-virtual {p2, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11c

    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_63

    :cond_11c
    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_63

    :cond_123
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    const-string v5, "ENTERPRISE_SSIDS"

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_12d
    const/4 v4, 0x0

    goto/16 :goto_d
.end method

.method public setNetworkPSK(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_10

    :cond_e
    const/4 v2, 0x0

    :cond_f
    :goto_f
    return v2

    :cond_10
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_f

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    if-le v3, v4, :cond_f

    const-string v3, "[0-9A-Fa-f]{64}"

    invoke-virtual {p2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    iput-object p2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :goto_2c
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_f

    :cond_34
    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_2c
.end method

.method public setNetworkPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_11

    const-string v0, "WifiPolicyService"

    const-string v1, "Password excedes maximum length (32)"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_10
    return v0

    :cond_11
    const-string v0, "password"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_10
.end method

.method public setNetworkPhase2(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    if-nez p2, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const-string v0, "phase2"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public setNetworkPrimaryDNS(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "networkStaticPrimaryDns"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkPrivateKey(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    if-nez p2, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const-string v0, "key_id"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public setNetworkSSID(Ljava/lang/String;)Z
    .registers 15

    const/4 v10, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x20

    if-le v11, v12, :cond_18

    :cond_10
    const-string v11, "WifiPolicyService"

    const-string v12, "SSID is invalid or excedes maximum length (32)"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_17
    return v10

    :cond_18
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_2c

    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2c

    const/4 v10, 0x1

    goto :goto_17

    :cond_2c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v1, :cond_17

    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v11, -0x1

    iput v11, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4f

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11, v10}, Ljava/util/BitSet;->set(I)V

    :cond_4f
    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateEnabled()Z

    move-result v10

    if-eqz v10, :cond_9d

    iget-object v10, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_91

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_69
    :goto_69
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_91

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    iget-object v10, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_89

    if-eqz v4, :cond_69

    iget-object v10, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_69

    :cond_89
    iget-object v10, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v11, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    goto :goto_69

    :cond_91
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    if-eqz v4, :cond_a8

    invoke-static {v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_9d
    :goto_9d
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v10, "ENTERPRISE_SSIDS"

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    move v10, v6

    goto/16 :goto_17

    :cond_a8
    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_9d
.end method

.method public setNetworkSecondaryDNS(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "networkStaticSecondaryDns"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkSubnetMask(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "networkStaticSubnetMask"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey1(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey1:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkWEPKey(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey2(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey2:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkWEPKey(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey3(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey3:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkWEPKey(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey4(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey4:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkWEPKey(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKeyId(Ljava/lang/String;I)Z
    .registers 7

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    const/4 v3, 0x1

    if-lt p2, v3, :cond_a

    const/4 v3, 0x4

    if-le p2, v3, :cond_c

    :cond_a
    const/4 v2, 0x0

    :goto_b
    return v2

    :cond_c
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_20

    add-int/lit8 v3, p2, -0x1

    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_b

    :cond_20
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public setPasswordHidden(Z)Z
    .registers 6

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "WIFI"

    const-string v3, "passwordHidden"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public setPromptCredentialsEnabled(Z)Z
    .registers 7

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "WIFI"

    const-string v4, "promptCredentials"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "PROMPT_CREDENTIALS_ENABLED"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    return v1
.end method

.method public setTlsCertificateSecurityLevel(I)Z
    .registers 9

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    if-ltz p1, :cond_9

    const/4 v4, 0x1

    if-le p1, v4, :cond_b

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1

    :cond_b
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "tlsCertificateSecurityLevel"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a
.end method

.method public setWifi(Z)Z
    .registers 10

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowWifi"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "WIFI_ALLOWED"

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    if-eqz p1, :cond_2b

    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Z)Z

    move-result v4

    if-eqz v4, :cond_2b

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :goto_27
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_2b
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_27
.end method

.method public setWifiAllowed(Z)Z
    .registers 9

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowWifi"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez p1, :cond_24

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v4, :cond_16

    const/4 v4, 0x0

    :goto_15
    return v4

    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v4

    and-int/2addr v1, v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_24
    const-string v4, "WIFI_ALLOWED"

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    move v4, v1

    goto :goto_15
.end method

.method public setWifiApSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v7, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x20

    if-le v4, v5, :cond_34

    :cond_15
    const-string v4, "WifiPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SSID("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is null or empty or more than 32 characters"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_33
    return v1

    :cond_34
    const-string v4, "Open"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    const-string v4, "WPA_PSK"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    const-string v4, "WifiPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Security Type ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")is not valid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    :cond_63
    invoke-virtual {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isOpenWifiApAllowed()Z

    move-result v4

    if-nez v4, :cond_90

    const-string v4, "Open"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_90

    const-string v4, "WifiPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Security Type ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")is not valid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    :cond_90
    const-string v4, "WPA_PSK"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c2

    if-eqz p3, :cond_a2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-ge v4, v5, :cond_c2

    :cond_a2
    const-string v4, "WifiPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Password("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is null or empty or less than 8 characters for WPA PSK security type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33

    :cond_c2
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    const-string v4, ""

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    const-string v6, ""

    aput-object v6, v4, v5

    const-string v4, "WPA_PSK"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_116

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    iput-object p3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :goto_f2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_f6
    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadWifiManager()V

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_11c

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    :try_end_110
    .catchall {:try_start_f6 .. :try_end_110} :catchall_12a

    move-result v1

    :goto_111
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_33

    :cond_116
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_f2

    :cond_11c
    :try_start_11c
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v5, "com.android.settings"

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->stopApp(Ljava/lang/String;)Z
    :try_end_129
    .catchall {:try_start_11c .. :try_end_129} :catchall_12a

    goto :goto_111

    :catchall_12a
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setWifiProfile(Landroid/app/enterprise/WifiAdminProfile;)Z
    .registers 12

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    const/4 v1, 0x1

    if-nez p1, :cond_a

    :goto_9
    return v5

    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    if-eqz v6, :cond_b5

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v2, v6, v5

    const-string v6, "PSK"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    if-nez v6, :cond_39

    const-string v6, "WifiPolicyService"

    const-string v7, "PSK not set"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_39
    const-string v6, "WEP"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b5

    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    if-lt v6, v8, :cond_49

    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    if-le v6, v9, :cond_51

    :cond_49
    const-string v6, "WifiPolicyService"

    const-string v7, "WebKeyId invalid"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_51
    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    if-ne v6, v8, :cond_69

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    if-eqz v6, :cond_61

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_69

    :cond_61
    const-string v6, "WifiPolicyService"

    const-string v7, "WebKey1 not set"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_69
    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_82

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    if-eqz v6, :cond_7a

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_82

    :cond_7a
    const-string v6, "WifiPolicyService"

    const-string v7, "WebKey2 not set"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_82
    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_9c

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    if-eqz v6, :cond_93

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9c

    :cond_93
    const-string v6, "WifiPolicyService"

    const-string v7, "WebKey3 not set"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_9c
    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    if-ne v6, v9, :cond_b5

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    if-eqz v6, :cond_ac

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b5

    :cond_ac
    const-string v6, "WifiPolicyService"

    const-string v7, "WebKey4 not set"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_b5
    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    if-eqz v6, :cond_17c

    if-nez v0, :cond_17c

    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkSSID(Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    :cond_c2
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    if-eqz v5, :cond_cf

    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkWEPKey1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    :cond_cf
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    if-eqz v5, :cond_dc

    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkWEPKey2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    :cond_dc
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    if-eqz v5, :cond_e9

    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkWEPKey3(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    :cond_e9
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    if-eqz v5, :cond_f6

    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkWEPKey4(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    :cond_f6
    iget v5, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_104

    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkWEPKeyId(Ljava/lang/String;I)Z

    move-result v5

    and-int/2addr v1, v5

    :cond_104
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->password:Ljava/lang/String;

    if-eqz v5, :cond_111

    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->password:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    :cond_111
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    if-eqz v5, :cond_11e

    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkPSK(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    :cond_11e
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    if-eqz v5, :cond_12b

    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkLinkSecurity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    :cond_12b
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    if-eqz v5, :cond_138

    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    :cond_138
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    if-eqz v5, :cond_145

    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkClientCertification(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    :cond_145
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->phase2:Ljava/lang/String;

    if-eqz v5, :cond_152

    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->phase2:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkPhase2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    :cond_152
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    if-eqz v5, :cond_15f

    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkPrivateKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    :cond_15f
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    if-eqz v5, :cond_16c

    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkIdentityValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    :cond_16c
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    if-eqz v5, :cond_179

    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setNetworkAnonymousIdValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    :cond_179
    move v5, v1

    goto/16 :goto_9

    :cond_17c
    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    if-nez v6, :cond_c2

    goto/16 :goto_9
.end method

.method public setWifiStateChangeAllowed(Z)Z
    .registers 7

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "WIFI"

    const-string v4, "allowWifi"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "WIFI_ALLOWED"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    return v1
.end method

.method public systemReady()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadWifiManager()V

    invoke-direct {p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    return-void
.end method
