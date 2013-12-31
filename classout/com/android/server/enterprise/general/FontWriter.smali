.class public Lcom/android/server/enterprise/general/FontWriter;
.super Ljava/lang/Object;
.source "FontWriter.java"


# static fields
.field public static final CHMOD_COMMAND:Ljava/lang/String; = "chmod 777 "

.field public static final FONT_DIRECTORY:Ljava/lang/String; = "fonts"

.field public static final LOC_DIRECTORY:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts"

.field public static final MONOSPACE_LOC_NAME:Ljava/lang/String; = "monospace.loc"

.field public static final SANS_LOC_NAME:Ljava/lang/String; = "sans.loc"

.field public static final SERIF_LOC_NAME:Ljava/lang/String; = "serif.loc"

.field private static TAG:Ljava/lang/String;


# instance fields
.field bos:Ljava/io/BufferedOutputStream;

.field fOut:Ljava/io/FileOutputStream;

.field osw:Ljava/io/OutputStreamWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "FontWriter"

    sput-object v0, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    iput-object v0, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    return-void
.end method

.method private deleteFolder(Ljava/io/File;Ljava/lang/String;)Z
    .registers 9

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_21

    const/4 v2, 0x0

    :goto_c
    array-length v5, v4

    if-ge v2, v5, :cond_1c

    new-instance v1, Ljava/io/File;

    aget-object v5, v4, v2

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1c
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method


# virtual methods
.method public changeFilePermission(Ljava/lang/String;)V
    .registers 6

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 777 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v2

    if-eqz v2, :cond_2d

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Cannot chmod"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2c} :catch_2c
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_2c} :catch_2e

    :catch_2c
    move-exception v2

    :cond_2d
    :goto_2d
    return-void

    :catch_2e
    move-exception v2

    goto :goto_2d
.end method

.method public copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 19

    move-object/from16 v10, p2

    move-object/from16 v9, p1

    move-object/from16 v8, p3

    const-string v0, ""

    :try_start_8
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    new-instance v12, Ljava/io/BufferedOutputStream;

    iget-object v13, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v12, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    const/16 v12, 0x400

    new-array v1, v12, [B

    const/4 v11, 0x0

    :goto_29
    invoke-virtual {v10, v1}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_79

    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    const/4 v13, 0x0

    invoke-virtual {v12, v1, v13, v11}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_a9
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_35} :catch_36

    goto :goto_29

    :catch_36
    move-exception v4

    :try_start_37
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_49

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_49
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_37 .. :try_end_4c} :catchall_a9

    if-eqz v10, :cond_51

    :try_start_4e
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_dd

    :cond_51
    :goto_51
    :try_start_51
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v12, :cond_5a

    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5a} :catch_e7

    :cond_5a
    :goto_5a
    :try_start_5a
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v12, :cond_63

    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_63} :catch_f1

    :cond_63
    :goto_63
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_78

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_78
    return-void

    :cond_79
    :try_start_79
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->flush()V

    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_88
    .catchall {:try_start_79 .. :try_end_88} :catchall_a9
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_88} :catch_36

    if-eqz v10, :cond_8d

    :try_start_8a
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_f7

    :cond_8d
    :goto_8d
    :try_start_8d
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v12, :cond_96

    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_96} :catch_100

    :cond_96
    :goto_96
    :try_start_96
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v12, :cond_63

    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_9f} :catch_a0

    goto :goto_63

    :catch_a0
    move-exception v3

    sget-object v12, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : bos.close() error"

    :goto_a5
    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63

    :catchall_a9
    move-exception v12

    if-eqz v10, :cond_af

    :try_start_ac
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_c2

    :cond_af
    :goto_af
    :try_start_af
    iget-object v13, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v13, :cond_b8

    iget-object v13, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b8} :catch_cb

    :cond_b8
    :goto_b8
    :try_start_b8
    iget-object v13, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v13, :cond_c1

    iget-object v13, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_c1} :catch_d4

    :cond_c1
    :goto_c1
    throw v12

    :catch_c2
    move-exception v3

    sget-object v13, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v14, "copyFontFile : myInputStream.close() error"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_af

    :catch_cb
    move-exception v3

    sget-object v13, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v14, "copyFontFile : fOut.close() error"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b8

    :catch_d4
    move-exception v3

    sget-object v13, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v14, "copyFontFile : bos.close() error"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c1

    :catch_dd
    move-exception v3

    sget-object v12, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : myInputStream.close() error"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_51

    :catch_e7
    move-exception v3

    sget-object v12, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : fOut.close() error"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5a

    :catch_f1
    move-exception v3

    sget-object v12, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : bos.close() error"

    goto :goto_a5

    :catch_f7
    move-exception v3

    sget-object v12, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : myInputStream.close() error"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    :catch_100
    move-exception v3

    sget-object v12, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : fOut.close() error"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_96
.end method

.method public copyFontFile1(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 22

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object/from16 v13, p2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/general/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    :try_start_1e
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_92
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_28} :catch_fb

    :try_start_28
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_f4
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2d} :catch_fe

    const/16 v15, 0x400

    :try_start_2f
    new-array v1, v15, [B

    const/4 v14, 0x0

    :goto_32
    invoke-virtual {v13, v1}, Ljava/io/InputStream;->read([B)I

    move-result v14

    if-lez v14, :cond_77

    const/4 v15, 0x0

    invoke-virtual {v3, v1, v15, v14}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_f7
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3c} :catch_3d

    goto :goto_32

    :catch_3d
    move-exception v6

    move-object v2, v3

    move-object v7, v8

    :goto_40
    :try_start_40
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v11

    const-wide/16 v15, 0x0

    cmp-long v15, v11, v15

    if-nez v15, :cond_52

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_52
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_40 .. :try_end_55} :catchall_92

    if-eqz v13, :cond_5a

    :try_start_57
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_be

    :cond_5a
    :goto_5a
    if-eqz v7, :cond_5f

    :try_start_5c
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_c7

    :cond_5f
    :goto_5f
    if-eqz v2, :cond_64

    :try_start_61
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_d0

    :cond_64
    :goto_64
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v11

    const-wide/16 v15, 0x0

    cmp-long v15, v11, v15

    if-nez v15, :cond_76

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_76
    return-void

    :cond_77
    :try_start_77
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_80
    .catchall {:try_start_77 .. :try_end_80} :catchall_f7
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_80} :catch_3d

    if-eqz v13, :cond_85

    :try_start_82
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_d9

    :cond_85
    :goto_85
    if-eqz v8, :cond_8a

    :try_start_87
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_e2

    :cond_8a
    :goto_8a
    if-eqz v3, :cond_8f

    :try_start_8c
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_eb

    :cond_8f
    :goto_8f
    move-object v2, v3

    move-object v7, v8

    goto :goto_64

    :catchall_92
    move-exception v15

    :goto_93
    if-eqz v13, :cond_98

    :try_start_95
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_a3

    :cond_98
    :goto_98
    if-eqz v7, :cond_9d

    :try_start_9a
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_ac

    :cond_9d
    :goto_9d
    if-eqz v2, :cond_a2

    :try_start_9f
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_b5

    :cond_a2
    :goto_a2
    throw v15

    :catch_a3
    move-exception v5

    sget-object v16, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v17, "copyFontFile : myInputStream.close() error"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_98

    :catch_ac
    move-exception v5

    sget-object v16, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v17, "copyFontFile : fOut.close() error"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9d

    :catch_b5
    move-exception v5

    sget-object v16, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v17, "copyFontFile : bos.close() error"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a2

    :catch_be
    move-exception v5

    sget-object v15, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v16, "copyFontFile : myInputStream.close() error"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    :catch_c7
    move-exception v5

    sget-object v15, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v16, "copyFontFile : fOut.close() error"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f

    :catch_d0
    move-exception v5

    sget-object v15, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v16, "copyFontFile : bos.close() error"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64

    :catch_d9
    move-exception v5

    sget-object v15, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v16, "copyFontFile : myInputStream.close() error"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_85

    :catch_e2
    move-exception v5

    sget-object v15, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v16, "copyFontFile : fOut.close() error"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8a

    :catch_eb
    move-exception v5

    sget-object v15, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v16, "copyFontFile : bos.close() error"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8f

    :catchall_f4
    move-exception v15

    move-object v7, v8

    goto :goto_93

    :catchall_f7
    move-exception v15

    move-object v2, v3

    move-object v7, v8

    goto :goto_93

    :catch_fb
    move-exception v6

    goto/16 :goto_40

    :catch_fe
    move-exception v6

    move-object v7, v8

    goto/16 :goto_40
.end method

.method public createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 16

    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "createFontDirectory : Start"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    :try_start_8
    const-string v11, "com.android.settings"

    const/4 v12, 0x2

    invoke-virtual {p1, v11, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_e} :catch_33

    move-result-object v9

    :goto_f
    if-eqz v9, :cond_38

    const-string v11, "fonts"

    const/4 v12, 0x1

    invoke-virtual {v9, v11, v12}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "newFontDir : Created"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "newFontDir object created : "

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_41

    const/4 v1, 0x0

    :cond_32
    :goto_32
    return-object v1

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_f

    :cond_38
    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "newFontDir : Not Created"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_32

    :cond_41
    const/4 v2, 0x0

    :goto_42
    array-length v11, v10

    if-ge v2, v11, :cond_4d

    aget-object v11, v10, v2

    invoke-direct {p0, v6, v11}, Lcom/android/server/enterprise/general/FontWriter;->deleteFolder(Ljava/io/File;Ljava/lang/String;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    :cond_4d
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v11

    if-eqz v11, :cond_93

    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "Font directory  : Created"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5a
    :try_start_5a
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "chmod 777 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v5}, Ljava/lang/Process;->exitValue()I

    move-result v11

    if-eqz v11, :cond_32

    new-instance v11, Ljava/io/IOException;

    const-string v12, "Cannot chmod"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_8a} :catch_8a
    .catch Ljava/lang/InterruptedException; {:try_start_5a .. :try_end_8a} :catch_9b

    :catch_8a
    move-exception v4

    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "IOException : "

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    :cond_93
    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "Font directory  : Not Created"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    :catch_9b
    move-exception v3

    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "InterruptedException : "

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32
.end method

.method public writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const-string v0, ""

    :try_start_2
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/data/com.android.settings/app_fonts"

    invoke-direct {v1, v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/OutputStreamWriter;

    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_42
    .catchall {:try_start_2 .. :try_end_42} :catchall_7d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_42} :catch_5d

    :try_start_42
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v4, :cond_4b

    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4b} :catch_ac

    :cond_4b
    :goto_4b
    :try_start_4b
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_54

    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_54} :catch_b5

    :cond_54
    :goto_54
    const-string v4, "persist.sys.flipfontpath"

    invoke-static {v4, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    return-void

    :catch_5d
    move-exception v3

    :try_start_5e
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_7d

    :try_start_61
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v4, :cond_6a

    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_6a} :catch_a3

    :cond_6a
    :goto_6a
    :try_start_6a
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_54

    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_73} :catch_74

    goto :goto_54

    :catch_74
    move-exception v2

    sget-object v4, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "writeLoc : fOut.close() error"

    :goto_79
    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    :catchall_7d
    move-exception v4

    :try_start_7e
    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v5, :cond_87

    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_87} :catch_91

    :cond_87
    :goto_87
    :try_start_87
    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v5, :cond_90

    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_90} :catch_9a

    :cond_90
    :goto_90
    throw v4

    :catch_91
    move-exception v2

    sget-object v5, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v6, "writeLoc : osw.close() error"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_87

    :catch_9a
    move-exception v2

    sget-object v5, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v6, "writeLoc : fOut.close() error"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_90

    :catch_a3
    move-exception v2

    sget-object v4, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "writeLoc : osw.close() error"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6a

    :catch_ac
    move-exception v2

    sget-object v4, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "writeLoc : osw.close() error"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    :catch_b5
    move-exception v2

    sget-object v4, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "writeLoc : fOut.close() error"

    goto :goto_79
.end method
