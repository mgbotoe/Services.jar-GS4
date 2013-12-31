.class public Lcom/android/server/enterprise/utils/IOExceptionHandler;
.super Ljava/lang/Object;
.source "IOExceptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;,
        Lcom/android/server/enterprise/utils/IOExceptionHandler$ExceptionChain;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static process(Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor",
            "<TS;>;>(TT;)V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->open()Ljava/lang/Object;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_30

    move-result-object v2

    :try_start_a
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->process(Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_35
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_22

    :try_start_d
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->flush(Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_55

    :goto_10
    :try_start_10
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->sync(Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_5a

    :goto_13
    :try_start_13
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->close(Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_30

    :goto_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_40

    new-instance v3, Lcom/android/server/enterprise/utils/IOExceptionHandler$ExceptionChain;

    invoke-direct {v3, v1}, Lcom/android/server/enterprise/utils/IOExceptionHandler$ExceptionChain;-><init>(Ljava/util/ArrayList;)V

    throw v3

    :catch_22
    move-exception v0

    :try_start_23
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_35

    :try_start_26
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->flush(Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_4b

    :goto_29
    :try_start_29
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->sync(Ljava/lang/Object;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_50

    :goto_2c
    :try_start_2c
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->close(Ljava/lang/Object;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_16

    :catch_30
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :catchall_35
    move-exception v3

    :try_start_36
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->flush(Ljava/lang/Object;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_41

    :goto_39
    :try_start_39
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->sync(Ljava/lang/Object;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_46

    :goto_3c
    :try_start_3c
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->close(Ljava/lang/Object;)V

    throw v3

    :cond_40
    return-void

    :catch_41
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :catch_46
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    :catch_4b
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :catch_50
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :catch_55
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :catch_5a
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_5e} :catch_30

    goto :goto_13
.end method

.method public static process(Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor",
            "<TS;>;>(TT;Z)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/android/server/enterprise/utils/IOExceptionHandler;->process(Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;)V
    :try_end_3
    .catch Lcom/android/server/enterprise/utils/IOExceptionHandler$ExceptionChain; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    if-eqz p1, :cond_b

    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/IOExceptionHandler$ExceptionChain;->printStackTrace()V

    goto :goto_3

    :cond_b
    throw v0
.end method
