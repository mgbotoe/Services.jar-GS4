.class public Lcom/android/server/pm/PackageManagerService$FileHandle;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileHandle"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mLengthSourcePath:I

.field private mSourcePath:Ljava/lang/String;

.field private mTargetPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FileHandle"

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->mTargetPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->mSourcePath:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->mLengthSourcePath:I

    if-eqz p2, :cond_16

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->mTargetPath:Ljava/lang/String;

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->TAG:Ljava/lang/String;

    const-string v1, "Error!! target path is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method static synthetic access$5200(Lcom/android/server/pm/PackageManagerService$FileHandle;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$FileHandle;->deleteFile(Ljava/util/List;)V

    return-void
.end method

.method private copyFile(Ljava/io/File;)V
    .registers 21

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$FileHandle;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "copyFile - absFolderPath["

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v18, "]"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    :try_start_30
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_134
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_37} :catch_116

    :try_start_37
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$FileHandle;->mLengthSourcePath:I

    const-string v3, "/"

    invoke-virtual {v7, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$FileHandle;->mTargetPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_a2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$FileHandle;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Make dir ["

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v18, "]"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_a2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$FileHandle;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "targetFile ["

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v18, "]"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Ljava/io/File;

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_e9
    .catchall {:try_start_37 .. :try_end_e9} :catchall_154
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_e9} :catch_15b

    :try_start_e9
    invoke-virtual {v11}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_ff
    .catchall {:try_start_e9 .. :try_end_ff} :catchall_157
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_ff} :catch_15e

    if-eqz v6, :cond_104

    :try_start_101
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    :cond_104
    if-eqz v1, :cond_109

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_109
    if-eqz v14, :cond_10e

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    :cond_10e
    if-eqz v11, :cond_113

    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_113} :catch_14f

    :cond_113
    :goto_113
    move-object v13, v14

    move-object v10, v11

    :cond_115
    :goto_115
    return-void

    :catch_116
    move-exception v8

    :goto_117
    :try_start_117
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11a
    .catchall {:try_start_117 .. :try_end_11a} :catchall_134

    if-eqz v6, :cond_11f

    :try_start_11c
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    :cond_11f
    if-eqz v1, :cond_124

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_124
    if-eqz v13, :cond_129

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    :cond_129
    if-eqz v10, :cond_115

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_12e} :catch_12f

    goto :goto_115

    :catch_12f
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_115

    :catchall_134
    move-exception v2

    :goto_135
    if-eqz v6, :cond_13a

    :try_start_137
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    :cond_13a
    if-eqz v1, :cond_13f

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_13f
    if-eqz v13, :cond_144

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    :cond_144
    if-eqz v10, :cond_149

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_149} :catch_14a

    :cond_149
    :goto_149
    throw v2

    :catch_14a
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_149

    :catch_14f
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_113

    :catchall_154
    move-exception v2

    move-object v10, v11

    goto :goto_135

    :catchall_157
    move-exception v2

    move-object v13, v14

    move-object v10, v11

    goto :goto_135

    :catch_15b
    move-exception v8

    move-object v10, v11

    goto :goto_117

    :catch_15e
    move-exception v8

    move-object v13, v14

    move-object v10, v11

    goto :goto_117
.end method

.method private deleteFile(Ljava/util/List;)V
    .registers 6

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->mTargetPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService$FileHandle;->deleteFolder(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_29
    return-void
.end method

.method private moveFile(Ljava/io/File;)V
    .registers 12

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "moveFile - absFolderPath["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_26
    iget v7, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->mLengthSourcePath:I

    const-string v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->mTargetPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_7f

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Make dir for moving files ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_7f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "targetFile for moving ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_c1} :catch_c2

    :goto_c1
    return-void

    :catch_c2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c1
.end method


# virtual methods
.method public caseFolder(Ljava/io/File;)V
    .registers 12

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->mSourcePath:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->mTargetPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CHECK THIS FOLDER ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_77

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MAKE DIR ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_77
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v3, 0x0

    :goto_7d
    array-length v7, v2

    if-ge v3, v7, :cond_98

    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_90

    aget-object v7, v2, v3

    invoke-virtual {p0, v7}, Lcom/android/server/pm/PackageManagerService$FileHandle;->caseFolder(Ljava/io/File;)V

    :goto_8d
    add-int/lit8 v3, v3, 0x1

    goto :goto_7d

    :cond_90
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerService$FileHandle;->copyFile(Ljava/io/File;)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_93} :catch_94

    goto :goto_8d

    :catch_94
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_98
    return-void
.end method

.method public caseMoveFolder(Ljava/io/File;)V
    .registers 12

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->mSourcePath:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->mTargetPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CHECK THIS FOLDER ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_77

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MAKE DIR ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_77
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v3, 0x0

    :goto_7d
    array-length v7, v2

    if-ge v3, v7, :cond_98

    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_90

    aget-object v7, v2, v3

    invoke-virtual {p0, v7}, Lcom/android/server/pm/PackageManagerService$FileHandle;->caseMoveFolder(Ljava/io/File;)V

    :goto_8d
    add-int/lit8 v3, v3, 0x1

    goto :goto_7d

    :cond_90
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerService$FileHandle;->moveFile(Ljava/io/File;)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_93} :catch_94

    goto :goto_8d

    :catch_94
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_98
    return-void
.end method

.method public deleteFolder(Ljava/io/File;)V
    .registers 6

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    :goto_c
    :try_start_c
    array-length v3, v1

    if-ge v2, v3, :cond_2a

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1f

    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageManagerService$FileHandle;->deleteFolder(Ljava/io/File;)V

    :goto_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1f
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_24} :catch_25

    goto :goto_1c

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_2a
    :try_start_2a
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_25

    goto :goto_6
.end method

.method public doCopy(Ljava/lang/String;)V
    .registers 13

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    iput v6, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->mLengthSourcePath:I

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->mSourcePath:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->mTargetPath:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_42

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Make dir ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v4, v10, v9}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v4, v10, v9}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_42
    :try_start_42
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v3, 0x0

    :goto_4d
    array-length v6, v2

    if-ge v3, v6, :cond_b3

    aget-object v5, v2, v3

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doCopy sourceFileName["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_80

    invoke-direct {p0, v5}, Lcom/android/server/pm/PackageManagerService$FileHandle;->copyFile(Ljava/io/File;)V

    :goto_7d
    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    :cond_80
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "cache"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b4

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doCopy sourceFileName["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] IGNORED !!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_ae} :catch_af

    goto :goto_7d

    :catch_af
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b3
    return-void

    :cond_b4
    :try_start_b4
    aget-object v6, v2, v3

    invoke-virtual {p0, v6}, Lcom/android/server/pm/PackageManagerService$FileHandle;->caseFolder(Ljava/io/File;)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b9} :catch_af

    goto :goto_7d
.end method

.method public doMove(Ljava/lang/String;)V
    .registers 13

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    iput v6, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->mLengthSourcePath:I

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->mSourcePath:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->mTargetPath:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_42

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Make dir ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v4, v10, v9}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v4, v10, v9}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_42
    :try_start_42
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v3, 0x0

    :goto_4d
    array-length v6, v2

    if-ge v3, v6, :cond_b3

    aget-object v5, v2, v3

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doMove sourceFileName["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_80

    invoke-direct {p0, v5}, Lcom/android/server/pm/PackageManagerService$FileHandle;->moveFile(Ljava/io/File;)V

    :goto_7d
    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    :cond_80
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "cache"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b4

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$FileHandle;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doMove sourceFileName["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] IGNORED !!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_ae} :catch_af

    goto :goto_7d

    :catch_af
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b3
    return-void

    :cond_b4
    :try_start_b4
    aget-object v6, v2, v3

    invoke-virtual {p0, v6}, Lcom/android/server/pm/PackageManagerService$FileHandle;->caseMoveFolder(Ljava/io/File;)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b9} :catch_af

    goto :goto_7d
.end method
