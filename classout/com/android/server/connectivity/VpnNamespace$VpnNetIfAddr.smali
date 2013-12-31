.class Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;
.super Ljava/lang/Object;
.source "VpnNamespace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/VpnNamespace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VpnNetIfAddr"
.end annotation


# static fields
.field private static final AF_INET:B = 0x2t

.field private static final AF_INET6:B = 0xat

.field static final TAG:Ljava/lang/String;


# instance fields
.field private final addrFamily:B

.field private final addrFlags:B

.field final addrIfIdx:I

.field private addrLocal:[B

.field private final addrPrefixLen:B

.field private addrRemote:[B

.field private final addrScope:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(BBBBI)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only IPv4 is currently supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-ltz p2, :cond_14

    const/16 v0, 0x20

    if-le p2, v0, :cond_2d

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid prefix length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    iput-byte p1, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrFamily:B

    iput-byte p2, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrPrefixLen:B

    iput-byte p3, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrFlags:B

    iput-byte p4, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrScope:B

    iput p5, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrIfIdx:I

    return-void
.end method

.method private constructor <init>(BB[BI)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;-><init>(BBBBI)V

    iput-object p3, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrLocal:[B

    iput-object p3, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrRemote:[B

    return-void
.end method

.method public static fromString(ILjava/lang/String;)Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x2f

    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    const/4 v3, 0x0

    invoke-virtual {v4, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :try_start_c
    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    instance-of v5, v0, Ljava/net/Inet6Address;

    if-eqz v5, :cond_22

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "IPV6 is not yet supported"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_20} :catch_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_20} :catch_5c

    :catch_20
    move-exception v1

    throw v1

    :cond_22
    :try_start_22
    instance-of v5, v0, Ljava/net/Inet4Address;

    if-eqz v5, :cond_42

    sget-object v5, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is IPV4"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-byte v2, v5

    :cond_51
    new-instance v3, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;

    const/4 v5, 0x2

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    invoke-direct {v3, v5, v2, v6, p0}, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;-><init>(BB[BI)V
    :try_end_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_5b} :catch_20
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_5b} :catch_5c

    return-object v3

    :catch_5c
    move-exception v1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t convert "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " because: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/16 v5, 0x2e

    const/16 v4, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v0, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrFamily:B

    if-ne v0, v6, :cond_10f

    const-string v0, "INET"

    :goto_18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "local "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrLocal:[B

    if-eqz v0, :cond_113

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrLocal:[B

    aget-byte v2, v2, v7

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrLocal:[B

    aget-byte v2, v2, v8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrLocal:[B

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrLocal:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v2, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrPrefixLen:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_76
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "remote "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrRemote:[B

    if-eqz v0, :cond_117

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrRemote:[B

    aget-byte v2, v2, v7

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrRemote:[B

    aget-byte v2, v2, v8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrRemote:[B

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrRemote:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v2, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrPrefixLen:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "flags "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrFlags:B

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scope "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrScope:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ifIdx "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrIfIdx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10f
    const-string v0, "INET6"

    goto/16 :goto_18

    :cond_113
    const-string v0, "none"

    goto/16 :goto_76

    :cond_117
    const-string v0, "none"

    goto :goto_d4
.end method

.method writeObject(Ljava/io/DataOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrLocal:[B

    if-nez v0, :cond_d

    new-instance v0, Ljava/io/IOException;

    const-string v1, "interface has no local address (yet?)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-byte v0, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrFamily:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v0, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrPrefixLen:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v0, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrFlags:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v0, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrScope:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v0, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrIfIdx:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrLocal:[B

    iget-object v1, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrLocal:[B

    array-length v1, v1

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/DataOutputStream;->write([BII)V

    iget-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrRemote:[B

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrRemote:[B

    iget-object v1, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->addrRemote:[B

    array-length v1, v1

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/DataOutputStream;->write([BII)V

    :cond_3a
    return-void
.end method
