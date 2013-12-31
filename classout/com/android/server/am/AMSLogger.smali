.class public Lcom/android/server/am/AMSLogger;
.super Ljava/lang/Object;
.source "AMSLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AMSLogger$AMSHandler;,
        Lcom/android/server/am/AMSLogger$AMSFormatter;
    }
.end annotation


# static fields
.field private static AMS_VERBOSE_DEFAULT:I

.field private static AMS_VERBOSE_PROP:Ljava/lang/String;

.field public static LOG_LEVEL_ALL:I

.field public static LOG_LEVEL_DENIALS:I

.field public static LOG_LEVEL_OFF:I

.field private static LOG_MAX_SIZE:I

.field private static LOG_NEW:Ljava/lang/String;

.field private static LOG_OLD:Ljava/lang/String;

.field private static LOG_TAG:Ljava/lang/String;

.field private static final mAMSLogger:Lcom/android/server/am/AMSLogger;

.field private static mAMSTxt:Lcom/android/server/am/AMSLogger$AMSHandler;

.field private static mFormatterTxt:Lcom/android/server/am/AMSLogger$AMSFormatter;

.field private static mLogger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/AMSLogger;->LOG_LEVEL_OFF:I

    const/4 v0, 0x1

    sput v0, Lcom/android/server/am/AMSLogger;->LOG_LEVEL_DENIALS:I

    const/4 v0, 0x2

    sput v0, Lcom/android/server/am/AMSLogger;->LOG_LEVEL_ALL:I

    const-string v0, "AMSLogger"

    sput-object v0, Lcom/android/server/am/AMSLogger;->LOG_TAG:Ljava/lang/String;

    const-string v0, "persist.security.ams.verbose"

    sput-object v0, Lcom/android/server/am/AMSLogger;->AMS_VERBOSE_PROP:Ljava/lang/String;

    sget v0, Lcom/android/server/am/AMSLogger;->LOG_LEVEL_DENIALS:I

    sput v0, Lcom/android/server/am/AMSLogger;->AMS_VERBOSE_DEFAULT:I

    const-string v0, "/data/misc/audit/ams.log"

    sput-object v0, Lcom/android/server/am/AMSLogger;->LOG_NEW:Ljava/lang/String;

    const-string v0, "/data/misc/audit/ams.old"

    sput-object v0, Lcom/android/server/am/AMSLogger;->LOG_OLD:Ljava/lang/String;

    const v0, 0x19000

    sput v0, Lcom/android/server/am/AMSLogger;->LOG_MAX_SIZE:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    new-instance v0, Lcom/android/server/am/AMSLogger;

    invoke-direct {v0}, Lcom/android/server/am/AMSLogger;-><init>()V

    sput-object v0, Lcom/android/server/am/AMSLogger;->mAMSLogger:Lcom/android/server/am/AMSLogger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/am/AMSLogger;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static copyStackTraceToAMSLog(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/io/FileOutputStream;

    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-direct {v13, v0, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 v15, 0x400

    new-array v3, v15, [B

    const/4 v11, 0x0

    const-wide/16 v8, 0x0

    const/4 v14, 0x0

    const-string v12, ""

    const/4 v7, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "| sysTid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v15, 0x400

    cmp-long v15, p3, v15

    if-ltz v15, :cond_4d

    :cond_3f
    :try_start_3f
    invoke-virtual {v10, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_4d

    int-to-long v15, v11

    add-long/2addr v8, v15

    int-to-long v15, v11

    add-long/2addr v15, v8

    cmp-long v15, v15, p3

    if-ltz v15, :cond_3f

    :cond_4d
    cmp-long v15, v8, p3

    if-gez v15, :cond_58

    sub-long v15, p3, v8

    long-to-int v5, v15

    const/4 v15, 0x0

    invoke-virtual {v10, v3, v15, v5}, Ljava/io/FileInputStream;->read([BII)I

    :cond_58
    :goto_58
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_a8

    invoke-virtual {v14, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_65

    const/4 v7, 0x1

    :cond_65
    if-eqz v7, :cond_cc

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_cc

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "----- end "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " -----\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_a8
    sget-object v16, Lcom/android/server/am/AMSLogger;->mAMSLogger:Lcom/android/server/am/AMSLogger;

    monitor-enter v16
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_ab} :catch_f5

    :try_start_ab
    sget-object v15, Lcom/android/server/am/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v17, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-virtual {v15, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    if-eqz v7, :cond_c1

    sget-object v15, Lcom/android/server/am/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v17, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_c1
    monitor-exit v16
    :try_end_c2
    .catchall {:try_start_ab .. :try_end_c2} :catchall_f2

    :goto_c2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    return-void

    :cond_cc
    :try_start_cc
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_ef} :catch_f5

    move-result-object v12

    goto/16 :goto_58

    :catchall_f2
    move-exception v15

    :try_start_f3
    monitor-exit v16
    :try_end_f4
    .catchall {:try_start_f3 .. :try_end_f4} :catchall_f2

    :try_start_f4
    throw v15
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_f5} :catch_f5

    :catch_f5
    move-exception v6

    sget-object v15, Lcom/android/server/am/AMSLogger;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "copyStackTraceToAMSLog Exception"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c2
.end method

.method private static getCurrentLogLevel()I
    .registers 2

    sget-object v0, Lcom/android/server/am/AMSLogger;->AMS_VERBOSE_PROP:Ljava/lang/String;

    sget v1, Lcom/android/server/am/AMSLogger;->AMS_VERBOSE_DEFAULT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getLogger()Lcom/android/server/am/AMSLogger;
    .registers 9

    const/4 v7, 0x0

    const-class v8, Lcom/android/server/am/AMSLogger;

    monitor-enter v8

    const/4 v0, 0x0

    :try_start_5
    sput-object v0, Lcom/android/server/am/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/android/server/am/AMSLogger;->mLogger:Ljava/util/logging/Logger;
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_57

    if-nez v0, :cond_4d

    :try_start_b
    const-string v0, "AMSLogger"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AMSLogger;->mLogger:Ljava/util/logging/Logger;
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_57
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_13} :catch_54

    :try_start_13
    new-instance v0, Lcom/android/server/am/AMSLogger$AMSHandler;

    new-instance v1, Lcom/android/server/am/AMSLogger;

    invoke-direct {v1}, Lcom/android/server/am/AMSLogger;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/server/am/AMSLogger;->LOG_NEW:Ljava/lang/String;

    sget-object v3, Lcom/android/server/am/AMSLogger;->LOG_OLD:Ljava/lang/String;

    sget v4, Lcom/android/server/am/AMSLogger;->LOG_MAX_SIZE:I

    int-to-long v4, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/AMSLogger$AMSHandler;-><init>(Lcom/android/server/am/AMSLogger;Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v0, Lcom/android/server/am/AMSLogger;->mAMSTxt:Lcom/android/server/am/AMSLogger$AMSHandler;
    :try_end_29
    .catchall {:try_start_13 .. :try_end_29} :catchall_57
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_29} :catch_51
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_29} :catch_54

    :try_start_29
    new-instance v0, Lcom/android/server/am/AMSLogger$AMSFormatter;

    new-instance v1, Lcom/android/server/am/AMSLogger;

    invoke-direct {v1}, Lcom/android/server/am/AMSLogger;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/AMSLogger$AMSFormatter;-><init>(Lcom/android/server/am/AMSLogger;Lcom/android/server/am/AMSLogger$1;)V

    sput-object v0, Lcom/android/server/am/AMSLogger;->mFormatterTxt:Lcom/android/server/am/AMSLogger$AMSFormatter;

    sget-object v0, Lcom/android/server/am/AMSLogger;->mAMSTxt:Lcom/android/server/am/AMSLogger$AMSHandler;

    sget-object v1, Lcom/android/server/am/AMSLogger;->mFormatterTxt:Lcom/android/server/am/AMSLogger$AMSFormatter;

    invoke-virtual {v0, v1}, Lcom/android/server/am/AMSLogger$AMSHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    sget-object v0, Lcom/android/server/am/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v1, Lcom/android/server/am/AMSLogger;->mAMSTxt:Lcom/android/server/am/AMSLogger$AMSHandler;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    sget-object v0, Lcom/android/server/am/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V
    :try_end_4d
    .catchall {:try_start_29 .. :try_end_4d} :catchall_57
    .catch Ljava/lang/SecurityException; {:try_start_29 .. :try_end_4d} :catch_54

    :cond_4d
    :try_start_4d
    sget-object v0, Lcom/android/server/am/AMSLogger;->mAMSLogger:Lcom/android/server/am/AMSLogger;
    :try_end_4f
    .catchall {:try_start_4d .. :try_end_4f} :catchall_57

    :goto_4f
    monitor-exit v8

    return-object v0

    :catch_51
    move-exception v6

    move-object v0, v7

    goto :goto_4f

    :catch_54
    move-exception v6

    move-object v0, v7

    goto :goto_4f

    :catchall_57
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method private static getTraceFileSize(Ljava/lang/String;)J
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p0, :cond_1f

    sget-object v2, Lcom/android/server/am/AMSLogger;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " null, stack Trace should be logged in logcat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, -0x1

    :goto_1e
    return-wide v2

    :cond_1f
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    goto :goto_1e

    :cond_2f
    sget-object v2, Lcom/android/server/am/AMSLogger;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trace File:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist. Try to create the file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_4d
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_59

    :goto_50
    invoke-virtual {v1, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v1, v6, v5}, Ljava/io/File;->setWritable(ZZ)Z

    const-wide/16 v2, 0x0

    goto :goto_1e

    :catch_59
    move-exception v0

    sget-object v2, Lcom/android/server/am/AMSLogger;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " could not be created"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50
.end method


# virtual methods
.method public log(ZLandroid/content/pm/ApplicationInfo;ZLandroid/content/pm/ApplicationInfo;ZZLandroid/content/Intent;I)V
    .registers 15

    const/4 v5, 0x1

    invoke-static {}, Lcom/android/server/am/AMSLogger;->getCurrentLogLevel()I

    move-result v0

    sget v3, Lcom/android/server/am/AMSLogger;->LOG_LEVEL_OFF:I

    if-ne v0, v3, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    sget v3, Lcom/android/server/am/AMSLogger;->LOG_LEVEL_DENIALS:I

    if-ne v0, v3, :cond_10

    if-eq p1, v5, :cond_9

    :cond_10
    sget v3, Lcom/android/server/am/AMSLogger;->LOG_LEVEL_ALL:I

    if-eq v0, v3, :cond_16

    if-eq p6, v5, :cond_9

    :cond_16
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    const-string v3, "%d.%m.%Y %H:%M:%S"

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    if-ne p1, v5, :cond_11a

    const-string v1, "Allowed <"

    :goto_2b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%d.%m.%Y %H:%M:%S"

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez p7, :cond_11e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Intent: null> <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "srcInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne p3, v5, :cond_198

    const-string v3, "t:"

    :goto_7d
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Landroid/content/pm/ApplicationInfo;->level:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "destInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne p5, v5, :cond_19c

    const-string v3, "t:"

    :goto_d6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p4, Landroid/content/pm/ApplicationInfo;->level:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_1a0

    sget-object v3, Lcom/android/server/am/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_11a
    const-string v1, "Denied <"

    goto/16 :goto_2b

    :cond_11e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_158

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " action:["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_158
    invoke-virtual {p7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_183

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " component:["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5d

    :cond_198
    const-string v3, "u:"

    goto/16 :goto_7d

    :cond_19c
    const-string v3, "u:"

    goto/16 :goto_d6

    :cond_1a0
    invoke-virtual {p0, p8, v1}, Lcom/android/server/am/AMSLogger;->logStackTrace(ILjava/lang/String;)V

    goto/16 :goto_9
.end method

.method public logStackTrace(ILjava/lang/String;)V
    .registers 13

    const-string v0, "dalvik.vm.stack-trace-file"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/AMSLogger;->getTraceFileSize(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-ltz v0, :cond_68

    new-instance v7, Lcom/android/server/am/AMSLogger$1;

    const/16 v0, 0x8

    invoke-direct {v7, p0, v1, v0, v1}, Lcom/android/server/am/AMSLogger$1;-><init>(Lcom/android/server/am/AMSLogger;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v7}, Landroid/os/FileObserver;->startWatching()V

    :try_start_1b
    monitor-enter v7
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1c} :catch_34

    const/4 v0, 0x3

    :try_start_1d
    invoke-static {p1, v0}, Landroid/os/Process;->sendSignal(II)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V

    monitor-exit v7
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_31

    :goto_26
    invoke-virtual {v7}, Landroid/os/FileObserver;->stopWatching()V

    :try_start_29
    sget-object v2, Lcom/android/server/am/AMSLogger;->LOG_NEW:Ljava/lang/String;

    move v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/AMSLogger;->copyStackTraceToAMSLog(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_30} :catch_4e

    :goto_30
    return-void

    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit v7
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    :try_start_33
    throw v0
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_34} :catch_34

    :catch_34
    move-exception v6

    sget-object v0, Lcom/android/server/am/AMSLogger;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "logStackTrace exception"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :catch_4e
    move-exception v6

    sget-object v0, Lcom/android/server/am/AMSLogger;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyStackTraceToAMSLog exception"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    :cond_68
    sget-object v2, Lcom/android/server/am/AMSLogger;->mAMSLogger:Lcom/android/server/am/AMSLogger;

    monitor-enter v2

    :try_start_6b
    sget-object v0, Lcom/android/server/am/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v5, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_30

    :catchall_74
    move-exception v0

    monitor-exit v2
    :try_end_76
    .catchall {:try_start_6b .. :try_end_76} :catchall_74

    throw v0
.end method
