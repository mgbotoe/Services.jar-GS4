.class public Lcom/android/server/enterprise/PayloadVerifier;
.super Ljava/lang/Object;
.source "PayloadVerifier.java"


# static fields
.field private static final CLASSES_FILE:Ljava/lang/String; = "classes.dex"

.field public static final ENTERPRISE_PRELOAD_APK:Ljava/lang/String; = "com.sec.enterprise.permissions"

.field private static final LICENSE_FILE:Ljava/lang/String; = "license.dat"

.field private static final MANIFEST_FILE:Ljava/lang/String; = "AndroidManifest.xml"

.field private static final PAYLOAD_BUNDLE_PATH:Ljava/lang/String; = "assets/payload/"

.field private static final PAYLOAD_FILE:Ljava/lang/String; = "sec.android.payload"

.field private static final RESOURCES_FILE:Ljava/lang/String; = "resources.arsc"

.field private static final SPKPath:Ljava/lang/String; = "/data/system/enterprise/vpkp"

.field private static final TAG:Ljava/lang/String; = "PayloadVerifier"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compareEnterpriseSignature(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 14

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.sec.enterprise.permissions"

    const/16 v11, 0x40

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-static {p0}, Lcom/android/server/enterprise/PayloadVerifier;->getPackageNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x40

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_1b} :catch_3b

    move-result-object v0

    :goto_1c
    if-eqz v3, :cond_70

    if-eqz v0, :cond_70

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v9, :cond_70

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v9, :cond_70

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iget-object v1, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v1

    const/4 v4, 0x0

    :goto_31
    if-ge v4, v5, :cond_55

    aget-object v8, v1, v4

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :catch_3b
    move-exception v2

    const-string v9, "PayloadVerifier"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :cond_55
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v1

    const/4 v4, 0x0

    :goto_5e
    if-ge v4, v5, :cond_68

    aget-object v8, v1, v4

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    :cond_68
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_70

    const/4 v9, 0x1

    :goto_6f
    return v9

    :cond_70
    const/4 v9, 0x0

    goto :goto_6f
.end method

.method public static extractLicense(Ljava/lang/String;)[B
    .registers 11

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_3
    new-instance v3, Ljava/util/jar/JarFile;

    invoke-direct {v3, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_4d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_38

    :try_start_8
    const-string v7, "assets/payload/license.dat"

    invoke-virtual {v3, v7}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v5

    if-nez v5, :cond_1d

    const/4 v7, 0x0

    new-array v0, v7, [B
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_a1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_a4

    if-eqz v4, :cond_16

    :try_start_15
    throw v4
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_16} :catch_7d

    :cond_16
    :goto_16
    if-eqz v3, :cond_1b

    :try_start_18
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_86

    :cond_1b
    :goto_1b
    move-object v2, v3

    :goto_1c
    return-object v0

    :cond_1d
    :try_start_1d
    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v7

    long-to-int v6, v7

    invoke-virtual {v3, v5}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    new-array v0, v6, [B

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_a1
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2b} :catch_a4

    move-result v6

    if-eqz v4, :cond_31

    :try_start_2e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_8f

    :cond_31
    :goto_31
    if-eqz v3, :cond_36

    :try_start_33
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_98

    :cond_36
    :goto_36
    move-object v2, v3

    goto :goto_1c

    :catch_38
    move-exception v1

    :goto_39
    :try_start_39
    const-string v7, "PayloadVerifier"

    const-string v8, ""

    invoke-static {v7, v8, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_4d

    if-eqz v4, :cond_45

    :try_start_42
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_6b

    :cond_45
    :goto_45
    if-eqz v2, :cond_4a

    :try_start_47
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_74

    :cond_4a
    :goto_4a
    new-array v0, v9, [B

    goto :goto_1c

    :catchall_4d
    move-exception v7

    :goto_4e
    if-eqz v4, :cond_53

    :try_start_50
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_59

    :cond_53
    :goto_53
    if-eqz v2, :cond_58

    :try_start_55
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_62

    :cond_58
    :goto_58
    throw v7

    :catch_59
    move-exception v1

    const-string v8, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_53

    :catch_62
    move-exception v1

    const-string v8, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_58

    :catch_6b
    move-exception v1

    const-string v7, "PayloadVerifier"

    const-string v8, ""

    invoke-static {v7, v8, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_45

    :catch_74
    move-exception v1

    const-string v7, "PayloadVerifier"

    const-string v8, ""

    invoke-static {v7, v8, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4a

    :catch_7d
    move-exception v1

    const-string v7, "PayloadVerifier"

    const-string v8, ""

    invoke-static {v7, v8, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    :catch_86
    move-exception v1

    const-string v7, "PayloadVerifier"

    const-string v8, ""

    invoke-static {v7, v8, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b

    :catch_8f
    move-exception v1

    const-string v7, "PayloadVerifier"

    const-string v8, ""

    invoke-static {v7, v8, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31

    :catch_98
    move-exception v1

    const-string v7, "PayloadVerifier"

    const-string v8, ""

    invoke-static {v7, v8, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_36

    :catchall_a1
    move-exception v7

    move-object v2, v3

    goto :goto_4e

    :catch_a4
    move-exception v1

    move-object v2, v3

    goto :goto_39
.end method

.method private static extractPayload(Ljava/lang/String;I)Ljava/lang/String;
    .registers 12

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_3
    new-instance v3, Ljava/util/jar/JarFile;

    invoke-direct {v3, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_83
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_67

    :try_start_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/assets/payload/sec.android.payload"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v5

    if-nez v5, :cond_44

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "assets/payload/sec.android.payload"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_ce
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_37} :catch_d1

    move-result-object v5

    if-nez v5, :cond_44

    if-eqz v4, :cond_3d

    :try_start_3c
    throw v4
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3d} :catch_aa

    :cond_3d
    :goto_3d
    if-eqz v3, :cond_42

    :try_start_3f
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_b3

    :cond_42
    :goto_42
    move-object v2, v3

    :cond_43
    :goto_43
    return-object v7

    :cond_44
    :try_start_44
    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v8

    long-to-int v6, v8

    invoke-virtual {v3, v5}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    new-array v0, v6, [B

    if-eqz v4, :cond_55

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    :cond_55
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_5a
    .catchall {:try_start_44 .. :try_end_5a} :catchall_ce
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_5a} :catch_d1

    if-eqz v4, :cond_5f

    :try_start_5c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_bc

    :cond_5f
    :goto_5f
    if-eqz v3, :cond_64

    :try_start_61
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_c5

    :cond_64
    :goto_64
    move-object v2, v3

    move-object v7, v8

    goto :goto_43

    :catch_67
    move-exception v1

    :goto_68
    :try_start_68
    const-string v8, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_83

    if-eqz v4, :cond_74

    :try_start_71
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_a1

    :cond_74
    :goto_74
    if-eqz v2, :cond_43

    :try_start_76
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_43

    :catch_7a
    move-exception v1

    const-string v8, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_43

    :catchall_83
    move-exception v7

    :goto_84
    if-eqz v4, :cond_89

    :try_start_86
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8f

    :cond_89
    :goto_89
    if-eqz v2, :cond_8e

    :try_start_8b
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_98

    :cond_8e
    :goto_8e
    throw v7

    :catch_8f
    move-exception v1

    const-string v8, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_89

    :catch_98
    move-exception v1

    const-string v8, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8e

    :catch_a1
    move-exception v1

    const-string v8, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_74

    :catch_aa
    move-exception v1

    const-string v8, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3d

    :catch_b3
    move-exception v1

    const-string v8, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_42

    :catch_bc
    move-exception v1

    const-string v7, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v7, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5f

    :catch_c5
    move-exception v1

    const-string v7, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v7, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_64

    :catchall_ce
    move-exception v7

    move-object v2, v3

    goto :goto_84

    :catch_d1
    move-exception v1

    move-object v2, v3

    goto :goto_68
.end method

.method private static getFileData(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 14

    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_2
    new-instance v4, Ljava/util/jar/JarFile;

    invoke-direct {v4, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_92
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_62

    :try_start_7
    invoke-virtual {v4, p0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v9

    long-to-int v8, v9

    const-string v9, "PayloadVerifier"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    new-array v0, v8, [B

    const/4 v1, 0x0

    const/4 v7, 0x0

    :cond_34
    sub-int v9, v8, v1

    invoke-virtual {v5, v0, v1, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    add-int/2addr v1, v7

    if-gtz v7, :cond_34

    const-string v9, "PayloadVerifier"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Total read size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_7 .. :try_end_56} :catchall_d4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_56} :catch_d7

    if-eqz v5, :cond_5b

    :try_start_58
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_c2

    :cond_5b
    :goto_5b
    if-eqz v4, :cond_60

    :try_start_5d
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_cb

    :cond_60
    :goto_60
    move-object v3, v4

    :goto_61
    return-object v0

    :catch_62
    move-exception v2

    :goto_63
    :try_start_63
    const-string v9, "PayloadVerifier"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "PayloadVerifier"

    const-string v10, "Check private key"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catchall {:try_start_63 .. :try_end_86} :catchall_92

    if-eqz v5, :cond_8b

    :try_start_88
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_b0

    :cond_8b
    :goto_8b
    if-eqz v3, :cond_90

    :try_start_8d
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_b9

    :cond_90
    :goto_90
    const/4 v0, 0x0

    goto :goto_61

    :catchall_92
    move-exception v9

    :goto_93
    if-eqz v5, :cond_98

    :try_start_95
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_9e

    :cond_98
    :goto_98
    if-eqz v3, :cond_9d

    :try_start_9a
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_a7

    :cond_9d
    :goto_9d
    throw v9

    :catch_9e
    move-exception v2

    const-string v10, "PayloadVerifier"

    const-string v11, ""

    invoke-static {v10, v11, v2}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_98

    :catch_a7
    move-exception v2

    const-string v10, "PayloadVerifier"

    const-string v11, ""

    invoke-static {v10, v11, v2}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9d

    :catch_b0
    move-exception v2

    const-string v9, "PayloadVerifier"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8b

    :catch_b9
    move-exception v2

    const-string v9, "PayloadVerifier"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_90

    :catch_c2
    move-exception v2

    const-string v9, "PayloadVerifier"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5b

    :catch_cb
    move-exception v2

    const-string v9, "PayloadVerifier"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_60

    :catchall_d4
    move-exception v9

    move-object v3, v4

    goto :goto_93

    :catch_d7
    move-exception v2

    move-object v3, v4

    goto :goto_63
.end method

.method public static getPackageNameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v4, -0x1

    const-string v3, "-"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v4, :cond_18

    if-eq v2, v4, :cond_18

    add-int/lit8 v3, v2, 0x1

    :try_start_13
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_17
    return-object v3

    :cond_18
    const-string v3, "null"
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_1b

    goto :goto_17

    :catch_1b
    move-exception v0

    const-string v3, "null"

    goto :goto_17
.end method

.method private static declared-synchronized getStoredPublicKeyPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-class v3, Lcom/android/server/enterprise/PayloadVerifier;

    monitor-enter v3

    :try_start_3
    invoke-static {p0}, Lcom/android/server/enterprise/PayloadVerifier;->getPackageNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PayloadVerifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PATH : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/enterprise/vpkp/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_52

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/enterprise/vpkp/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_54

    move-result-object v2

    :goto_50
    monitor-exit v3

    return-object v2

    :cond_52
    const/4 v2, 0x0

    goto :goto_50

    :catchall_54
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static varargs joinBytes([[B)[B
    .registers 9

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v0, p0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v5, :cond_21

    aget-object v1, v0, v4

    if-eqz v1, :cond_11

    array-length v6, v1

    if-nez v6, :cond_14

    :cond_11
    :goto_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_14
    :try_start_14
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_11

    :catch_18
    move-exception v3

    const-string v6, "PayloadVerifier"

    const-string v7, ""

    invoke-static {v6, v7, v3}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    :cond_21
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    return-object v6
.end method

.method private static loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .registers 10

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_a0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_b} :catch_21
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_b} :catch_62

    :cond_b
    const/4 v4, 0x0

    :try_start_c
    array-length v5, p2

    invoke-virtual {v2, p2, v4, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_b

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_ba
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_19} :catch_c0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_19} :catch_bd

    move-result-object v3

    :cond_1a
    if-eqz v2, :cond_1f

    :try_start_1c
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_b0

    :cond_1f
    :goto_1f
    move-object v1, v2

    :cond_20
    :goto_20
    return-object v3

    :catch_21
    move-exception v0

    :goto_22
    :try_start_22
    const-string v4, "PayloadVerifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "PayloadVerifier"

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_53
    .catchall {:try_start_22 .. :try_end_53} :catchall_a0

    if-eqz v1, :cond_20

    :try_start_55
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_20

    :catch_59
    move-exception v0

    const-string v4, "PayloadVerifier"

    const-string v5, ""

    :goto_5e
    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20

    :catch_62
    move-exception v0

    :goto_63
    :try_start_63
    const-string v4, "PayloadVerifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "PayloadVerifier"

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_94
    .catchall {:try_start_63 .. :try_end_94} :catchall_a0

    if-eqz v1, :cond_20

    :try_start_96
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9a

    goto :goto_20

    :catch_9a
    move-exception v0

    const-string v4, "PayloadVerifier"

    const-string v5, ""

    goto :goto_5e

    :catchall_a0
    move-exception v3

    :goto_a1
    if-eqz v1, :cond_a6

    :try_start_a3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a7

    :cond_a6
    :goto_a6
    throw v3

    :catch_a7
    move-exception v0

    const-string v4, "PayloadVerifier"

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a6

    :catch_b0
    move-exception v0

    const-string v4, "PayloadVerifier"

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    :catchall_ba
    move-exception v3

    move-object v1, v2

    goto :goto_a1

    :catch_bd
    move-exception v0

    move-object v1, v2

    goto :goto_63

    :catch_c0
    move-exception v0

    move-object v1, v2

    goto/16 :goto_22
.end method

.method public static declared-synchronized removeStoredPublicKeyPath(Ljava/lang/String;)V
    .registers 7

    const-class v3, Lcom/android/server/enterprise/PayloadVerifier;

    monitor-enter v3

    :try_start_3
    invoke-static {p0}, Lcom/android/server/enterprise/PayloadVerifier;->getPackageNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PayloadVerifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PATH : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/enterprise/vpkp/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_42

    :cond_40
    monitor-exit v3

    return-void

    :catchall_42
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static declared-synchronized setStoredPublicKeyPath(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-class v5, Lcom/android/server/enterprise/PayloadVerifier;

    monitor-enter v5

    :try_start_3
    invoke-static {p0}, Lcom/android/server/enterprise/PayloadVerifier;->getPackageNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "PayloadVerifier"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PATH : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/system/enterprise/vpkp/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_40

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_40
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_53

    :try_start_45
    invoke-static {v1, v3}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_53
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_4a

    :goto_48
    monitor-exit v5

    return-void

    :catch_4a
    move-exception v0

    :try_start_4b
    const-string v4, "PayloadVerifier"

    const-string v6, ""

    invoke-static {v4, v6, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_53

    goto :goto_48

    :catchall_53
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static verify(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 12

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {p0}, Lcom/android/server/enterprise/PayloadVerifier;->getStoredPublicKeyPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :try_start_b
    const-string v7, "com.sec.enterprise.permissions"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_16} :catch_23

    :goto_16
    if-nez v1, :cond_3d

    if-nez v5, :cond_3d

    const-string v7, "PayloadVerifier"

    const-string v8, "Enterprise APK Path is NULL , cannot proceed with payload verification."

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    :cond_22
    :goto_22
    return v4

    :catch_23
    move-exception v0

    const-string v7, "PayloadVerifier"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :cond_3d
    const/4 v4, 0x0

    if-eqz v5, :cond_4b

    :try_start_40
    const-string v7, "PayloadVerifier"

    const-string v8, "USING STORED PUBLIC KEY"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, p0}, Lcom/android/server/enterprise/PayloadVerifier;->verify(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4a} :catch_6e

    move-result v4

    :cond_4b
    :goto_4b
    if-nez v4, :cond_60

    :try_start_4d
    const-string v7, "PayloadVerifier"

    const-string v8, "USING FIXED PUBLIC KEY"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/enterprise/PayloadVerifier;->removeStoredPublicKeyPath(Ljava/lang/String;)V

    invoke-static {v1, p0}, Lcom/android/server/enterprise/PayloadVerifier;->verify(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-static {p0, v1}, Lcom/android/server/enterprise/PayloadVerifier;->setStoredPublicKeyPath(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_60} :catch_78

    :cond_60
    if-nez v4, :cond_22

    :try_start_62
    const-string v7, "PayloadVerifier"

    const-string v8, "COMPARING ENTERPRISE SIGNATURE"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/server/enterprise/PayloadVerifier;->compareEnterpriseSignature(Ljava/lang/String;Landroid/content/Context;)Z
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_6c} :catch_82

    move-result v4

    goto :goto_22

    :catch_6e
    move-exception v0

    const-string v7, "PayloadVerifier"

    const-string v8, ""

    invoke-static {v7, v8, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    goto :goto_4b

    :catch_78
    move-exception v0

    const-string v7, "PayloadVerifier"

    const-string v8, ""

    invoke-static {v7, v8, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v4, v6

    goto :goto_22

    :catch_82
    move-exception v0

    const-string v7, "PayloadVerifier"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    goto :goto_22
.end method

.method private static verify(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v7, Ljava/util/jar/JarFile;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    const/16 v13, 0x2000

    new-array v10, v13, [B

    const-string v13, "AndroidManifest.xml"

    invoke-virtual {v7, v13}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v13

    invoke-static {v7, v13, v10}, Lcom/android/server/enterprise/PayloadVerifier;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V

    if-nez v2, :cond_1c

    const/4 v13, 0x0

    :goto_1b
    return v13

    :cond_1c
    const-string v13, "AndroidManifest.xml"

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/android/server/enterprise/PayloadVerifier;->getFileData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v9

    const-string v13, "classes.dex"

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/android/server/enterprise/PayloadVerifier;->getFileData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    const-string v13, "resources.arsc"

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/android/server/enterprise/PayloadVerifier;->getFileData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/PayloadVerifier;->extractLicense(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x4

    new-array v13, v13, [[B

    const/4 v14, 0x0

    aput-object v9, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    const/4 v14, 0x2

    aput-object v11, v13, v14

    const/4 v14, 0x3

    aput-object v8, v13, v14

    invoke-static {v13}, Lcom/android/server/enterprise/PayloadVerifier;->joinBytes([[B)[B

    move-result-object v12

    const/4 v13, 0x0

    aget-object v1, v2, v13

    const/4 v6, 0x1

    const/4 v5, 0x0

    :goto_50
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/android/server/enterprise/PayloadVerifier;->extractPayload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f2

    const-string v13, "PayloadVerifier"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Extracted Payload("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") Size : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "PayloadVerifier"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Extracted Payload("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-static {v5, v13}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v13

    invoke-static {v12, v4, v13}, Lcom/android/server/enterprise/PayloadVerifier;->verify([B[BLjava/security/PublicKey;)Z

    move-result v13

    if-eqz v13, :cond_d0

    const-string v13, "PayloadVerifier"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Signature Verification SUCCESS for Payload("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x1

    goto/16 :goto_1b

    :cond_d0
    const-string v13, "PayloadVerifier"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Signature Verification FAILURE for Payload("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_50

    :cond_f2
    if-nez v5, :cond_fb

    const-string v13, "PayloadVerifier"

    const-string v14, "No more payloads"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_fb
    const/4 v13, 0x0

    goto/16 :goto_1b
.end method

.method private static verify([B[BLjava/security/PublicKey;)Z
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    const-string v3, "SHA1withRSA"

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {v2, p0}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v2, p1}, Ljava/security/Signature;->verify([B)Z
    :try_end_10
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_10} :catch_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_10} :catch_1b
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_10} :catch_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_2d

    move-result v1

    :goto_11
    return v1

    :catch_12
    move-exception v0

    const-string v3, "PayloadVerifier"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    :catch_1b
    move-exception v0

    const-string v3, "PayloadVerifier"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    :catch_24
    move-exception v0

    const-string v3, "PayloadVerifier"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    :catch_2d
    move-exception v0

    const-string v3, "PayloadVerifier"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11
.end method
