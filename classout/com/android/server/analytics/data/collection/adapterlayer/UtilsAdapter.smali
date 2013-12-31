.class public Lcom/android/server/analytics/data/collection/adapterlayer/UtilsAdapter;
.super Ljava/lang/Object;
.source "UtilsAdapter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 3

    invoke-static {p0, p1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static getIntSystemProperty(Ljava/lang/String;I)I
    .registers 3

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPermissions(Ljava/lang/String;[I)I
    .registers 3

    const/4 v0, -0x1

    return v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 2

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemSecureDirectory()Ljava/io/File;
    .registers 1

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .registers 2

    invoke-static {p0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static intToHexString(IZI)Ljava/lang/String;
    .registers 4

    invoke-static {p0, p1, p2}, Ljava/lang/IntegralToString;->intToHexString(IZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 2

    invoke-static {p0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseNumericAddress(Ljava/lang/String;)[B
    .registers 2

    invoke-static {p0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    return-object v0
.end method

.method public static readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    return-void
.end method

.method public static setPermissions(Ljava/lang/String;III)I
    .registers 5

    invoke-static {p0, p1, p2, p3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public static setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static toHexString([B)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
