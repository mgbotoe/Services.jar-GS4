.class Lcom/android/server/UltrasonicService;
.super Landroid/app/IUltrasonicService$Stub;
.source "UltrasonicService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UltrasonicService"


# instance fields
.field private id_value:Ljava/lang/String;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/app/IUltrasonicService$Stub;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/UltrasonicService;->id_value:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/UltrasonicService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public get_ultra_id()Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/sys/class/ultrasonic/ultrasonic/read"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_d} :catch_20
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_2f

    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/UltrasonicService;->id_value:Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_17} :catch_52
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_17} :catch_4f

    if-eqz v2, :cond_1c

    :try_start_19
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_47

    :cond_1c
    :goto_1c
    move-object v1, v2

    :cond_1d
    :goto_1d
    iget-object v3, p0, Lcom/android/server/UltrasonicService;->id_value:Ljava/lang/String;

    return-object v3

    :catch_20
    move-exception v0

    :goto_21
    :try_start_21
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_3b

    if-eqz v1, :cond_1d

    :try_start_26
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_1d

    :catch_2a
    move-exception v0

    :goto_2b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d

    :catch_2f
    move-exception v0

    :goto_30
    :try_start_30
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3b

    if-eqz v1, :cond_1d

    :try_start_35
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_1d

    :catch_39
    move-exception v0

    goto :goto_2b

    :catchall_3b
    move-exception v3

    :goto_3c
    if-eqz v1, :cond_41

    :try_start_3e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    :cond_41
    :goto_41
    throw v3

    :catch_42
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41

    :catch_47
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1c

    :catchall_4c
    move-exception v3

    move-object v1, v2

    goto :goto_3c

    :catch_4f
    move-exception v0

    move-object v1, v2

    goto :goto_30

    :catch_52
    move-exception v0

    move-object v1, v2

    goto :goto_21
.end method

.method public ultra_disable()V
    .registers 5

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/ultrasonic/ultrasonic/enable"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    if-eqz v1, :cond_16

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_16} :catch_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_1c

    :cond_16
    :goto_16
    return-void

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_16

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16
.end method

.method public ultra_enable()V
    .registers 5

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/ultrasonic/ultrasonic/enable"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    if-eqz v1, :cond_16

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_16} :catch_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_1c

    :cond_16
    :goto_16
    return-void

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_16

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16
.end method
