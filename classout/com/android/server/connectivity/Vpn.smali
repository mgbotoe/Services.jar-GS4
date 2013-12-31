.class public Lcom/android/server/connectivity/Vpn;
.super Landroid/net/BaseNetworkStateTracker;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;,
        Lcom/android/server/connectivity/Vpn$Connection;
    }
.end annotation


# static fields
.field private static final LOGD:Z = true

.field private static final MVP_FILE_NAME:Ljava/lang/String; = "/data/misc/vpn/MVPClients"

.field private static final PHYSICAL_IFACE:Ljava/lang/String; = "PHYSICAL_IFACE"

.field private static final TAG:Ljava/lang/String; = "Vpn"

.field public static final TUN_INTERFACE_DOWN:I = 0x2

.field public static final TUN_INTERFACE_UP:I = 0x1

.field private static final VPN_CONNECTED_INTENT_ACTION:Ljava/lang/String; = "com.android.server.connectivity.Vpn.VPN_CONNECTED"

.field private static final VPN_DISCONNECTED_INTENT_ACTION:Ljava/lang/String; = "com.android.server.connectivity.Vpn.VPN_DISCONNECTED"

.field private static final VPN_DNS:Ljava/lang/String; = "VPN_DNS"

.field private static final VPN_IFACE:Ljava/lang/String; = "VPN_IFACE"

.field private static final VPN_SEARCH_DOMAIN:Ljava/lang/String; = "VPN_DOMAIN"


# instance fields
.field private final mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

.field private final mConnService:Landroid/net/IConnectivityManager;

.field private mConnection:Lcom/android/server/connectivity/Vpn$Connection;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private volatile mEnableNotif:Z

.field private volatile mEnableTeardown:Z

.field private mInterface:Ljava/lang/String;

.field private mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

.field private mMvpOn:Z

.field private mNamespace:Lcom/android/server/connectivity/VpnNamespace;

.field private mNetworkManagementService:Landroid/os/INetworkManagementService;

.field private mObserver:Landroid/net/INetworkManagementEventObserver;

.field private mPackage:Ljava/lang/String;

.field private mProfileName:Ljava/lang/String;

.field private mStatusIntent:Landroid/app/PendingIntent;

.field private mVpnConnectionNotificationReceiver:Landroid/content/BroadcastReceiver;

.field private mVpnPolicy:Landroid/app/enterprise/VpnPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$VpnCallback;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;)V
    .registers 9

    const/4 v3, 0x1

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Landroid/net/BaseNetworkStateTracker;-><init>(I)V

    const-string v2, "[Legacy VPN]"

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    iput-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mMvpOn:Z

    new-instance v2, Lcom/android/server/connectivity/Vpn$3;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/Vpn$3;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iput-object p4, p0, Lcom/android/server/connectivity/Vpn;->mConnService:Landroid/net/IConnectivityManager;

    :try_start_1e
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p3, v2}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_41

    :goto_23
    new-instance v2, Lcom/android/server/connectivity/Vpn$1;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/Vpn$1;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mVpnConnectionNotificationReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.android.server.connectivity.Vpn.VPN_CONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.android.server.connectivity.Vpn.VPN_DISCONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mVpnConnectionNotificationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :catch_41
    move-exception v0

    const-string v2, "Vpn"

    const-string v3, "Problem registering observer"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/Vpn;)Landroid/os/INetworkManagementService;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/Vpn;)Landroid/os/INetworkManagementService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/Vpn;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->hideNotification()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)Lcom/android/server/connectivity/Vpn$Connection;
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/Vpn;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->sendInterfaceStateToKnoxVpn(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/Vpn;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->mvpInterfaceRemoved()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/Vpn;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->removeMvpClientFromList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/Vpn;)Landroid/net/INetworkManagementEventObserver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/Vpn;)Landroid/net/IConnectivityManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnService:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniSetRoutes(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->showNotification(Lcom/android/internal/net/VpnConfig;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Vpn;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mMvpOn:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    return-object v0
.end method

.method private addMvpClientToList(Ljava/lang/String;)V
    .registers 9

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/misc/vpn/MVPClients"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-direct {p0, p1, v3}, Lcom/android/server/connectivity/Vpn;->isAnMvpClient(Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_5b

    :cond_13
    :try_start_13
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v5, 0x100

    invoke-direct {v0, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_25} :catch_61

    const/4 v4, 0x0

    :try_start_26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, p1, v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    const-string v4, "Vpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " set as MVP client"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_58
    .catchall {:try_start_26 .. :try_end_58} :catchall_5c

    :try_start_58
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    :cond_5b
    :goto_5b
    return-void

    :catchall_5c
    move-exception v4

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    throw v4
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_61} :catch_61

    :catch_61
    move-exception v2

    const-string v4, "Vpn"

    const-string v5, "Not able to create or write into MVP File"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b
.end method

.method private clearMvpList(Ljava/io/File;)V
    .registers 11

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->getMvpClientList(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1d} :catch_63

    move-result-object v0

    if-eqz v0, :cond_42

    :try_start_20
    const-string v6, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Killing client "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v0, v1, v6}, Landroid/app/IActivityManager;->killApplicationWithAppId(Ljava/lang/String;I)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_42} :catch_6c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_42} :catch_86
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_42} :catch_63

    :cond_42
    :goto_42
    :try_start_42
    const-string v6, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Clearing data for client "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/android/server/connectivity/Vpn$2;

    invoke-direct {v6, p0}, Lcom/android/server/connectivity/Vpn$2;-><init>(Lcom/android/server/connectivity/Vpn;)V

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_62} :catch_63

    goto :goto_e

    :catch_63
    move-exception v4

    const-string v6, "Vpn"

    const-string v7, "Not able to get MVP list to clear it"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    return-void

    :catch_6c
    move-exception v2

    :try_start_6d
    const-string v6, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not able to kill client "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    :catch_86
    move-exception v2

    const-string v6, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not able to find client "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_9f} :catch_63

    goto :goto_42
.end method

.method private enforceControlPermission()V
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_9

    :cond_8
    return-void

    :cond_9
    :try_start_9
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.vpndialogs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1c} :catch_26

    if-eq v2, v3, :cond_8

    :goto_1e
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Unauthorized Caller"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_26
    move-exception v2

    goto :goto_1e
.end method

.method private static findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;
    .registers 5

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    invoke-virtual {v1}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_8

    return-object v1

    :cond_23
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to find IPv4 default gateway"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getMvpClientList(Ljava/io/File;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x100

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :try_start_17
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    :goto_1b
    if-eqz v2, :cond_2a

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_25

    move-result-object v2

    goto :goto_1b

    :catchall_25
    move-exception v3

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v3

    :cond_2a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object v1
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .registers 5

    const-string v1, "Vpn"

    const-string v2, "getNetworkManagementService is reached inintally"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "Vpn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkManagementService binder value is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4b

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_4b

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    const-string v1, "Vpn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkManagementService mNetworkManagementService value is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    return-object v1
.end method

.method private hideNotification()V
    .registers 5

    const/4 v3, 0x0

    const-string v1, "Vpn"

    const-string v2, "hideNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    if-nez v1, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_c

    const v1, 0x108102d

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_c
.end method

.method private isAnMvpClient(Ljava/lang/String;Ljava/io/File;)Z
    .registers 7

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->getMvpClientList(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v2

    :goto_8
    return v2

    :catch_9
    move-exception v1

    const-string v2, "Vpn"

    const-string v3, "Not able to get MVP list"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_8
.end method

.method private isClientAllowedForHost(Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_c

    move v1, v2

    :cond_b
    :goto_b
    return v1

    :cond_c
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/misc/vpn/MVPClients"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isMvpCleanUpNeeded()Z

    move-result v3

    if-eqz v3, :cond_29

    const-string v3, "Vpn"

    const-string v4, "Clearing client list for MVP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->clearMvpList(Ljava/io/File;)V

    :cond_29
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->isAnMvpClient(Ljava/lang/String;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v1, v2

    goto :goto_b
.end method

.method private isMvpCleanUpNeeded()Z
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_8
    const-string v4, "com.vmware.mvp.enabled"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_16} :catch_1b

    if-gt v4, v2, :cond_19

    :goto_18
    return v2

    :cond_19
    move v2, v3

    goto :goto_18

    :catch_1b
    move-exception v0

    const-string v3, "Vpn"

    const-string v4, "Cannot find com.vmware.mvp.enabled package, we are probably rooted"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method private isRevokeNeeded()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mMvpOn:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isMvpCleanUpNeeded()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isVpnConnectionSecure([Ljava/lang/String;)Z
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v4, "enterprise_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getVpnPolicy()Landroid/app/enterprise/VpnPolicy;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

    :cond_1d
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

    if-eqz v3, :cond_27

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

    invoke-virtual {v3, p1}, Landroid/app/enterprise/VpnPolicy;->checkRacoonSecurity([Ljava/lang/String;)Z

    move-result v0

    :cond_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0
.end method

.method private native jniCheck(Ljava/lang/String;)I
.end method

.method private native jniCreate(I)I
.end method

.method private native jniGetName(I)Ljava/lang/String;
.end method

.method private native jniProtect(ILjava/lang/String;)V
.end method

.method private native jniReset(Ljava/lang/String;)V
.end method

.method private native jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native jniSetRoutes(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private mvpInterfaceRemoved()V
    .registers 6

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    invoke-virtual {v3}, Lcom/android/server/connectivity/VpnNamespace;->mkIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_10
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v4, "com.vmware.mvp.permission.VPN_CONFIG"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_22

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v3, "Vpn"

    const-string v4, "disconnect event has been sent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-void

    :catchall_22
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private declared-synchronized removeMvpClientFromList(Ljava/lang/String;)V
    .registers 12

    monitor-enter p0

    :try_start_1
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/misc/vpn/MVPClients"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_60

    :try_start_8
    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Vpn;->getMvpClientList(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_76

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_60
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1b} :catch_57

    :goto_1b
    monitor-exit p0

    return-void

    :cond_1d
    :try_start_1d
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v8, 0x100

    invoke-direct {v0, v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_2f
    .catchall {:try_start_1d .. :try_end_2f} :catchall_60
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2f} :catch_57

    :try_start_2f
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_63

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v1, v7, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_4a
    .catchall {:try_start_2f .. :try_end_4a} :catchall_71
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_4a} :catch_4b

    goto :goto_33

    :catch_4b
    move-exception v5

    :try_start_4c
    const-string v7, "Vpn"

    const-string v8, "Not able to re-write into MVP File"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_71

    :try_start_53
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_60
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_1b

    :catch_57
    move-exception v5

    :try_start_58
    const-string v7, "Vpn"

    const-string v8, "Not able to re-create or write into MVP File"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_60

    goto :goto_1b

    :catchall_60
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_63
    :try_start_63
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V
    :try_end_6d
    .catchall {:try_start_63 .. :try_end_6d} :catchall_71
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_6d} :catch_4b

    :try_start_6d
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1b

    :catchall_71
    move-exception v7

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    throw v7

    :cond_76
    const-string v7, "Vpn"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Called to remove client "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " that is no more in the list"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catchall {:try_start_6d .. :try_end_94} :catchall_60
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_94} :catch_57

    goto :goto_1b
.end method

.method private sendInterfaceStateToKnoxVpn(I)V
    .registers 6

    const-string v1, "Vpn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendInterfaceStateToKnoxVpn : profileName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mProfileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.enterprise.mdm.services.vpn.INTERFACE_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_action"

    const-string v2, "tun_info"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_profile_name"

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mProfileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_tun_id"

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "Vpn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendInterfaceStateToKnoxVpn :  Sending broadcast. profileName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mProfileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_ENTERPRISE_VPN_SOLUTION"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private showNotification(Lcom/android/internal/net/VpnConfig;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 15

    const v10, 0x108102d

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v4, "Vpn"

    const-string v5, "showNotification"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    if-nez v4, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_10

    if-nez p2, :cond_73

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v5, 0x1040726

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_30
    iget-object v4, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    if-nez v4, :cond_81

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v5, 0x1040728

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_3d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/internal/net/VpnConfig;->startTime:J

    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v10, v1, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_10

    :cond_73
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v5, 0x1040727

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p2, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_30

    :cond_81
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v5, 0x1040729

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3d
.end method

.method private declared-synchronized startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpn()V

    const/4 v0, 0x0

    const-string v1, "[Legacy VPN]"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "startLegacyVpn"

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->start()V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .registers 6

    const-string v0, "Vpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    new-instance v1, Landroid/net/NetworkInfo;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v1, v2}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$VpnCallback;->onStateChanged(Landroid/net/NetworkInfo;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .registers 26

    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_77

    move-result-object v15

    const/4 v3, 0x0

    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_77
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_2e

    move-result-object v3

    :try_start_1c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v21

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v22, v0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_77

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_32

    const/16 v19, 0x0

    :cond_2c
    :goto_2c
    monitor-exit p0

    return-object v19

    :catch_2e
    move-exception v7

    const/16 v19, 0x0

    goto :goto_2c

    :cond_32
    :try_start_32
    new-instance v11, Landroid/content/Intent;

    const-string v21, "android.net.VpnService"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v11, v0}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    if-nez v10, :cond_7a

    new-instance v21, Ljava/lang/SecurityException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Cannot find "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_77
    .catchall {:try_start_32 .. :try_end_77} :catchall_77

    :catchall_77
    move-exception v21

    monitor-exit p0

    throw v21

    :cond_7a
    :try_start_7a
    const-string v21, "android.permission.BIND_VPN_SERVICE"

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_b1

    new-instance v21, Ljava/lang/SecurityException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " does not require "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_b1
    invoke-virtual {v3, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v15}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v4, 0x0

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    if-lez v21, :cond_13c

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    if-lez v21, :cond_13c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1050005

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1050006

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-virtual {v9, v0, v1, v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v8, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/Vpn;->mMvpOn:Z

    move/from16 v21, v0
    :try_end_118
    .catchall {:try_start_7a .. :try_end_118} :catchall_77

    if-eqz v21, :cond_13c

    :try_start_11a
    const-string v21, "com.vmware.mvp.enabled"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    div-int/lit8 v21, v20, 0x2

    div-int/lit8 v22, v8, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-virtual {v9, v0, v1, v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v5, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_13c
    .catchall {:try_start_11a .. :try_end_13c} :catchall_77
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11a .. :try_end_13c} :catch_1fa

    :cond_13c
    :goto_13c
    :try_start_13c
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniCreate(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;
    :try_end_14d
    .catchall {:try_start_13c .. :try_end_14d} :catchall_77

    move-result-object v19

    :try_start_14e
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v22, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniGetName(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/Vpn;->mMvpOn:Z

    move/from16 v21, v0

    if-eqz v21, :cond_22d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    move-object/from16 v21, v0

    if-nez v21, :cond_182

    new-instance v21, Lcom/android/server/connectivity/VpnNamespace;

    invoke-direct/range {v21 .. v21}, Lcom/android/server/connectivity/VpnNamespace;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    :cond_182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-virtual {v0, v12, v1, v2}, Lcom/android/server/connectivity/VpnNamespace;->establish(Ljava/lang/String;Lcom/android/internal/net/VpnConfig;Lcom/android/server/connectivity/Vpn;)Landroid/content/Intent;

    move-result-object v16

    if-eqz v16, :cond_1ac

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_197
    .catchall {:try_start_14e .. :try_end_197} :catchall_77
    .catch Ljava/lang/RuntimeException; {:try_start_14e .. :try_end_197} :catch_1e8
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_197} :catch_209

    move-result-wide v17

    :try_start_198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "com.vmware.mvp.permission.VPN_CONFIG"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1a9
    .catchall {:try_start_198 .. :try_end_1a9} :catchall_204

    :try_start_1a9
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1ac
    :goto_1ac
    new-instance v6, Lcom/android/server/connectivity/Vpn$Connection;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v6, v0, v1}, Lcom/android/server/connectivity/Vpn$Connection;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$1;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v11, v6, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v21

    if-nez v21, :cond_262

    new-instance v21, Ljava/lang/IllegalStateException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Cannot bind "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_1e8
    .catchall {:try_start_1a9 .. :try_end_1e8} :catchall_77
    .catch Ljava/lang/RuntimeException; {:try_start_1a9 .. :try_end_1e8} :catch_1e8
    .catch Ljava/io/IOException; {:try_start_1a9 .. :try_end_1e8} :catch_209

    :catch_1e8
    move-exception v7

    :try_start_1e9
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v22, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7

    :catch_1fa
    move-exception v7

    const-string v21, "Vpn"

    const-string v22, "Not able to find com.vmware.mvp.enabled"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_202
    .catchall {:try_start_1e9 .. :try_end_202} :catchall_77

    goto/16 :goto_13c

    :catchall_204
    move-exception v21

    :try_start_205
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v21
    :try_end_209
    .catchall {:try_start_205 .. :try_end_209} :catchall_77
    .catch Ljava/lang/RuntimeException; {:try_start_205 .. :try_end_209} :catch_1e8
    .catch Ljava/io/IOException; {:try_start_205 .. :try_end_209} :catch_209

    :catch_209
    move-exception v13

    :try_start_20a
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v22, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    const-string v21, "Vpn"

    const-string v22, "MVP VPN is unable to start"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    new-instance v21, Ljava/lang/RuntimeException;

    move-object/from16 v0, v21

    invoke-direct {v0, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v21
    :try_end_22d
    .catchall {:try_start_20a .. :try_end_22d} :catchall_77

    :cond_22d
    :try_start_22d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v1}, Lcom/android/server/connectivity/Vpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_24b

    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "At least one address must be specified"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_24b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1ac

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v1}, Lcom/android/server/connectivity/Vpn;->jniSetRoutes(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ac

    :cond_262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    move-object/from16 v21, v0

    if-eqz v21, :cond_279

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_29c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_29c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    :cond_29c
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mProfileName:Ljava/lang/String;
    :try_end_2b0
    .catchall {:try_start_22d .. :try_end_2b0} :catchall_77
    .catch Ljava/lang/RuntimeException; {:try_start_22d .. :try_end_2b0} :catch_1e8
    .catch Ljava/io/IOException; {:try_start_22d .. :try_end_2b0} :catch_209

    :try_start_2b0
    const-string v21, "Vpn"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Established by "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " on "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2f9
    .catchall {:try_start_2b0 .. :try_end_2f9} :catchall_77

    move-result-wide v17

    :try_start_2fa
    const-string v21, "Vpn"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "config.routes = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_350

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_350

    const-string v21, "Vpn"

    const-string v22, "override dns for vpn "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/Vpn;->mMvpOn:Z

    move/from16 v21, v0

    if-nez v21, :cond_350

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/ConnectivityService$VpnCallback;->override(Ljava/util/List;Ljava/util/List;)V

    :cond_350
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v4}, Lcom/android/server/connectivity/Vpn;->showNotification(Lcom/android/internal/net/VpnConfig;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_357
    .catchall {:try_start_2fa .. :try_end_357} :catchall_374

    :try_start_357
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    const-string v22, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    if-eqz v19, :cond_2c

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->sendInterfaceStateToKnoxVpn(I)V

    goto/16 :goto_2c

    :catchall_374
    move-exception v21

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v21
    :try_end_379
    .catchall {:try_start_357 .. :try_end_379} :catchall_77
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #getter for: Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->access$1600(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/internal/net/VpnConfig;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public declared-synchronized getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2f

    if-nez v1, :cond_b

    const/4 v0, 0x0

    :cond_9
    :goto_9
    monitor-exit p0

    return-object v0

    :cond_b
    :try_start_b
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #getter for: Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->access$1600(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v1}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;
    :try_end_2e
    .catchall {:try_start_b .. :try_end_2e} :catchall_2f

    goto :goto_9

    :catchall_2f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .registers 2

    const-string v0, "net.tcp.buffersize.unknown"

    return-object v0
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceRemoved(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public declared-synchronized interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_b

    :goto_6
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_b
    move-exception v0

    goto :goto_6
.end method

.method public declared-synchronized prepare(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_8

    move-result v0

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prepare(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 13

    const/4 v4, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    if-nez p3, :cond_cc

    if-eqz p1, :cond_11

    :try_start_7
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_db

    move-result v5

    if-nez v5, :cond_11

    :cond_f
    :goto_f
    monitor-exit p0

    return v3

    :cond_11
    if-nez p2, :cond_19

    :try_start_13
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRevokeNeeded()Z

    move-result v5

    if-nez v5, :cond_f

    :cond_19
    if-eqz p2, :cond_31

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    const-string v5, "[Legacy VPN]"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRevokeNeeded()Z

    move-result v5

    if-nez v5, :cond_33

    :cond_31
    move v3, v4

    goto :goto_f

    :cond_33
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->isClientAllowedForHost(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    :cond_39
    :goto_39
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    if-eqz v3, :cond_5f

    iget-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mMvpOn:Z

    if-nez v3, :cond_de

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    :cond_49
    :goto_49
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4c
    .catchall {:try_start_13 .. :try_end_4c} :catchall_db

    move-result-wide v1

    :try_start_4d
    iget-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mMvpOn:Z

    if-nez v3, :cond_56

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    invoke-virtual {v3}, Lcom/android/server/ConnectivityService$VpnCallback;->restore()V

    :cond_56
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->hideNotification()V
    :try_end_59
    .catchall {:try_start_4d .. :try_end_59} :catchall_10a

    :try_start_59
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    :cond_5f
    iput-boolean p3, p0, Lcom/android/server/connectivity/Vpn;->mMvpOn:Z

    iget-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mMvpOn:Z

    if-nez v3, :cond_78

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    if-eqz v3, :cond_78

    const-string v3, "Vpn"

    const-string v5, "namespace proxy no longer needed"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    invoke-virtual {v3}, Lcom/android/server/connectivity/VpnNamespace;->close()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    :cond_78
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_7a
    .catchall {:try_start_59 .. :try_end_7a} :catchall_db

    if-eqz v3, :cond_10f

    :try_start_7c
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    #getter for: Lcom/android/server/connectivity/Vpn$Connection;->mService:Landroid/os/IBinder;
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn$Connection;->access$300(Lcom/android/server/connectivity/Vpn$Connection;)Landroid/os/IBinder;

    move-result-object v3

    const v5, 0xffffff

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-interface {v3, v5, v6, v7, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_8e
    .catchall {:try_start_7c .. :try_end_8e} :catchall_db
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_8e} :catch_11c

    :goto_8e
    :try_start_8e
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/server/connectivity/Vpn;->sendInterfaceStateToKnoxVpn(I)V

    :cond_9c
    :goto_9c
    const-string v3, "Vpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Switched from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    const-string v5, "prepare"

    invoke-direct {p0, v3, v5}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    move v3, v4

    goto/16 :goto_f

    :cond_cc
    if-eqz p2, :cond_f

    const-string v3, "[Legacy VPN]"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->addMvpClientToList(Ljava/lang/String;)V
    :try_end_d9
    .catchall {:try_start_8e .. :try_end_d9} :catchall_db

    goto/16 :goto_39

    :catchall_db
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_de
    :try_start_de
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;
    :try_end_e0
    .catchall {:try_start_de .. :try_end_e0} :catchall_db

    if-eqz v3, :cond_49

    :try_start_e2
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNamespace:Lcom/android/server/connectivity/VpnNamespace;

    invoke-virtual {v3}, Lcom/android/server/connectivity/VpnNamespace;->removeInterface()V
    :try_end_e7
    .catchall {:try_start_e2 .. :try_end_e7} :catchall_db
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e7} :catch_ec

    :goto_e7
    :try_start_e7
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->mvpInterfaceRemoved()V

    goto/16 :goto_49

    :catch_ec
    move-exception v0

    const-string v3, "Vpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t remove interface:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e7

    :catchall_10a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_10f
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v3, :cond_9c

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v3}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_11b
    .catchall {:try_start_e7 .. :try_end_11b} :catchall_db

    goto :goto_9c

    :catch_11c
    move-exception v3

    goto/16 :goto_8e
.end method

.method public protect(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v2, v3, :cond_1d

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Unauthorized Caller"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1d
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/connectivity/Vpn;->jniProtect(ILjava/lang/String;)V

    return-void
.end method

.method public reconnect()Z
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reconnectDualMMS(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public setEnableNotifications(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    return-void
.end method

.method public setEnableTeardown(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    return-void
.end method

.method public setPolicyDataEnableSecondary(Z)V
    .registers 2

    return-void
.end method

.method public setUserDataEnableSecondary(Z)V
    .registers 2

    return-void
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .registers 26

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    invoke-virtual/range {p2 .. p2}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v2

    if-nez v2, :cond_11

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "KeyStore isn\'t unlocked"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    invoke-static/range {p3 .. p3}, Lcom/android/server/connectivity/Vpn;->findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v12

    const-string v15, ""

    const-string v18, ""

    const-string v8, ""

    const-string v17, ""

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USRPKEY_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USRCERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v19

    if-nez v19, :cond_d0

    const/16 v18, 0x0

    :cond_6b
    :goto_6b
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_95

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CACERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v19

    if-nez v19, :cond_dc

    const/4 v8, 0x0

    :cond_95
    :goto_95
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USRCERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v19

    if-nez v19, :cond_e6

    const/16 v17, 0x0

    :cond_c0
    :goto_c0
    if-eqz v15, :cond_c8

    if-eqz v18, :cond_c8

    if-eqz v8, :cond_c8

    if-nez v17, :cond_f2

    :cond_c8
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot load credentials"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d0
    new-instance v18, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_6b

    :cond_dc
    new-instance v8, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v19

    invoke-direct {v8, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_95

    :cond_e6
    new-instance v17, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_c0

    :cond_f2
    const/16 v16, 0x0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v2, :pswitch_data_3aa

    :goto_fb
    :pswitch_fb
    const/4 v9, 0x0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v2, :pswitch_data_3b8

    :goto_103
    if-eqz v9, :cond_245

    move-object/from16 v20, v9

    :goto_107
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->isVpnConnectionSecure([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_249

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Connecting to VPN network "

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v21, " failed - unsecure"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_148
    return-void

    :pswitch_149
    const/4 v2, 0x6

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    aput-object v12, v16, v2

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x2

    const-string v3, "udppsk"

    aput-object v3, v16, v2

    const/4 v2, 0x3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x5

    const-string v3, "1701"

    aput-object v3, v16, v2

    goto :goto_fb

    :pswitch_171
    const/16 v2, 0x8

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    aput-object v12, v16, v2

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x2

    const-string v3, "udprsa"

    aput-object v3, v16, v2

    const/4 v2, 0x3

    aput-object v15, v16, v2

    const/4 v2, 0x4

    aput-object v18, v16, v2

    const/4 v2, 0x5

    aput-object v8, v16, v2

    const/4 v2, 0x6

    aput-object v17, v16, v2

    const/4 v2, 0x7

    const-string v3, "1701"

    aput-object v3, v16, v2

    goto/16 :goto_fb

    :pswitch_199
    const/16 v2, 0x9

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    aput-object v12, v16, v2

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x2

    const-string v3, "hybridrsa"

    aput-object v3, v16, v2

    const/4 v2, 0x3

    aput-object v8, v16, v2

    const/4 v2, 0x4

    aput-object v17, v16, v2

    const/4 v2, 0x5

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x6

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x7

    const-string v3, ""

    aput-object v3, v16, v2

    const/16 v2, 0x8

    aput-object v11, v16, v2

    goto/16 :goto_fb

    :pswitch_1cd
    const/16 v2, 0x9

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    aput-object v12, v16, v2

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x2

    const-string v3, "xauthpsk"

    aput-object v3, v16, v2

    const/4 v2, 0x3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x5

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x6

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x7

    const-string v3, ""

    aput-object v3, v16, v2

    const/16 v2, 0x8

    aput-object v11, v16, v2

    goto/16 :goto_103

    :pswitch_209
    const/16 v2, 0xb

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    aput-object v12, v16, v2

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x2

    const-string v3, "xauthrsa"

    aput-object v3, v16, v2

    const/4 v2, 0x3

    aput-object v15, v16, v2

    const/4 v2, 0x4

    aput-object v18, v16, v2

    const/4 v2, 0x5

    aput-object v8, v16, v2

    const/4 v2, 0x6

    aput-object v17, v16, v2

    const/4 v2, 0x7

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v3, v16, v2

    const/16 v2, 0x8

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v3, v16, v2

    const/16 v2, 0x9

    const-string v3, ""

    aput-object v3, v16, v2

    const/16 v2, 0xa

    aput-object v11, v16, v2

    goto/16 :goto_103

    :cond_245
    move-object/from16 v20, v16

    goto/16 :goto_107

    :cond_249
    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v2, :pswitch_data_3c0

    :goto_251
    new-instance v10, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v10}, Lcom/android/internal/net/VpnConfig;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v10, Lcom/android/internal/net/VpnConfig;->legacy:Z

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v2, v10, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v12, v10, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iput-object v2, v10, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    iput-object v2, v10, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_287

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v3, " +"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v10, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    :cond_287
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2a1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v3, " +"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v10, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    :cond_2a1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v10, v1, v9, v14}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_148

    :pswitch_2aa
    const/16 v2, 0x14

    new-array v14, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v12, v14, v2

    const/4 v2, 0x1

    const-string v3, "pptp"

    aput-object v3, v14, v2

    const/4 v2, 0x2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v14, v2

    const/4 v2, 0x3

    const-string v3, "1723"

    aput-object v3, v14, v2

    const/4 v2, 0x4

    const-string v3, "name"

    aput-object v3, v14, v2

    const/4 v2, 0x5

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v3, v14, v2

    const/4 v2, 0x6

    const-string v3, "password"

    aput-object v3, v14, v2

    const/4 v2, 0x7

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v3, v14, v2

    const/16 v2, 0x8

    const-string v3, "linkname"

    aput-object v3, v14, v2

    const/16 v2, 0x9

    const-string v3, "vpn"

    aput-object v3, v14, v2

    const/16 v2, 0xa

    const-string v3, "refuse-eap"

    aput-object v3, v14, v2

    const/16 v2, 0xb

    const-string v3, "nodefaultroute"

    aput-object v3, v14, v2

    const/16 v2, 0xc

    const-string v3, "usepeerdns"

    aput-object v3, v14, v2

    const/16 v2, 0xd

    const-string v3, "idle"

    aput-object v3, v14, v2

    const/16 v2, 0xe

    const-string v3, "1800"

    aput-object v3, v14, v2

    const/16 v2, 0xf

    const-string v3, "mtu"

    aput-object v3, v14, v2

    const/16 v2, 0x10

    const-string v3, "1400"

    aput-object v3, v14, v2

    const/16 v2, 0x11

    const-string v3, "mru"

    aput-object v3, v14, v2

    const/16 v2, 0x12

    const-string v3, "1400"

    aput-object v3, v14, v2

    const/16 v3, 0x13

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    if-eqz v2, :cond_32a

    const-string v2, "+mppe"

    :goto_326
    aput-object v2, v14, v3

    goto/16 :goto_251

    :cond_32a
    const-string v2, "nomppe"

    goto :goto_326

    :pswitch_32d
    const/16 v2, 0x14

    new-array v14, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v12, v14, v2

    const/4 v2, 0x1

    const-string v3, "l2tp"

    aput-object v3, v14, v2

    const/4 v2, 0x2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v14, v2

    const/4 v2, 0x3

    const-string v3, "1701"

    aput-object v3, v14, v2

    const/4 v2, 0x4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    aput-object v3, v14, v2

    const/4 v2, 0x5

    const-string v3, "name"

    aput-object v3, v14, v2

    const/4 v2, 0x6

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v3, v14, v2

    const/4 v2, 0x7

    const-string v3, "password"

    aput-object v3, v14, v2

    const/16 v2, 0x8

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v3, v14, v2

    const/16 v2, 0x9

    const-string v3, "linkname"

    aput-object v3, v14, v2

    const/16 v2, 0xa

    const-string v3, "vpn"

    aput-object v3, v14, v2

    const/16 v2, 0xb

    const-string v3, "refuse-eap"

    aput-object v3, v14, v2

    const/16 v2, 0xc

    const-string v3, "nodefaultroute"

    aput-object v3, v14, v2

    const/16 v2, 0xd

    const-string v3, "usepeerdns"

    aput-object v3, v14, v2

    const/16 v2, 0xe

    const-string v3, "idle"

    aput-object v3, v14, v2

    const/16 v2, 0xf

    const-string v3, "1800"

    aput-object v3, v14, v2

    const/16 v2, 0x10

    const-string v3, "mtu"

    aput-object v3, v14, v2

    const/16 v2, 0x11

    const-string v3, "1400"

    aput-object v3, v14, v2

    const/16 v2, 0x12

    const-string v3, "mru"

    aput-object v3, v14, v2

    const/16 v2, 0x13

    const-string v3, "1400"

    aput-object v3, v14, v2

    goto/16 :goto_251

    nop

    :pswitch_data_3aa
    .packed-switch 0x1
        :pswitch_149
        :pswitch_171
        :pswitch_fb
        :pswitch_fb
        :pswitch_199
    .end packed-switch

    :pswitch_data_3b8
    .packed-switch 0x3
        :pswitch_1cd
        :pswitch_209
    .end packed-switch

    :pswitch_data_3c0
    .packed-switch 0x0
        :pswitch_2aa
        :pswitch_32d
        :pswitch_32d
    .end packed-switch
.end method

.method protected startMonitoringInternal()V
    .registers 1

    return-void
.end method

.method public declared-synchronized stopLegacyVpn()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    const-string v1, "LegacyVpnRunner"

    monitor-enter v1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_16

    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    :try_start_15
    throw v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public teardown()Z
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public teardownDualMMS(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
