.class public Lcom/android/server/pm/xmlCheckExt;
.super Ljava/lang/Object;
.source "xmlCheckExt.java"

# interfaces
.implements Lcom/android/server/pm/ICheckExt;


# instance fields
.field private final CHECKXMLPATH:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "xmlCheckExt"

    iput-object v0, p0, Lcom/android/server/pm/xmlCheckExt;->TAG:Ljava/lang/String;

    const-string v0, "/system/lib/arm/check.xml"

    iput-object v0, p0, Lcom/android/server/pm/xmlCheckExt;->CHECKXMLPATH:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/xmlCheckExt;->mMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method addTag(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    move-object v0, p2

    const-string v1, "xmlCheckExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/xmlCheckExt;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/android/server/pm/xmlCheckExt;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    const/4 v1, 0x1

    return v1
.end method

.method checkPkgName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    iget-object v1, p0, Lcom/android/server/pm/xmlCheckExt;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_b
.end method

.method public varargs doCheck([Ljava/lang/String;)Z
    .registers 15

    const/4 v12, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    :try_start_5
    array-length v10, p1

    if-nez v10, :cond_9

    :cond_8
    :goto_8
    return v9

    :cond_9
    const/4 v10, 0x0

    aget-object v5, p1, v10

    const/4 v10, 0x1

    aget-object v6, p1, v10

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    new-instance v2, Ljava/io/File;

    const-string v10, "/system/lib/arm/check.xml"

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_8

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_25} :catch_ab
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_25} :catch_a9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_25} :catch_9c

    :try_start_25
    const-string v9, "utf-8"

    invoke-interface {v8, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_2e
    if-eq v1, v12, :cond_9a

    packed-switch v1, :pswitch_data_ae

    :goto_33
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_2e

    :pswitch_38
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "xmlCheckExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v7, v9}, Lcom/android/server/pm/xmlCheckExt;->addTag(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_61
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25 .. :try_end_61} :catch_62
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_61} :catch_94
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_61} :catch_a6

    goto :goto_33

    :catch_62
    move-exception v0

    move-object v3, v4

    :goto_64
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :goto_67
    if-eqz v3, :cond_6c

    :try_start_69
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_a1

    :cond_6c
    :goto_6c
    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/xmlCheckExt;->checkPkgName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    goto :goto_8

    :pswitch_71
    :try_start_71
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "xmlCheckExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "</"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_71 .. :try_end_93} :catch_62
    .catch Ljava/io/FileNotFoundException; {:try_start_71 .. :try_end_93} :catch_94
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_93} :catch_a6

    goto :goto_33

    :catch_94
    move-exception v0

    move-object v3, v4

    :goto_96
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_67

    :cond_9a
    move-object v3, v4

    goto :goto_67

    :catch_9c
    move-exception v0

    :goto_9d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_67

    :catch_a1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6c

    :catch_a6
    move-exception v0

    move-object v3, v4

    goto :goto_9d

    :catch_a9
    move-exception v0

    goto :goto_96

    :catch_ab
    move-exception v0

    goto :goto_64

    nop

    :pswitch_data_ae
    .packed-switch 0x2
        :pswitch_38
        :pswitch_71
    .end packed-switch
.end method
