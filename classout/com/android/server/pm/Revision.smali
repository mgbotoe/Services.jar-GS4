.class public Lcom/android/server/pm/Revision;
.super Ljava/lang/Object;
.source "Revision.java"


# static fields
.field private static final SEPOLICY_VERSION_FILE:[Ljava/io/File;

.field private static selinux_policy_priority:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x0

    sput v4, Lcom/android/server/pm/Revision;->selinux_policy_priority:I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "security/sepolicy"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "security/spota/sepolicy_version"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/File;

    const-string v3, "sepolicy_version"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/pm/Revision;->SEPOLICY_VERSION_FILE:[Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get_sepolicy_version()Ljava/lang/String;
    .registers 14

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    new-instance v2, Ljava/lang/String;

    const-string v11, "SEPF_XXX_XX_0000"

    invoke-direct {v2, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v8

    :try_start_11
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v11, Ljava/io/FileInputStream;

    sget-object v12, Lcom/android/server/pm/Revision;->SEPOLICY_VERSION_FILE:[Ljava/io/File;

    add-int/lit8 v13, v8, -0x1

    aget-object v12, v12, v13

    invoke-direct {v11, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_21} :catch_75
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_21} :catch_70

    :try_start_21
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_2b} :catch_77
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2b} :catch_72

    const/4 v11, 0x1

    if-ne v8, v11, :cond_39

    :try_start_2e
    new-instance v10, Ljava/lang/String;

    const-string v11, "Enterprise Policy"

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v9, v10

    :goto_36
    move-object v4, v5

    move-object v0, v1

    :goto_38
    return-object v9

    :cond_39
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4c

    new-instance v11, Ljava/io/IOException;

    invoke-direct {v11}, Ljava/io/IOException;-><init>()V

    throw v11
    :try_end_45
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_45} :catch_45
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_45} :catch_5b

    :catch_45
    move-exception v3

    move-object v4, v5

    move-object v0, v1

    :goto_48
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_38

    :cond_4c
    const/16 v11, 0x3d

    :try_start_4e
    invoke-virtual {v7, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/4 v11, -0x1

    if-ne v6, v11, :cond_63

    new-instance v11, Ljava/lang/NumberFormatException;

    invoke-direct {v11}, Ljava/lang/NumberFormatException;-><init>()V

    throw v11
    :try_end_5b
    .catch Ljava/io/FileNotFoundException; {:try_start_4e .. :try_end_5b} :catch_45
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5b} :catch_5b

    :catch_5b
    move-exception v3

    move-object v4, v5

    move-object v0, v1

    :goto_5e
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v9, v2

    goto :goto_38

    :cond_63
    :try_start_63
    new-instance v10, Ljava/lang/String;

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/io/FileNotFoundException; {:try_start_63 .. :try_end_6e} :catch_45
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6e} :catch_5b

    move-object v9, v10

    goto :goto_36

    :catch_70
    move-exception v3

    goto :goto_5e

    :catch_72
    move-exception v3

    move-object v4, v5

    goto :goto_5e

    :catch_75
    move-exception v3

    goto :goto_48

    :catch_77
    move-exception v3

    move-object v4, v5

    goto :goto_48
.end method

.method public static selinux_android_load_priority()I
    .registers 16

    const/4 v15, 0x1

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    new-instance v12, Ljava/lang/String;

    const-string v14, "SEPF_SPD_XX_0000"

    invoke-direct {v12, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/String;

    const-string v14, "SEPF_RAM_XX_0000"

    invoke-direct {v7, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x0

    sput v14, Lcom/android/server/pm/Revision;->selinux_policy_priority:I

    :goto_1b
    sget-object v14, Lcom/android/server/pm/Revision;->SEPOLICY_VERSION_FILE:[Ljava/io/File;

    aget-object v14, v14, v4

    if-eqz v14, :cond_34

    :try_start_21
    new-instance v6, Ljava/io/FileInputStream;

    sget-object v14, Lcom/android/server/pm/Revision;->SEPOLICY_VERSION_FILE:[Ljava/io/File;

    aget-object v14, v14, v4

    invoke-direct {v6, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2a} :catch_8f

    if-nez v4, :cond_37

    add-int/lit8 v14, v4, 0x1

    :try_start_2e
    sput v14, Lcom/android/server/pm/Revision;->selinux_policy_priority:I

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_33} :catch_91

    move-object v5, v6

    :cond_34
    :goto_34
    sget v14, Lcom/android/server/pm/Revision;->selinux_policy_priority:I

    return v14

    :cond_37
    :try_start_37
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-direct {v14, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_41} :catch_91

    :try_start_41
    invoke-static {v1}, Lcom/android/server/pm/Revision;->selinux_get_full_version(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/pm/Revision;->selinux_get_version(Ljava/lang/String;)J

    move-result-wide v10

    if-ne v4, v15, :cond_69

    cmp-long v14, v10, v8

    if-lez v14, :cond_50

    move-wide v8, v10

    :cond_50
    invoke-static {v13}, Lcom/android/server/pm/Revision;->selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v14, v4, 0x1

    sput v14, Lcom/android/server/pm/Revision;->selinux_policy_priority:I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_58} :catch_7c

    :cond_58
    :goto_58
    move-object v5, v6

    move-object v0, v1

    :goto_5a
    if-eqz v0, :cond_60

    :try_start_5c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    :cond_60
    if-eqz v5, :cond_66

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_65} :catch_8a

    const/4 v5, 0x0

    :cond_66
    :goto_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_69
    :try_start_69
    invoke-static {v13}, Lcom/android/server/pm/Revision;->selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Lcom/android/server/pm/Revision;->selinux_cmp_android_version(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v15, :cond_83

    cmp-long v14, v10, v8

    if-lez v14, :cond_58

    add-int/lit8 v14, v4, 0x1

    sput v14, Lcom/android/server/pm/Revision;->selinux_policy_priority:I
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_7b} :catch_7c

    goto :goto_58

    :catch_7c
    move-exception v3

    move-object v5, v6

    move-object v0, v1

    :goto_7f
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5a

    :cond_83
    add-int/lit8 v14, v4, 0x1

    :try_start_85
    sput v14, Lcom/android/server/pm/Revision;->selinux_policy_priority:I
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_87} :catch_7c

    move-object v5, v6

    move-object v0, v1

    goto :goto_34

    :catch_8a
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_66

    :catch_8f
    move-exception v3

    goto :goto_7f

    :catch_91
    move-exception v3

    move-object v5, v6

    goto :goto_7f
.end method

.method private static selinux_cmp_android_version(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method private static selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/String;

    const-string v3, "0.0"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x5f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    :goto_11
    return-object v1

    :cond_12
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_11
.end method

.method private static selinux_get_full_version(Ljava/io/BufferedReader;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/String;

    const-string v4, "SEPF_XXX_XX_0000"

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :try_start_8
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_19

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_14

    :catch_14
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_18
    return-object v0

    :cond_19
    :try_start_19
    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_14

    move-result-object v3

    const/4 v4, 0x1

    aget-object v0, v3, v4

    goto :goto_18
.end method

.method private static selinux_get_version(Ljava/lang/String;)J
    .registers 7

    move-object v3, p0

    const-wide/16 v0, 0x0

    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_d

    :goto_c
    return-wide v0

    :cond_d
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    goto :goto_c
.end method
