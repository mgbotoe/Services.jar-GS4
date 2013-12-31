.class final Lcom/android/server/connectivity/VpnNamespace;
.super Ljava/lang/Object;
.source "VpnNamespace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/VpnNamespace$1;,
        Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;,
        Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;,
        Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;,
        Lcom/android/server/connectivity/VpnNamespace$Cmd;,
        Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final VPNNS_SVR_ADDR:Ljava/lang/String; = "mvpvpn-ns"


# instance fields
.field private final DNS_EXTRA:Ljava/lang/String;

.field private final SDM_EXTRA:Ljava/lang/String;

.field private final VMID_EXTRA:Ljava/lang/String;

.field private nsIfIdx:Ljava/lang/Integer;

.field private nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

.field private nsPid:I

.field private nsVmId:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sys"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/connectivity/VpnNamespace;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.vmware.mvp.vpn.VMID"

    iput-object v0, p0, Lcom/android/server/connectivity/VpnNamespace;->VMID_EXTRA:Ljava/lang/String;

    const-string v0, "com.vmware.mvp.vpn.DNS"

    iput-object v0, p0, Lcom/android/server/connectivity/VpnNamespace;->DNS_EXTRA:Ljava/lang/String;

    const-string v0, "com.vmware.mvp.vpn.SDM"

    iput-object v0, p0, Lcom/android/server/connectivity/VpnNamespace;->SDM_EXTRA:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/VpnNamespace;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/VpnNamespace;->checkIf(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized checkIf(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v1, -0x1

    :try_start_2
    new-instance v0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;

    const-string v2, "mvpvpn-ns"

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;-><init>(Lcom/android/server/connectivity/VpnNamespace;Ljava/lang/String;Lcom/android/server/connectivity/VpnNamespace$1;)V

    sget-object v2, Lcom/android/server/connectivity/VpnNamespace$Cmd;->GETIFIDX:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    invoke-virtual {v0, v2, p1}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->destroy()V

    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace;->nsIfIdx:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_25

    move-result v2

    monitor-exit p0

    return v2

    :catchall_25
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private setAddresses(Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;ILcom/android/internal/net/VpnConfig;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v7, p3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/lang/String;

    if-eqz v7, :cond_c

    iget-object v7, p3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_14

    :cond_c
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "at least one network address must be provided for the tunnel"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_14
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x20

    invoke-direct {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    const/4 v2, 0x0

    iget-object v7, p3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/text/TextUtils$SimpleStringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_29
    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_88

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_35
    invoke-static {p2, v1}, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->fromString(ILjava/lang/String;)Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;

    move-result-object v0

    sget-object v7, Lcom/android/server/connectivity/VpnNamespace$Cmd;->SETIFCONFIG:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    invoke-virtual {p1, v7, v0}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_44} :catch_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_44} :catch_64

    move-result v5

    if-nez v5, :cond_29

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :catch_4a
    move-exception v3

    sget-object v7, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "I/O error: couldn\'t set interface address to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    :catch_64
    move-exception v3

    sget-object v7, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Malformed address string "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :cond_88
    if-gtz v2, :cond_ac

    sget-object v7, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "could set none of the "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/io/IOException;

    const-string v8, "none of the proveded network addresses could be set"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_ac
    return-void
.end method

.method private setRoutes(Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;ILcom/android/internal/net/VpnConfig;)V
    .registers 12

    iget-object v5, p3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    if-eqz v5, :cond_c

    iget-object v5, p3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_14

    :cond_c
    sget-object v5, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    const-string v6, "no routes configured"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-void

    :cond_14
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x20

    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iget-object v5, p3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_34
    invoke-static {p2, v3}, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->fromString(ILjava/lang/String;)Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;

    move-result-object v0

    sget-object v5, Lcom/android/server/connectivity/VpnNamespace$Cmd;->SETROUTE:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    invoke-virtual {p1, v5, v0}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_43} :catch_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_43} :catch_5e

    goto :goto_28

    :catch_44
    move-exception v1

    sget-object v5, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "I/O error: couldn\'t set route to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    :catch_5e
    move-exception v1

    sget-object v5, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Malformed address string "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method


# virtual methods
.method declared-synchronized close()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/VpnNamespace;->nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/connectivity/VpnNamespace;->nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/VpnNamespace;->nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized establish(Ljava/lang/String;Lcom/android/internal/net/VpnConfig;Lcom/android/server/connectivity/Vpn;)Landroid/content/Intent;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_2
    new-instance v0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;

    const-string v2, "mvpvpn-ns"

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;-><init>(Lcom/android/server/connectivity/VpnNamespace;Ljava/lang/String;Lcom/android/server/connectivity/VpnNamespace$1;)V

    sget-object v2, Lcom/android/server/connectivity/VpnNamespace$Cmd;->PUSHIF:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    invoke-virtual {v0, v2, p1}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/connectivity/VpnNamespace$Cmd;->GETIFIDX:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    invoke-virtual {v0, v2, p1}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, p0, Lcom/android/server/connectivity/VpnNamespace;->nsIfIdx:Ljava/lang/Integer;

    sget-object v2, Lcom/android/server/connectivity/VpnNamespace$Cmd;->GETVMID:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, p0, Lcom/android/server/connectivity/VpnNamespace;->nsVmId:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace;->nsIfIdx:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2, p2}, Lcom/android/server/connectivity/VpnNamespace;->setAddresses(Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;ILcom/android/internal/net/VpnConfig;)V

    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace;->nsIfIdx:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2, p2}, Lcom/android/server/connectivity/VpnNamespace;->setRoutes(Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;ILcom/android/internal/net/VpnConfig;)V

    iget-object v2, p2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v2, :cond_db

    iget-object v2, p2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_db

    sget-object v2, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got VMID as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/VpnNamespace;->nsVmId:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/connectivity/VpnNamespace;->mkIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_bb

    const-string v3, "com.vmware.mvp.vpn.DNS"

    iget-object v2, p2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    iget-object v4, p2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v2, :cond_d0

    iget-object v2, p2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_d0

    sget-object v2, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recording "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " search domains"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "com.vmware.mvp.vpn.SDM"

    iget-object v2, p2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    iget-object v4, p2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_bb
    :goto_bb
    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->destroy()V

    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace;->nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

    if-nez v2, :cond_e3

    new-instance v2, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

    invoke-direct {v2, p0, p1, p3}, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;-><init>(Lcom/android/server/connectivity/VpnNamespace;Ljava/lang/String;Lcom/android/server/connectivity/Vpn;)V

    iput-object v2, p0, Lcom/android/server/connectivity/VpnNamespace;->nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace;->nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

    invoke-virtual {v2}, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->start()V
    :try_end_ce
    .catchall {:try_start_2 .. :try_end_ce} :catchall_d8

    :goto_ce
    monitor-exit p0

    return-object v1

    :cond_d0
    :try_start_d0
    sget-object v2, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    const-string v3, "no search domains specified"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catchall {:try_start_d0 .. :try_end_d7} :catchall_d8

    goto :goto_bb

    :catchall_d8
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_db
    :try_start_db
    sget-object v2, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    const-string v3, "no DNS settings ??!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bb

    :cond_e3
    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace;->nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

    invoke-virtual {v2}, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->restart()V
    :try_end_e8
    .catchall {:try_start_db .. :try_end_e8} :catchall_d8

    goto :goto_ce
.end method

.method mkIntent()Landroid/content/Intent;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/connectivity/VpnNamespace;->nsVmId:Ljava/lang/Integer;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/connectivity/VpnNamespace;->nsVmId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_1f

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vmware.mvp.vpn.VPN_CONFIG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.vmware.mvp.vpn.VMID"

    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace;->nsVmId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1f
    return-object v0
.end method

.method declared-synchronized removeInterface()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;

    const-string v1, "mvpvpn-ns"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;-><init>(Lcom/android/server/connectivity/VpnNamespace;Ljava/lang/String;Lcom/android/server/connectivity/VpnNamespace$1;)V

    sget-object v1, Lcom/android/server/connectivity/VpnNamespace$Cmd;->REMOVEIF:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace;->nsIfIdx:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;I)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/VpnNamespace;->nsIfIdx:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was removed from ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->destroy()V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    monitor-exit p0

    return-void

    :catchall_39
    move-exception v1

    monitor-exit p0

    throw v1
.end method
