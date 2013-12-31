.class public Lcom/android/server/power/ShutdownThread$Led;
.super Ljava/lang/Object;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Led"
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Off()V
    .registers 1

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread$Led;->fileWriteInt(I)V

    return-void
.end method

.method private static On()V
    .registers 1

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread$Led;->fileWriteInt(I)V

    return-void
.end method

.method static synthetic access$1000()V
    .registers 0

    invoke-static {}, Lcom/android/server/power/ShutdownThread$Led;->On()V

    return-void
.end method

.method private static fileWriteInt(I)V
    .registers 8

    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/sec/led/led_pattern"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_17

    :cond_f
    const-string v4, "LED"

    const-string v5, "!@LED File is not exist"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :goto_16
    return-void

    :cond_17
    const/4 v2, 0x0

    :try_start_18
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_46
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_2f

    :try_start_1d
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_5f
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_28} :catch_62

    if-eqz v3, :cond_2d

    :try_start_2a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_56

    :cond_2d
    :goto_2d
    move-object v2, v3

    goto :goto_16

    :catch_2f
    move-exception v0

    :goto_30
    :try_start_30
    const-string v4, "LED"

    const-string v5, "!@Exception has raised while file write"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_46

    if-eqz v2, :cond_16

    :try_start_39
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_16

    :catch_3d
    move-exception v0

    const-string v4, "ShutdownThread"

    const-string v5, "led file close error"

    invoke-static {v4, v5, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_16

    :catchall_46
    move-exception v4

    :goto_47
    if-eqz v2, :cond_4c

    :try_start_49
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    :cond_4c
    :goto_4c
    throw v4

    :catch_4d
    move-exception v0

    const-string v5, "ShutdownThread"

    const-string v6, "led file close error"

    invoke-static {v5, v6, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_4c

    :catch_56
    move-exception v0

    const-string v4, "ShutdownThread"

    const-string v5, "led file close error"

    invoke-static {v4, v5, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_2d

    :catchall_5f
    move-exception v4

    move-object v2, v3

    goto :goto_47

    :catch_62
    move-exception v0

    move-object v2, v3

    goto :goto_30
.end method
