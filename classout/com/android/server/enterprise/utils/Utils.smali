.class public Lcom/android/server/enterprise/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final BLACKLIST:Ljava/lang/String; = "BLACKLIST"

.field public static final WHITELIST:Ljava/lang/String; = "WHITELIST"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserializeObject([B)Ljava/lang/Object;
    .registers 6

    const/4 v3, 0x0

    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_12} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_16

    :goto_12
    return-object v2

    :catch_13
    move-exception v0

    move-object v2, v3

    goto :goto_12

    :catch_16
    move-exception v0

    move-object v2, v3

    goto :goto_12
.end method

.method private static getNumWildcardSets(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;",
            "Ljava/util/Set",
            "<TT;>;TT;)I"
        }
    .end annotation

    if-eqz p2, :cond_14

    const/4 v0, 0x0

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    add-int/lit8 v0, v0, 0x1

    :cond_b
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    add-int/lit8 v0, v0, 0x1

    :cond_13
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isBlacklisted(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;TT;TT;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "WHITELIST"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    :goto_10
    return v0

    :cond_11
    const-string v0, "BLACKLIST"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "BLACKLIST"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_2d
    const/4 v0, 0x1

    goto :goto_10

    :cond_2f
    move v0, v1

    goto :goto_10
.end method

.method private static isNonWildcardSet(Ljava/util/Set;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;TT;)Z"
        }
    .end annotation

    if-eqz p1, :cond_a

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static makeEffectiveLists(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;TT;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    const-string v4, "WHITELIST"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    :goto_e
    return-object p1

    :cond_f
    const-string v4, "WHITELIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    move-object p1, p0

    goto :goto_e

    :cond_1f
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v4, "BLACKLIST"

    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "WHITELIST"

    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "BLACKLIST"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "WHITELIST"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const-string v4, "BLACKLIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "WHITELIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const-string v4, "BLACKLIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "WHITELIST"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v4, "BLACKLIST"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-static {v4, v5, p2}, Lcom/android/server/enterprise/utils/Utils;->getNumWildcardSets(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_e2

    const-string v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "WHITELIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    const-string v4, "WHITELIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    :goto_b9
    const-string v4, "BLACKLIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "WHITELIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object p1, v0

    goto/16 :goto_e

    :cond_e2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_117

    const-string v4, "BLACKLIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-static {v4, p2}, Lcom/android/server/enterprise/utils/Utils;->isNonWildcardSet(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_114

    move-object v1, v0

    move-object v2, p1

    :goto_f5
    const-string v4, "WHITELIST"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    const-string v4, "WHITELIST"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_b9

    :cond_114
    move-object v1, p1

    move-object v2, v0

    goto :goto_f5

    :cond_117
    const-string v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const-string v4, "WHITELIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto/16 :goto_b9
.end method

.method public static readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    const/4 v8, 0x0

    const-string v0, "readPropertyValue"

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_26

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File Not Found : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v8

    :cond_25
    :goto_25
    return-object v7

    :cond_26
    :try_start_26
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_2b} :catch_6b

    new-instance v2, Ljava/io/BufferedReader;

    const/16 v9, 0x200

    invoke-direct {v2, v3, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    const/4 v5, 0x0

    :cond_33
    :try_start_33
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_aa

    const-string v9, "="

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    const-string v9, "="

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v9, v6

    const/4 v10, 0x2

    if-ne v9, v10, :cond_87

    const/4 v9, 0x1

    aget-object v7, v6, v9

    :goto_55
    const-string v9, "null"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5a
    .catchall {:try_start_33 .. :try_end_5a} :catchall_9c
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_5a} :catch_8a

    move-result v8

    if-eqz v8, :cond_5e

    const/4 v7, 0x0

    :cond_5e
    if-eqz v3, :cond_64

    :try_start_60
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    const/4 v3, 0x0

    :cond_64
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_69} :catch_c3

    const/4 v2, 0x0

    goto :goto_25

    :catch_6b
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File access error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v8

    goto :goto_25

    :cond_87
    :try_start_87
    const-string v7, ""
    :try_end_89
    .catchall {:try_start_87 .. :try_end_89} :catchall_9c
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_89} :catch_8a

    goto :goto_55

    :catch_8a
    move-exception v1

    :try_start_8b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_9c

    if-eqz v3, :cond_94

    :try_start_90
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    const/4 v3, 0x0

    :cond_94
    if-eqz v2, :cond_9a

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_99} :catch_be

    const/4 v2, 0x0

    :cond_9a
    :goto_9a
    move-object v7, v8

    goto :goto_25

    :catchall_9c
    move-exception v8

    if-eqz v3, :cond_a3

    :try_start_9f
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    const/4 v3, 0x0

    :cond_a3
    if-eqz v2, :cond_a9

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a8} :catch_b9

    const/4 v2, 0x0

    :cond_a9
    :goto_a9
    throw v8

    :cond_aa
    if-eqz v3, :cond_b0

    :try_start_ac
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    const/4 v3, 0x0

    :cond_b0
    if-eqz v2, :cond_b6

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b5} :catch_c9

    const/4 v2, 0x0

    :cond_b6
    :goto_b6
    move-object v7, v8

    goto/16 :goto_25

    :catch_b9
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a9

    :catch_be
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9a

    :catch_c3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_25

    :catch_c9
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b6
.end method

.method public static serializeObject(Ljava/lang/Object;)[B
    .registers 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {v3, p0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/io/ObjectOutput;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_13} :catch_15

    move-result-object v1

    :goto_14
    return-object v1

    :catch_15
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_14
.end method

.method public static writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 20

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_4
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_20

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x1a4

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-static/range {v13 .. v16}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_20
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_d7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_108

    :try_start_25
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v13, 0x200

    invoke-direct {v3, v5, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_fd
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2c} :catch_10b

    :try_start_2c
    new-instance v9, Ljava/lang/StringBuffer;

    const-string v13, ""

    invoke-direct {v9, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_34
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8d

    const-string v13, "="

    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_67

    const/4 v7, 0x1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_67
    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v13, "line.separator"

    invoke-static {v13}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_73
    .catchall {:try_start_2c .. :try_end_73} :catchall_100
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_73} :catch_74

    goto :goto_34

    :catch_74
    move-exception v1

    move-object v2, v3

    move-object v4, v5

    :goto_77
    :try_start_77
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_d7

    if-eqz v4, :cond_80

    :try_start_7c
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    const/4 v4, 0x0

    :cond_80
    if-eqz v2, :cond_86

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_85} :catch_f0

    const/4 v2, 0x0

    :cond_86
    :goto_86
    if-eqz v11, :cond_8c

    invoke-virtual {v11}, Ljava/io/PrintStream;->close()V

    :goto_8b
    const/4 v11, 0x0

    :cond_8c
    :goto_8c
    return v10

    :cond_8d
    if-nez v7, :cond_b6

    :try_start_8f
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v13, "line.separator"

    invoke-static {v13}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_b9
    .catchall {:try_start_8f .. :try_end_b9} :catchall_100
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_b9} :catch_74

    const/4 v2, 0x0

    :try_start_ba
    new-instance v12, Ljava/io/PrintStream;

    invoke-direct {v12, v6}, Ljava/io/PrintStream;-><init>(Ljava/io/File;)V
    :try_end_bf
    .catchall {:try_start_ba .. :try_end_bf} :catchall_fd
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_bf} :catch_10b

    :try_start_bf
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_c6
    .catchall {:try_start_bf .. :try_end_c6} :catchall_104
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c6} :catch_10f

    const/4 v10, 0x1

    if-eqz v5, :cond_117

    :try_start_c9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_f5

    const/4 v4, 0x0

    :goto_cd
    if-eqz v2, :cond_d1

    :try_start_cf
    throw v2
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d0} :catch_fb

    const/4 v2, 0x0

    :cond_d1
    :goto_d1
    if-eqz v12, :cond_114

    invoke-virtual {v12}, Ljava/io/PrintStream;->close()V

    goto :goto_8b

    :catchall_d7
    move-exception v13

    :goto_d8
    if-eqz v4, :cond_de

    :try_start_da
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    const/4 v4, 0x0

    :cond_de
    if-eqz v2, :cond_e4

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_e3} :catch_eb

    const/4 v2, 0x0

    :cond_e4
    :goto_e4
    if-eqz v11, :cond_ea

    invoke-virtual {v11}, Ljava/io/PrintStream;->close()V

    const/4 v11, 0x0

    :cond_ea
    throw v13

    :catch_eb
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e4

    :catch_f0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_86

    :catch_f5
    move-exception v1

    move-object v4, v5

    :goto_f7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d1

    :catch_fb
    move-exception v1

    goto :goto_f7

    :catchall_fd
    move-exception v13

    move-object v4, v5

    goto :goto_d8

    :catchall_100
    move-exception v13

    move-object v2, v3

    move-object v4, v5

    goto :goto_d8

    :catchall_104
    move-exception v13

    move-object v4, v5

    move-object v11, v12

    goto :goto_d8

    :catch_108
    move-exception v1

    goto/16 :goto_77

    :catch_10b
    move-exception v1

    move-object v4, v5

    goto/16 :goto_77

    :catch_10f
    move-exception v1

    move-object v4, v5

    move-object v11, v12

    goto/16 :goto_77

    :cond_114
    move-object v11, v12

    goto/16 :goto_8c

    :cond_117
    move-object v4, v5

    goto :goto_cd
.end method
