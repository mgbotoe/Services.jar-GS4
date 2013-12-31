.class Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;
.super Ljava/lang/Object;
.source "MiscPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/general/MiscPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemFontChanger"
.end annotation


# static fields
.field public static final KEY_PREFERENCE:Ljava/lang/String; = "MONOTYPE"


# instance fields
.field mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

.field final synthetic this$0:Lcom/android/server/enterprise/general/MiscPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy;Lcom/android/server/enterprise/general/MiscPolicy$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;-><init>(Lcom/android/server/enterprise/general/MiscPolicy;)V

    return-void
.end method

.method private changeFont(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 24

    const/4 v14, 0x0

    new-instance v6, Lcom/android/server/enterprise/general/FontWriter;

    invoke-direct {v6}, Lcom/android/server/enterprise/general/FontWriter;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/4 v10, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getFontString()[Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_23

    const-string v18, "MiscPolicy"

    const-string v19, "changeFont():Installed font list is null"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    :goto_22
    return v14

    :cond_23
    const/4 v8, 0x0

    :goto_24
    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_52

    aget-object v18, v11, v8

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9a

    move v10, v8

    const-string v18, "MiscPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "index"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    const-string v18, "default"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v18

    const-string v19, "sans.loc"

    const-string v20, "default"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/server/enterprise/general/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    aget-object v18, v11, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->savePreferences(Ljava/lang/String;I)V

    const-string v18, "MiscPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "default font is selected..."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x1

    goto :goto_22

    :cond_9a
    add-int/lit8 v8, v8, 0x1

    goto :goto_24

    :cond_9d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/general/TypefaceFinder;->findMatchingTypefaceByName(Ljava/lang/String;)Lcom/android/server/enterprise/general/Typeface;

    move-result-object v15

    if-nez v15, :cond_b6

    const-string v18, "MiscPolicy"

    const-string v19, "change font failed"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_22

    :cond_b6
    invoke-virtual {v15}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_c8

    const-string v18, "com.monotype.android.font."

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_22

    :cond_c8
    invoke-virtual {v15}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v16

    const-string v18, ".xml"

    const-string v19, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v18, " "

    const-string v19, "-"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v7}, Lcom/android/server/enterprise/general/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_102

    const-string v18, "MiscPolicy"

    const-string v19, "create fontDir object is null "

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    goto/16 :goto_22

    :cond_102
    const/16 v17, 0x0

    if-eqz v15, :cond_176

    const/4 v8, 0x0

    :goto_107
    iget-object v0, v15, Lcom/android/server/enterprise/general/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_176

    iget-object v0, v15, Lcom/android/server/enterprise/general/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/enterprise/general/TypefaceFile;

    :try_start_11f
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "fonts/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/general/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/general/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v5, v9, v0}, Lcom/android/server/enterprise/general/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_14f} :catch_152

    add-int/lit8 v8, v8, 0x1

    goto :goto_107

    :catch_152
    move-exception v4

    const-string v18, "MiscPolicy"

    const-string v19, "changeFont():Exception"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v18, "MiscPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_22

    :cond_176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v18

    const-string v19, "sans.loc"

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/server/enterprise/general/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->savePreferences(Ljava/lang/String;I)V

    const-string v18, "MiscPolicy"

    const-string v19, "change font:Done"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x1

    goto/16 :goto_22
.end method

.method private getFontString()[Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getFontsVector()Ljava/util/Vector;

    move-result-object v0

    if-nez v0, :cond_9

    const/4 v3, 0x0

    :goto_8
    return-object v3

    :cond_9
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_10
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_21
    move-object v3, v2

    goto :goto_8
.end method

.method private getFontsVector()Ljava/util/Vector;
    .registers 13

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    new-instance v10, Lcom/android/server/enterprise/general/TypefaceFinder;

    invoke-direct {v10}, Lcom/android/server/enterprise/general/TypefaceFinder;-><init>()V

    iput-object v10, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v10, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    #getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v10, 0x80

    :try_start_28
    invoke-virtual {v7, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_2e
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_60

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v10, "com.monotype.android.font.droidserifitalic"

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_47

    :cond_44
    :goto_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    :cond_47
    const-string v10, "com.monotype.android.font."

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_44

    invoke-virtual {v7, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v10, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    invoke-virtual {v10, v1, v3}, Lcom/android/server/enterprise/general/TypefaceFinder;->findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    goto :goto_44

    :catch_5d
    move-exception v0

    move-object v2, v11

    :goto_5f
    return-object v2

    :cond_60
    iget-object v10, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    invoke-virtual {v10, v2, v9, v4}, Lcom/android/server/enterprise/general/TypefaceFinder;->getSansEntries(Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_65} :catch_5d

    goto :goto_5f
.end method


# virtual methods
.method public getActiveFontPosition()I
    .registers 12

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_3
    iget-object v8, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    #getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.android.settings"

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    const-string v8, "prefs"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_2d

    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v9, 0x4000

    invoke-direct {v5, v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_4f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_28} :catch_43

    :try_start_28
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_58
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_5b

    move-result-object v2

    move-object v4, v5

    :cond_2d
    if-eqz v4, :cond_32

    :try_start_2f
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_4d

    :cond_32
    :goto_32
    if-eqz v2, :cond_42

    const-string v8, "SavedClickedItem"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_42

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :cond_42
    return v7

    :catch_43
    move-exception v0

    :goto_44
    :try_start_44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_4f

    if-eqz v4, :cond_32

    :try_start_49
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_32

    :catch_4d
    move-exception v8

    goto :goto_32

    :catchall_4f
    move-exception v7

    :goto_50
    if-eqz v4, :cond_55

    :try_start_52
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    :cond_55
    :goto_55
    throw v7

    :catch_56
    move-exception v8

    goto :goto_55

    :catchall_58
    move-exception v7

    move-object v4, v5

    goto :goto_50

    :catch_5b
    move-exception v0

    move-object v4, v5

    goto :goto_44
.end method

.method public getSystemActiveFont()Ljava/lang/String;
    .registers 6

    const-string v2, "MiscPolicy"

    const-string v3, "getSystemActiveFont():getting active system font:"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getActiveFontPosition()I

    move-result v1

    const-string v2, "MiscPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveFontPosition():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getSystemFonts()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    aget-object v2, v0, v1

    :goto_2b
    return-object v2

    :cond_2c
    const/4 v2, 0x0

    goto :goto_2b
.end method

.method public getSystemFonts()[Ljava/lang/String;
    .registers 3

    const-string v0, "MiscPolicy"

    const-string v1, "getSystemFonts():getting all system fonts"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getFontString()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected savePreferences(Ljava/lang/String;I)V
    .registers 13

    const/4 v3, 0x0

    const/4 v6, 0x0

    :try_start_2
    iget-object v7, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    #getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "com.android.settings"

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_19

    move-result-object v6

    :goto_f
    if-nez v6, :cond_1e

    const-string v7, "MiscPolicy"

    const-string v8, "Setting Context is Null"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_18
    return-void

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    :cond_1e
    const-string v7, "prefs"

    invoke-virtual {v6, v7, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v7, "SavedClickedItem"

    invoke-interface {v1, v7, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_preferences"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v7, "MONOTYPE"

    invoke-interface {v2, v7, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_18
.end method

.method public setSystemActiveFont(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 23

    const-string v18, "MiscPolicy"

    const-string v19, "setSystemActiveFont():Start"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    if-nez p1, :cond_14

    const-string v18, "MiscPolicy"

    const-string v19, "setSystemActiveFont():Invalid input"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v18, v14

    :goto_13
    return v18

    :cond_14
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->changeFont(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1d

    const/16 v18, 0x0

    goto :goto_13

    :cond_1d
    :try_start_1d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    new-instance v13, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-direct {v13, v0, v1}, Ljava/util/Random;-><init>(J)V

    const/4 v12, 0x0

    const/16 v11, 0x2710

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3d} :catch_79

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v18

    const-string v19, "activity"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    const/16 v18, 0x32

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_84

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_61
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_84

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_61

    :catch_79
    move-exception v7

    const-string v18, "MiscPolicy"

    const-string v19, "setSystemActiveFont():Exception"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x0

    goto :goto_13

    :cond_84
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v18, v14

    goto :goto_13
.end method
