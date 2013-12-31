.class Lcom/android/server/DirEncryptPrefs;
.super Ljava/lang/Object;
.source "DirEncryptPrefs.java"


# static fields
.field private static final CRYPT_PREFERENCES_FILE:Ljava/lang/String; = "DirEncryption.Pref"

.field private static final LOCAL_LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "DirEncryptPrefs"

.field private static sPreferences:Lcom/android/server/DirEncryptPrefs;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/DirEncryptPrefs;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;
    .registers 3

    const-class v1, Lcom/android/server/DirEncryptPrefs;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/DirEncryptPrefs;->sPreferences:Lcom/android/server/DirEncryptPrefs;

    if-nez v0, :cond_e

    new-instance v0, Lcom/android/server/DirEncryptPrefs;

    invoke-direct {v0, p0}, Lcom/android/server/DirEncryptPrefs;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/DirEncryptPrefs;->sPreferences:Lcom/android/server/DirEncryptPrefs;

    :cond_e
    sget-object v0, Lcom/android/server/DirEncryptPrefs;->sPreferences:Lcom/android/server/DirEncryptPrefs;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    const-string v0, "DirEncryptPrefs"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static logE(Ljava/lang/String;)V
    .registers 2

    const-string v0, "DirEncryptPrefs"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public clearPrefs()V
    .registers 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/"

    const-string v2, "DirEncryption.Pref"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_12
    return-void
.end method

.method public haveEncPrefs()Z
    .registers 5

    new-instance v0, Ljava/io/File;

    const-string v2, "/efs/"

    const-string v3, "DirEncryption.Pref"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/"

    const-string v3, "DirEncryption.Pref"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_1e
    const/4 v2, 0x1

    :goto_1f
    return v2

    :cond_20
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method public restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    .registers 10

    new-instance v3, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v3}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    new-instance v2, Ljava/io/File;

    const-string v7, "/efs/"

    const-string v8, "DirEncryption.Pref"

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_21

    :cond_1a
    const-string v7, "unable to get enc properties"

    invoke-static {v7}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    move-object v4, v3

    :goto_20
    return-object v4

    :cond_21
    const/4 v5, 0x0

    :try_start_22
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_4f
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_40

    :try_start_27
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v0, v7, [C

    invoke-virtual {v6, v0}, Ljava/io/FileReader;->read([C)I

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v7}, Landroid/dirEncryption/SDCardEncryptionPolicies;->unflattenFromString(Ljava/lang/String;)Landroid/dirEncryption/SDCardEncryptionPolicies;
    :try_end_39
    .catchall {:try_start_27 .. :try_end_39} :catchall_58
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_39} :catch_5b

    move-result-object v3

    :try_start_3a
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_56

    :goto_3d
    move-object v5, v6

    :goto_3e
    move-object v4, v3

    goto :goto_20

    :catch_40
    move-exception v1

    :goto_41
    :try_start_41
    const-string v7, "IOException:: unable to get enc properties"

    invoke-static {v7}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_4f

    :try_start_49
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_3e

    :catch_4d
    move-exception v7

    goto :goto_3e

    :catchall_4f
    move-exception v7

    :goto_50
    :try_start_50
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_54

    :goto_53
    throw v7

    :catch_54
    move-exception v8

    goto :goto_53

    :catch_56
    move-exception v7

    goto :goto_3d

    :catchall_58
    move-exception v7

    move-object v5, v6

    goto :goto_50

    :catch_5b
    move-exception v1

    move-object v5, v6

    goto :goto_41
.end method

.method public savePrefs(Landroid/dirEncryption/SDCardEncryptionPolicies;)Z
    .registers 9

    const/4 v2, 0x1

    new-instance v1, Ljava/io/File;

    const-string v5, "/efs/"

    const-string v6, "DirEncryption.Pref"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_b
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_14

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_14
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_39
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_19} :catch_28

    :try_start_19
    invoke-virtual {p1}, Landroid/dirEncryption/SDCardEncryptionPolicies;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_44
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_23} :catch_47

    :try_start_23
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_41

    :goto_26
    move-object v3, v4

    :goto_27
    return v2

    :catch_28
    move-exception v0

    :goto_29
    const/4 v2, 0x0

    :try_start_2a
    const-string v5, "IOException:: unable to save enc properties"

    invoke-static {v5}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_39

    :try_start_32
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_27

    :catch_36
    move-exception v0

    const/4 v2, 0x0

    goto :goto_27

    :catchall_39
    move-exception v5

    :goto_3a
    :try_start_3a
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3e

    :goto_3d
    throw v5

    :catch_3e
    move-exception v0

    const/4 v2, 0x0

    goto :goto_3d

    :catch_41
    move-exception v0

    const/4 v2, 0x0

    goto :goto_26

    :catchall_44
    move-exception v5

    move-object v3, v4

    goto :goto_3a

    :catch_47
    move-exception v0

    move-object v3, v4

    goto :goto_29
.end method
