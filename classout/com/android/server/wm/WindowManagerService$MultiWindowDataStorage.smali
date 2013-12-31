.class Lcom/android/server/wm/WindowManagerService$MultiWindowDataStorage;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiWindowDataStorage"
.end annotation


# static fields
.field public static final SAVE_FNAME_ARRANGE:Ljava/lang/String; = "arrangemode"

.field public static final TAG:Ljava/lang/String; = "MultiWindowDataStorage"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Ljava/io/File;Ljava/lang/String;)[Ljava/lang/String;
    .registers 11

    const/4 v0, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :try_start_6
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_58
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_15} :catch_74

    :goto_15
    :try_start_15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_46

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_71
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1e} :catch_1f

    goto :goto_15

    :catch_1f
    move-exception v2

    move-object v0, v1

    :goto_21
    :try_start_21
    const-string v6, "MultiWindowDataStorage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " file does not exist."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_21 .. :try_end_39} :catchall_58

    if-eqz v0, :cond_3e

    :try_start_3b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_53

    :cond_3e
    :goto_3e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_64

    const/4 v6, 0x0

    :goto_45
    return-object v6

    :cond_46
    if-eqz v1, :cond_4b

    :try_start_48
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_4d

    :cond_4b
    move-object v0, v1

    goto :goto_3e

    :catch_4d
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_3e

    :catch_53
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3e

    :catchall_58
    move-exception v6

    :goto_59
    if-eqz v0, :cond_5e

    :try_start_5b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_5f

    :cond_5e
    :goto_5e
    throw v6

    :catch_5f
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5e

    :cond_64
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    goto :goto_45

    :catchall_71
    move-exception v6

    move-object v0, v1

    goto :goto_59

    :catch_74
    move-exception v2

    goto :goto_21
.end method

.method public static store(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 12

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_3d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_2d

    move-object v0, p2

    :try_start_11
    array-length v5, v0

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v5, :cond_20

    aget-object v6, v0, v4

    invoke-virtual {v2, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_49
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1d} :catch_4c

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_20
    const/4 v7, 0x1

    if-eqz v2, :cond_26

    :try_start_23
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_28

    :cond_26
    :goto_26
    move-object v1, v2

    :goto_27
    return v7

    :catch_28
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26

    :catch_2d
    move-exception v3

    :goto_2e
    :try_start_2e
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_3d

    if-eqz v1, :cond_36

    :try_start_33
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_38

    :cond_36
    :goto_36
    const/4 v7, 0x0

    goto :goto_27

    :catch_38
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36

    :catchall_3d
    move-exception v7

    :goto_3e
    if-eqz v1, :cond_43

    :try_start_40
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_44

    :cond_43
    :goto_43
    throw v7

    :catch_44
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_43

    :catchall_49
    move-exception v7

    move-object v1, v2

    goto :goto_3e

    :catch_4c
    move-exception v3

    move-object v1, v2

    goto :goto_2e
.end method
