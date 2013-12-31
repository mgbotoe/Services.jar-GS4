.class public Lcom/android/server/analytics/data/collection/utils/Utils;
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

    invoke-static {v4, v5, p2}, Lcom/android/server/analytics/data/collection/utils/Utils;->getNumWildcardSets(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Object;)I

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

    invoke-static {v4, p2}, Lcom/android/server/analytics/data/collection/utils/Utils;->isNonWildcardSet(Ljava/util/Set;Ljava/lang/Object;)Z

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
    .registers 12

    const/4 v7, 0x0

    const-string v0, "readPropertyValue"

    :try_start_3
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_8} :catch_48

    new-instance v2, Ljava/io/BufferedReader;

    const/16 v8, 0x200

    invoke-direct {v2, v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    const/4 v4, 0x0

    :cond_10
    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6c

    const-string v8, "="

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    const-string v8, "="

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v8, v5

    const/4 v9, 0x2

    if-ne v8, v9, :cond_64

    const/4 v8, 0x1

    aget-object v6, v5, v8

    :goto_32
    const-string v8, "null"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_10 .. :try_end_37} :catchall_96
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_37} :catch_7f

    move-result v7

    if-eqz v7, :cond_3b

    const/4 v6, 0x0

    :cond_3b
    if-eqz v3, :cond_41

    :try_start_3d
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    const/4 v3, 0x0

    :cond_41
    if-eqz v2, :cond_47

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_46} :catch_67

    const/4 v2, 0x0

    :cond_47
    :goto_47
    return-object v6

    :catch_48
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File access error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    goto :goto_47

    :cond_64
    :try_start_64
    const-string v6, ""
    :try_end_66
    .catchall {:try_start_64 .. :try_end_66} :catchall_96
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_66} :catch_7f

    goto :goto_32

    :catch_67
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_47

    :cond_6c
    if-eqz v3, :cond_72

    :try_start_6e
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    const/4 v3, 0x0

    :cond_72
    if-eqz v2, :cond_78

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_77} :catch_7a

    const/4 v2, 0x0

    :cond_78
    :goto_78
    move-object v6, v7

    goto :goto_47

    :catch_7a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_78

    :catch_7f
    move-exception v1

    :try_start_80
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_96

    if-eqz v3, :cond_89

    :try_start_85
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    const/4 v3, 0x0

    :cond_89
    if-eqz v2, :cond_8f

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_8e} :catch_91

    const/4 v2, 0x0

    :cond_8f
    :goto_8f
    move-object v6, v7

    goto :goto_47

    :catch_91
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8f

    :catchall_96
    move-exception v7

    if-eqz v3, :cond_9d

    :try_start_99
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    const/4 v3, 0x0

    :cond_9d
    if-eqz v2, :cond_a3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_a2} :catch_a4

    const/4 v2, 0x0

    :cond_a3
    :goto_a3
    throw v7

    :catch_a4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a3
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

    invoke-static/range {v13 .. v16}, Lcom/android/server/analytics/data/collection/adapterlayer/UtilsAdapter;->setPermissions(Ljava/lang/String;III)I

    :cond_20
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_e3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_107

    :try_start_25
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v13, 0x200

    invoke-direct {v3, v5, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_fc
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2c} :catch_10a

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
    .catchall {:try_start_2c .. :try_end_73} :catchall_ff
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
    .catchall {:try_start_77 .. :try_end_7a} :catchall_e3

    if-eqz v4, :cond_80

    :try_start_7c
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    const/4 v4, 0x0

    :cond_80
    if-eqz v2, :cond_86

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_85} :catch_de

    const/4 v2, 0x0

    :cond_86
    :goto_86
    if-eqz v11, :cond_8c

    invoke-virtual {v11}, Ljava/io/PrintStream;->close()V

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
    .catchall {:try_start_8f .. :try_end_b9} :catchall_ff
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_b9} :catch_74

    const/4 v2, 0x0

    :try_start_ba
    new-instance v12, Ljava/io/PrintStream;

    invoke-direct {v12, v6}, Ljava/io/PrintStream;-><init>(Ljava/io/File;)V
    :try_end_bf
    .catchall {:try_start_ba .. :try_end_bf} :catchall_fc
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_bf} :catch_10a

    :try_start_bf
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_c6
    .catchall {:try_start_bf .. :try_end_c6} :catchall_103
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c6} :catch_10e

    const/4 v10, 0x1

    if-eqz v5, :cond_118

    :try_start_c9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_d8

    const/4 v4, 0x0

    :goto_cd
    if-eqz v2, :cond_d1

    :try_start_cf
    throw v2
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d0} :catch_113

    const/4 v2, 0x0

    :cond_d1
    :goto_d1
    if-eqz v12, :cond_115

    invoke-virtual {v12}, Ljava/io/PrintStream;->close()V

    const/4 v11, 0x0

    goto :goto_8c

    :catch_d8
    move-exception v1

    move-object v4, v5

    :goto_da
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d1

    :catch_de
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_86

    :catchall_e3
    move-exception v13

    :goto_e4
    if-eqz v4, :cond_ea

    :try_start_e6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    const/4 v4, 0x0

    :cond_ea
    if-eqz v2, :cond_f0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_ef} :catch_f7

    const/4 v2, 0x0

    :cond_f0
    :goto_f0
    if-eqz v11, :cond_f6

    invoke-virtual {v11}, Ljava/io/PrintStream;->close()V

    const/4 v11, 0x0

    :cond_f6
    throw v13

    :catch_f7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f0

    :catchall_fc
    move-exception v13

    move-object v4, v5

    goto :goto_e4

    :catchall_ff
    move-exception v13

    move-object v2, v3

    move-object v4, v5

    goto :goto_e4

    :catchall_103
    move-exception v13

    move-object v4, v5

    move-object v11, v12

    goto :goto_e4

    :catch_107
    move-exception v1

    goto/16 :goto_77

    :catch_10a
    move-exception v1

    move-object v4, v5

    goto/16 :goto_77

    :catch_10e
    move-exception v1

    move-object v4, v5

    move-object v11, v12

    goto/16 :goto_77

    :catch_113
    move-exception v1

    goto :goto_da

    :cond_115
    move-object v11, v12

    goto/16 :goto_8c

    :cond_118
    move-object v4, v5

    goto :goto_cd
.end method
