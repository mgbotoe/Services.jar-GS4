.class public Lcom/sec/android/hardware/SecHardwareInterface;
.super Ljava/lang/Object;
.source "SecHardwareInterface.java"


# static fields
.field public static final BROWSER:I = 0x4

.field public static final CALL:I = 0x1

.field public static final CAMERA:I = 0x6

.field private static final DAEMON_SOCKET:Ljava/lang/String; = "pps"

.field private static EPEN_SAVINGMODE_PATH:Ljava/lang/String; = null

.field private static EPEN_TYPE_PATH:Ljava/lang/String; = null

.field public static final HOTSPOT:I = 0x5

.field private static final MAX_CMD_LEN:I = 0x64

.field public static final MDNIE_BROSWER_MODE:I = 0x8

.field public static final MDNIE_CAMERA_MODE:I = 0x4

.field public static final MDNIE_EBOOK_MODE:I = 0x9

.field public static final MDNIE_EMAIL_MODE:I = 0xa

.field public static final MDNIE_GALLERY_MODE:I = 0x6

.field public static final MDNIE_UI_MODE:I = 0x0

.field public static final MDNIE_VIDEO_MODE:I = 0x1

.field public static final MDNIE_VT_MODE:I = 0x7

.field public static final MUSIC:I = 0x3

.field private static final READING_MODE_PATH:Ljava/lang/String; = "sys.dnle.readingmode"

.field private static final TAG:Ljava/lang/String; = "SecHardwareInterface"

.field public static final TORCH_BRIGHTNESS_MAX:I = 0x1

.field public static final TORCH_BRIGHTNESS_MIN:I = 0xe

.field public static final TORCH_BRIGHTNESS_OFF:I = 0x0

.field public static final TORCH_BRIGHTNESS_STANDARD:I = 0x1

.field public static final VIDEO:I = 0x2

.field private static daemonSock:Landroid/net/LocalSocket;

.field private static in:Ljava/io/InputStream;

.field private static isCabcDaemonConnected:Z

.field private static out:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->in:Ljava/io/InputStream;

    sput-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    sput-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->daemonSock:Landroid/net/LocalSocket;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/hardware/SecHardwareInterface;->isCabcDaemonConnected:Z

    const-string v0, "/sys/class/sec/sec_epen/epen_type"

    sput-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_TYPE_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/sec/sec_epen/epen_saving_mode"

    sput-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_SAVINGMODE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CabcDaemonConnect()V
    .registers 4

    const-string v2, "SecHardwareInterface"

    const-string v3, "CabcDaemonConnect ()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    sput-object v2, Lcom/sec/android/hardware/SecHardwareInterface;->daemonSock:Landroid/net/LocalSocket;

    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v2, "pps"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    sget-object v2, Lcom/sec/android/hardware/SecHardwareInterface;->daemonSock:Landroid/net/LocalSocket;

    invoke-virtual {v2, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    sget-object v2, Lcom/sec/android/hardware/SecHardwareInterface;->daemonSock:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    sput-object v2, Lcom/sec/android/hardware/SecHardwareInterface;->in:Ljava/io/InputStream;

    sget-object v2, Lcom/sec/android/hardware/SecHardwareInterface;->daemonSock:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    sput-object v2, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    sget-object v2, Lcom/sec/android/hardware/SecHardwareInterface;->in:Ljava/io/InputStream;

    if-eqz v2, :cond_38

    sget-object v2, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    if-eqz v2, :cond_38

    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/hardware/SecHardwareInterface;->isCabcDaemonConnected:Z

    :goto_37
    return-void

    :cond_38
    const-string v2, "SecHardwareInterface"

    const-string v3, "CabcDaemonConnect () - error getting streams"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_3f} :catch_40

    goto :goto_37

    :catch_40
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_37
.end method

.method private static CablDaemonControl(Ljava/lang/String;)V
    .registers 9

    const/4 v7, 0x0

    sget-object v5, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    if-eqz v5, :cond_6f

    sget-object v5, Lcom/sec/android/hardware/SecHardwareInterface;->in:Ljava/io/InputStream;

    if-eqz v5, :cond_6f

    :try_start_9
    const-string v5, "SecHardwareInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CablDaemonControl ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sget-object v5, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    sget-object v5, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    const/16 v5, 0x64

    new-array v2, v5, [B

    sget-object v5, Lcom/sec/android/hardware/SecHardwareInterface;->in:Ljava/io/InputStream;

    const/4 v6, 0x0

    array-length v7, v2

    invoke-virtual {v5, v2, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    new-instance v3, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5, v1}, Ljava/lang/String;-><init>([BII)V

    const-string v5, "SecHardwareInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CablDaemonControl ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): response = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_69} :catch_6a

    :goto_69
    return-void

    :catch_6a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_69

    :cond_6f
    const-string v5, "SecHardwareInterface"

    const-string v6, "CablDaemonControl: streams null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v7, Lcom/sec/android/hardware/SecHardwareInterface;->isCabcDaemonConnected:Z

    goto :goto_69
.end method

.method private static IsCabcDaemonConnected()Z
    .registers 3

    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsCabcDaemonConnected() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/hardware/SecHardwareInterface;->isCabcDaemonConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/sec/android/hardware/SecHardwareInterface;->isCabcDaemonConnected:Z

    return v0
.end method

.method private static _setmDNIeUIMode(I)Z
    .registers 4

    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setmDNIeUIMode ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/sys/class/mdnie/mdnie/scenario"

    invoke-static {v0, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static enableFastGloveMode(Z)Z
    .registers 6

    const-string v2, "SecHardwareInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableFastGloveMode ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eqz p0, :cond_36

    const-string v2, "SecHardwareInterface"

    const-string v3, "enableFastGloveMode (glove_mode,2)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_28
    const-string v2, "/sys/class/sec/tsp/cmd"

    const-string v3, "fast_glove_mode,1"

    invoke-static {v2, v3}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_2f} :catch_31

    move-result v1

    :goto_30
    return v1

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_30

    :cond_36
    const-string v2, "SecHardwareInterface"

    const-string v3, "enableFastGloveMode (glove_mode,1)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3d
    const-string v2, "/sys/class/sec/tsp/cmd"

    const-string v3, "fast_glove_mode,0"

    invoke-static {v2, v3}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_44
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_44} :catch_46

    move-result v1

    goto :goto_30

    :catch_46
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_30
.end method

.method public static enableGloveMode(Z)Z
    .registers 7

    const-string v3, "SecHardwareInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableGloveMode ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const/4 v0, 0x1

    if-nez p0, :cond_3f

    :try_start_22
    const-string v3, "/sys/class/sec/sec_touchkey/glove_mode"

    const-string v4, "0"

    invoke-static {v3, v4}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_29} :catch_3a

    move-result v2

    :goto_2a
    :try_start_2a
    const-string v4, "/sys/class/sec/tsp/cmd"

    if-eqz p0, :cond_41

    const-string v3, "glove_mode,1"

    :goto_30
    invoke-static {v4, v3}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_33} :catch_44

    move-result v0

    :goto_34
    if-eqz v2, :cond_49

    if-eqz v0, :cond_49

    const/4 v2, 0x1

    :goto_39
    return v2

    :catch_3a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2a

    :cond_3f
    const/4 v2, 0x1

    goto :goto_2a

    :cond_41
    :try_start_41
    const-string v3, "glove_mode,0"
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_43} :catch_44

    goto :goto_30

    :catch_44
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_34

    :cond_49
    const/4 v2, 0x0

    goto :goto_39
.end method

.method public static enableHandgripEvent(Z)Z
    .registers 4

    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableHandgripEvent ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static enableHoverEvent(Z)Z
    .registers 5

    const-string v1, "SecHardwareInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableHoverEvent ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1e
    const-string v2, "/sys/class/sec/tsp/cmd"

    if-eqz p0, :cond_29

    const-string v1, "hover_enable,1"

    :goto_24
    invoke-static {v2, v1}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :goto_28
    return v1

    :cond_29
    const-string v1, "hover_enable,0"
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_2b} :catch_2c

    goto :goto_24

    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_28
.end method

.method public static enableISPFirmwareUpdate(Z)Z
    .registers 4

    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableISPFirmwareUpdate to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/sys/class/camera/rear/rear_checkApp"

    if-eqz p0, :cond_22

    const/4 v0, 0x1

    :goto_1d
    invoke-static {v1, v0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static getEPenType()I
    .registers 11

    const/4 v7, -0x1

    const/4 v0, 0x0

    const/4 v6, -0x1

    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/FileInputStream;

    sget-object v10, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_TYPE_PATH:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_53
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_14} :catch_24
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_14} :catch_44

    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_68
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_1b} :catch_2f
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1b} :catch_6b

    move-result v6

    if-eqz v1, :cond_66

    :try_start_1e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_62

    :goto_21
    const/4 v0, 0x0

    :cond_22
    :goto_22
    move v7, v6

    :cond_23
    :goto_23
    return v7

    :catch_24
    move-exception v2

    :try_start_25
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_53
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_44

    if-eqz v0, :cond_23

    :try_start_2a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_60

    :goto_2d
    const/4 v0, 0x0

    goto :goto_23

    :catch_2f
    move-exception v5

    :try_start_30
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V

    if-eqz v1, :cond_6e

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_68
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_38} :catch_6b

    const/4 v0, 0x0

    :goto_39
    if-eqz v0, :cond_23

    :try_start_3b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_2d

    :catch_3f
    move-exception v4

    :goto_40
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23

    :catch_44
    move-exception v3

    :goto_45
    :try_start_45
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_53

    if-eqz v0, :cond_22

    :try_start_4a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_21

    :catch_4e
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22

    :catchall_53
    move-exception v7

    :goto_54
    if-eqz v0, :cond_5a

    :try_start_56
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5b

    const/4 v0, 0x0

    :cond_5a
    :goto_5a
    throw v7

    :catch_5b
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5a

    :catch_60
    move-exception v4

    goto :goto_40

    :catch_62
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_66
    move-object v0, v1

    goto :goto_22

    :catchall_68
    move-exception v7

    move-object v0, v1

    goto :goto_54

    :catch_6b
    move-exception v3

    move-object v0, v1

    goto :goto_45

    :cond_6e
    move-object v0, v1

    goto :goto_39
.end method

.method private static isReadingMode()Z
    .registers 2

    const-string v1, "sys.dnle.readingmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public static setAmoledACL(Z)Z
    .registers 4

    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmoledACL ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/sys/class/lcd/panel/power_reduce"

    if-eqz p0, :cond_28

    const/4 v0, 0x1

    :goto_23
    invoke-static {v1, v0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public static setAmoledVideoGamma(Z)Z
    .registers 4

    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmoledACL ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static setBatteryADC(Ljava/lang/String;Z)V
    .registers 11

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/sys/class/power_supply/battery/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "SecHardwareInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBatteryADC path = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p1, :cond_5e

    const-string v6, "true"

    :goto_2f
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/16 v6, 0x64

    :try_start_43
    new-array v0, v6, [B
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_45} :catch_66

    :try_start_45
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_4f} :catch_61
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4f} :catch_66

    if-eqz p1, :cond_73

    const/4 v6, 0x0

    const/16 v7, 0x31

    :try_start_54
    aput-byte v7, v0, v6

    :goto_56
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_5c} :catch_79

    move-object v3, v4

    :goto_5d
    return-void

    :cond_5e
    const-string v6, "false"

    goto :goto_2f

    :catch_61
    move-exception v1

    :try_start_62
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_5d

    :catch_66
    move-exception v1

    :goto_67
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :try_start_6a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_5d

    :catch_6e
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5d

    :cond_73
    const/4 v6, 0x0

    const/16 v7, 0x30

    :try_start_76
    aput-byte v7, v0, v6
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_78} :catch_79

    goto :goto_56

    :catch_79
    move-exception v1

    move-object v3, v4

    goto :goto_67
.end method

.method public static setBatteryUse(IZ)V
    .registers 4

    packed-switch p0, :pswitch_data_2e

    :goto_3
    return-void

    :pswitch_4
    :try_start_4
    const-string v1, "call"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_3

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :pswitch_f
    :try_start_f
    const-string v1, "video"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    goto :goto_3

    :pswitch_15
    const-string v1, "music"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    goto :goto_3

    :pswitch_1b
    const-string v1, "browser"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    goto :goto_3

    :pswitch_21
    const-string v1, "hotspot"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    goto :goto_3

    :pswitch_27
    const-string v1, "camera"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2c} :catch_a

    goto :goto_3

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_4
        :pswitch_f
        :pswitch_15
        :pswitch_1b
        :pswitch_21
        :pswitch_27
    .end packed-switch
.end method

.method public static setEPenSavingmode(I)Z
    .registers 4

    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEPenSavingmode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_SAVINGMODE_PATH:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setEPenType(I)Z
    .registers 4

    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEPentype to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_TYPE_PATH:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setEpenHandType(I)V
    .registers 9

    const-string v4, "/sys/class/sec/sec_epen/epen_hand"

    const/4 v2, 0x0

    const-string v5, "SecHardwareInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setHandType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1b
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_25} :catch_31
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_25} :catch_36

    if-nez p0, :cond_43

    const/16 v5, 0x30

    :try_start_29
    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write(I)V

    :cond_2c
    :goto_2c
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2f} :catch_4c

    move-object v2, v3

    :goto_30
    return-void

    :catch_31
    move-exception v0

    :try_start_32
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_30

    :catch_36
    move-exception v0

    :goto_37
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_30

    :catch_3e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30

    :cond_43
    const/4 v5, 0x1

    if-ne p0, v5, :cond_2c

    const/16 v5, 0x31

    :try_start_48
    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write(I)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_2c

    :catch_4c
    move-exception v0

    move-object v2, v3

    goto :goto_37
.end method

.method public static setMaxCPUFreq(Ljava/lang/String;)V
    .registers 9

    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    const/4 v2, 0x0

    const-string v5, "SecHardwareInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMaxCPUFreq: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1b
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_25} :catch_31
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_25} :catch_36

    :try_start_25
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2f} :catch_43

    move-object v2, v3

    :goto_30
    return-void

    :catch_31
    move-exception v0

    :try_start_32
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_30

    :catch_36
    move-exception v0

    :goto_37
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_30

    :catch_3e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30

    :catch_43
    move-exception v0

    move-object v2, v3

    goto :goto_37
.end method

.method public static setPlayVideoSpeed(Z)Z
    .registers 4

    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayVideoSpeed ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static setPowerSaveFPS(Z)V
    .registers 4

    const-string v1, "SecHardwareInterface"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPowerSaveFPS ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p0, :cond_2c

    const-string v0, "true"

    :goto_11
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "pwr.powersave_fps"

    if-eqz p0, :cond_2f

    const-string v0, "1"

    :goto_28
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2c
    const-string v0, "false"

    goto :goto_11

    :cond_2f
    const-string v0, "0"

    goto :goto_28
.end method

.method private static setReadingMode(Z)V
    .registers 3

    if-eqz p0, :cond_a

    const-string v0, "sys.dnle.readingmode"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    const-string v0, "sys.dnle.readingmode"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static setTconUIMode(I)Z
    .registers 4

    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTconUIMode ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/sys/class/tcon/tcon/mode"

    invoke-static {v0, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setTorchLight(I)V
    .registers 11

    const-string v7, "SecHardwareInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setTorchLight (level = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "GT-N7000"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_31

    const-string v7, "GT-I9220"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_78

    :cond_31
    const-string v7, "SecHardwareInterface"

    const-string v8, "Torch path is sys/class/leds/leds-sec/brightness"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "sys/class/leds/leds-sec/brightness"

    :goto_3a
    :try_start_3a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_47

    const-string v6, "sys/class/camera/rear/rear_flash"

    :cond_47
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_3a .. :try_end_4c} :catchall_dd
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_4c} :catch_f3
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_4c} :catch_f1

    if-lez p0, :cond_a4

    const/16 v7, 0xf

    if-ge p0, v7, :cond_a4

    :try_start_52
    const-string v7, "SecHardwareInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "torch on level = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_52 .. :try_end_71} :catchall_ee
    .catch Ljava/io/FileNotFoundException; {:try_start_52 .. :try_end_71} :catch_b3
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_71} :catch_d0

    :goto_71
    if-eqz v3, :cond_76

    :try_start_73
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_e9

    :cond_76
    :goto_76
    move-object v2, v3

    :cond_77
    :goto_77
    return-void

    :cond_78
    const-string v7, "SHV-E160S"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_90

    const-string v7, "SHV-E160K"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_90

    const-string v7, "SHV-E160L"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9a

    :cond_90
    const-string v7, "SecHardwareInterface"

    const-string v8, "Torch path is /sys/class/ledflash/sec_ledflash/torch"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "/sys/class/ledflash/sec_ledflash/torch"

    goto :goto_3a

    :cond_9a
    const-string v7, "SecHardwareInterface"

    const-string v8, "Torch path is sys/class/camera/flash/rear_flash"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "sys/class/camera/flash/rear_flash"

    goto :goto_3a

    :cond_a4
    if-nez p0, :cond_c3

    :try_start_a6
    const-string v7, "SecHardwareInterface"

    const-string v8, "torch off"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "0"

    invoke-virtual {v3, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_b2
    .catchall {:try_start_a6 .. :try_end_b2} :catchall_ee
    .catch Ljava/io/FileNotFoundException; {:try_start_a6 .. :try_end_b2} :catch_b3
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_b2} :catch_d0

    goto :goto_71

    :catch_b3
    move-exception v0

    move-object v2, v3

    :goto_b5
    :try_start_b5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_dd

    if-eqz v2, :cond_77

    :try_start_ba
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_be

    goto :goto_77

    :catch_be
    move-exception v0

    :goto_bf
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_77

    :cond_c3
    :try_start_c3
    const-string v7, "SecHardwareInterface"

    const-string v8, "This brightness level does not support. the torch off is set"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "0"

    invoke-virtual {v3, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_cf
    .catchall {:try_start_c3 .. :try_end_cf} :catchall_ee
    .catch Ljava/io/FileNotFoundException; {:try_start_c3 .. :try_end_cf} :catch_b3
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_cf} :catch_d0

    goto :goto_71

    :catch_d0
    move-exception v0

    move-object v2, v3

    :goto_d2
    :try_start_d2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_dd

    if-eqz v2, :cond_77

    :try_start_d7
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_da} :catch_db

    goto :goto_77

    :catch_db
    move-exception v0

    goto :goto_bf

    :catchall_dd
    move-exception v7

    :goto_de
    if-eqz v2, :cond_e3

    :try_start_e0
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e3} :catch_e4

    :cond_e3
    :goto_e3
    throw v7

    :catch_e4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e3

    :catch_e9
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_76

    :catchall_ee
    move-exception v7

    move-object v2, v3

    goto :goto_de

    :catch_f1
    move-exception v0

    goto :goto_d2

    :catch_f3
    move-exception v0

    goto :goto_b5
.end method

.method public static setTorchLight(Z)V
    .registers 2

    if-eqz p0, :cond_8

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    :goto_7
    return-void

    :cond_8
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    goto :goto_7
.end method

.method public static setTouchJitterFilter(Z)Z
    .registers 4

    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTouchJitterFilter ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static setmDNIeColorBlind(Z[I)Z
    .registers 5

    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setmDNIeColorBlind ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p0, :cond_28

    const/4 v0, 0x2

    :goto_23
    invoke-static {v1, v0, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite_CB(Ljava/lang/String;I[I)Z

    move-result v0

    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public static setmDNIeNegative(Z)Z
    .registers 4

    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setmDNIeNegative ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p0, :cond_28

    const/4 v0, 0x1

    :goto_23
    invoke-static {v1, v0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public static setmDNIeOutDoor(Z)Z
    .registers 4

    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setmDNIeOutDoor ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/sys/class/mdnie/mdnie/outdoor"

    if-eqz p0, :cond_28

    const/4 v0, 0x1

    :goto_23
    invoke-static {v1, v0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public static setmDNIeReadingMode(I)Z
    .registers 2

    if-nez p0, :cond_b

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setReadingMode(Z)V

    :goto_6
    invoke-static {p0}, Lcom/sec/android/hardware/SecHardwareInterface;->_setmDNIeUIMode(I)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setReadingMode(Z)V

    goto :goto_6
.end method

.method public static setmDNIeUIMode(I)Z
    .registers 2

    invoke-static {}, Lcom/sec/android/hardware/SecHardwareInterface;->isReadingMode()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-static {p0}, Lcom/sec/android/hardware/SecHardwareInterface;->_setmDNIeUIMode(I)Z

    move-result v0

    goto :goto_7
.end method

.method public static setmDNIeUserMode(I)Z
    .registers 4

    const-string v0, "SecHardwareInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setmDNIeUserMode ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/sys/class/mdnie/mdnie/mode"

    invoke-static {v0, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static sysfsWrite(Ljava/lang/String;I)Z
    .registers 8

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_1d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_22

    :try_start_c
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1a} :catch_2f

    const/4 v4, 0x1

    move-object v2, v3

    :goto_1c
    return v4

    :catch_1d
    move-exception v0

    :try_start_1e
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_1c

    :catch_22
    move-exception v0

    :goto_23
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :try_start_26
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_1c

    :catch_2a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c

    :catch_2f
    move-exception v0

    move-object v2, v3

    goto :goto_23
.end method

.method private static sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_19
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_1e

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_2b

    const/4 v4, 0x1

    move-object v2, v3

    :goto_18
    return v4

    :catch_19
    move-exception v0

    :try_start_1a
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_18

    :catch_1e
    move-exception v0

    :goto_1f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :try_start_22
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_18

    :catch_26
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    :catch_2b
    move-exception v0

    move-object v2, v3

    goto :goto_1f
.end method

.method private static sysfsWrite_CB(Ljava/lang/String;I[I)Z
    .registers 12

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p2, v6

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p2, v5

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x4

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x6

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x7

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x8

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_ad
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b7
    .catch Ljava/io/FileNotFoundException; {:try_start_ad .. :try_end_b7} :catch_c3
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b7} :catch_c9

    :try_start_b7
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_c1} :catch_d7

    move-object v3, v4

    :goto_c2
    return v5

    :catch_c3
    move-exception v0

    :try_start_c4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_c9

    move v5, v6

    goto :goto_c2

    :catch_c9
    move-exception v0

    :goto_ca
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :try_start_cd
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d0} :catch_d2

    :goto_d0
    move v5, v6

    goto :goto_c2

    :catch_d2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d0

    :catch_d7
    move-exception v0

    move-object v3, v4

    goto :goto_ca
.end method
