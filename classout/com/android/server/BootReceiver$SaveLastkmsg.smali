.class Lcom/android/server/BootReceiver$SaveLastkmsg;
.super Ljava/lang/Thread;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BootReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveLastkmsg"
.end annotation


# static fields
.field private static final KERNEL_VERSION:Ljava/lang/String; = "/proc/version"

.field private static final LAST_KMSG:Ljava/lang/String; = "/proc/last_kmsg"

.field private static final LAST_KMSG_SAVE:Ljava/lang/String; = "/data/log/dumpstate_lastkmsg"

.field private static final MAX_LAST_KMSG:I = 0x5


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BootReceiver$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/BootReceiver$SaveLastkmsg;-><init>()V

    return-void
.end method

.method private logLastKmsg()V
    .registers 23

    new-instance v12, Ljava/io/File;

    const-string v19, "/proc/last_kmsg"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v18, Ljava/io/File;

    const-string v19, "/proc/version"

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x800

    move/from16 v0, v19

    new-array v1, v0, [B

    const/4 v4, 0x0

    const/16 v16, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    const-string v19, "BootReceiver"

    const-string v20, "logLastKmsg - Start"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v19

    if-nez v19, :cond_2e

    :goto_2d
    return-void

    :cond_2e
    invoke-virtual {v15}, Landroid/text/format/Time;->setToNow()V

    const-string v19, "%Y%m%d_%H%M%S"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/data/log/dumpstate_lastkmsg_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".log.gz"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    :try_start_5c
    const-string v19, "%Y-%m-%d %H:%M:%S"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v11, "========================================================\n"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "== dumpstate lastkmsg : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v19, "BootReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "logLastKmsg - New filename is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a2
    .catchall {:try_start_5c .. :try_end_a2} :catchall_192
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_a2} :catch_1d7

    :try_start_a2
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a7
    .catchall {:try_start_a2 .. :try_end_a7} :catchall_1c4
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a7} :catch_1da

    :try_start_a7
    new-instance v9, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v9, v7}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_ac
    .catchall {:try_start_a7 .. :try_end_ac} :catchall_1c7
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_ac} :catch_1de

    :try_start_ac
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    const-string v14, "\n[Kernel version]: "

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->isFile()Z

    move-result v19

    if-eqz v19, :cond_12a

    new-instance v17, Ljava/io/FileInputStream;

    invoke-direct/range {v17 .. v18}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_dd
    .catchall {:try_start_ac .. :try_end_dd} :catchall_1cb
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_dd} :catch_174

    :goto_dd
    :try_start_dd
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_1e3

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v1, v0, v10}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_ec
    .catchall {:try_start_dd .. :try_end_ec} :catchall_1d0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_ec} :catch_ed

    goto :goto_dd

    :catch_ed
    move-exception v3

    move-object v8, v9

    move-object v6, v7

    move-object/from16 v16, v17

    move-object v4, v5

    :goto_f3
    :try_start_f3
    const-string v19, "BootReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "logLastKmsg - File copy error"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10d
    .catchall {:try_start_f3 .. :try_end_10d} :catchall_192

    if-eqz v4, :cond_112

    :try_start_10f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_112
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_112} :catch_1b0

    :cond_112
    :goto_112
    if-eqz v16, :cond_117

    :try_start_114
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_117
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_117} :catch_1b3

    :cond_117
    :goto_117
    if-eqz v8, :cond_11c

    :try_start_119
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_11c} :catch_1b6

    :cond_11c
    :goto_11c
    if-eqz v6, :cond_121

    :try_start_11e
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_121} :catch_1b9

    :cond_121
    :goto_121
    const-string v19, "BootReceiver"

    const-string v20, "logLastKmsg - Save Complete"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d

    :cond_12a
    :try_start_12a
    const-string v14, "unknown"

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    :goto_135
    const-string v14, "[Build Fingerprint]: "

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    const-string v19, "ro.build.fingerprint"

    const-string v20, "unknown"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    :goto_166
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_17a

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v1, v0, v10}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_173
    .catchall {:try_start_12a .. :try_end_173} :catchall_1cb
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_173} :catch_174

    goto :goto_166

    :catch_174
    move-exception v3

    move-object v8, v9

    move-object v6, v7

    move-object v4, v5

    goto/16 :goto_f3

    :cond_17a
    if-eqz v5, :cond_17f

    :try_start_17c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_17f
    .catch Ljava/io/IOException; {:try_start_17c .. :try_end_17f} :catch_1bc

    :cond_17f
    :goto_17f
    if-eqz v16, :cond_184

    :try_start_181
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_184
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_184} :catch_1be

    :cond_184
    :goto_184
    if-eqz v9, :cond_189

    :try_start_186
    invoke-virtual {v9}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_189
    .catch Ljava/io/IOException; {:try_start_186 .. :try_end_189} :catch_1c0

    :cond_189
    :goto_189
    if-eqz v7, :cond_18e

    :try_start_18b
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_18e
    .catch Ljava/io/IOException; {:try_start_18b .. :try_end_18e} :catch_1c2

    :cond_18e
    :goto_18e
    move-object v8, v9

    move-object v6, v7

    move-object v4, v5

    goto :goto_121

    :catchall_192
    move-exception v19

    :goto_193
    if-eqz v4, :cond_198

    :try_start_195
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_198
    .catch Ljava/io/IOException; {:try_start_195 .. :try_end_198} :catch_1a8

    :cond_198
    :goto_198
    if-eqz v16, :cond_19d

    :try_start_19a
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_19d
    .catch Ljava/io/IOException; {:try_start_19a .. :try_end_19d} :catch_1aa

    :cond_19d
    :goto_19d
    if-eqz v8, :cond_1a2

    :try_start_19f
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1a2
    .catch Ljava/io/IOException; {:try_start_19f .. :try_end_1a2} :catch_1ac

    :cond_1a2
    :goto_1a2
    if-eqz v6, :cond_1a7

    :try_start_1a4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a7
    .catch Ljava/io/IOException; {:try_start_1a4 .. :try_end_1a7} :catch_1ae

    :cond_1a7
    :goto_1a7
    throw v19

    :catch_1a8
    move-exception v20

    goto :goto_198

    :catch_1aa
    move-exception v20

    goto :goto_19d

    :catch_1ac
    move-exception v20

    goto :goto_1a2

    :catch_1ae
    move-exception v20

    goto :goto_1a7

    :catch_1b0
    move-exception v19

    goto/16 :goto_112

    :catch_1b3
    move-exception v19

    goto/16 :goto_117

    :catch_1b6
    move-exception v19

    goto/16 :goto_11c

    :catch_1b9
    move-exception v19

    goto/16 :goto_121

    :catch_1bc
    move-exception v19

    goto :goto_17f

    :catch_1be
    move-exception v19

    goto :goto_184

    :catch_1c0
    move-exception v19

    goto :goto_189

    :catch_1c2
    move-exception v19

    goto :goto_18e

    :catchall_1c4
    move-exception v19

    move-object v4, v5

    goto :goto_193

    :catchall_1c7
    move-exception v19

    move-object v6, v7

    move-object v4, v5

    goto :goto_193

    :catchall_1cb
    move-exception v19

    move-object v8, v9

    move-object v6, v7

    move-object v4, v5

    goto :goto_193

    :catchall_1d0
    move-exception v19

    move-object v8, v9

    move-object v6, v7

    move-object/from16 v16, v17

    move-object v4, v5

    goto :goto_193

    :catch_1d7
    move-exception v3

    goto/16 :goto_f3

    :catch_1da
    move-exception v3

    move-object v4, v5

    goto/16 :goto_f3

    :catch_1de
    move-exception v3

    move-object v6, v7

    move-object v4, v5

    goto/16 :goto_f3

    :cond_1e3
    move-object/from16 v16, v17

    goto/16 :goto_135
.end method

.method private trimLastKmsg()V
    .registers 13

    new-instance v8, Ljava/io/File;

    const-string v9, "/data/log"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :try_start_10
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1a

    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z

    :cond_19
    :goto_19
    return-void

    :cond_1a
    move-object v0, v6

    array-length v5, v0

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v5, :cond_39

    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_36

    const-string v9, "dumpstate_lastkmsg"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_36

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_39
    new-instance v9, Lcom/android/server/BootReceiver$SaveLastkmsg$1;

    invoke-direct {v9, p0}, Lcom/android/server/BootReceiver$SaveLastkmsg$1;-><init>(Lcom/android/server/BootReceiver$SaveLastkmsg;)V

    invoke-static {v7, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string v9, "BootReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "trimLastKmsg - Num of existing listOfLastkmsg is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x5

    if-lt v9, v10, :cond_19

    const-string v10, "BootReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "trimLastKmsg - Delete file"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_95} :catch_96

    goto :goto_5d

    :catch_96
    move-exception v1

    const-string v9, "BootReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "trimLastKmsg error"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19
.end method


# virtual methods
.method public run()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/BootReceiver$SaveLastkmsg;->trimLastKmsg()V

    invoke-direct {p0}, Lcom/android/server/BootReceiver$SaveLastkmsg;->logLastKmsg()V

    return-void
.end method
