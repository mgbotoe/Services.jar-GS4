.class public Lcom/android/server/enterprise/seandroid/SEAndroidService;
.super Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy$Stub;
.source "SEAndroidService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final CONTEXT_FILE:Ljava/lang/String; = "file_contexts"

.field private static final MACPERMISSIONS_FILE:Ljava/lang/String; = "mac_permissions.xml"

.field private static MAC_PERMISSIONS_FILEPATH:Ljava/io/File; = null

.field private static MAC_POLICY_FILE:Ljava/io/File; = null

.field private static MAC_TEMP:Ljava/io/File; = null

.field private static final POLICY_FILE:Ljava/lang/String; = "sepolicy"

.field private static final PROPERTY_FILE:Ljava/lang/String; = "property_contexts"

.field private static final SEANDROID_FOLDER:Ljava/lang/String; = "/data/security/"

.field private static SEAPP_CONTEXTS_FILEPATH:Ljava/io/File; = null

.field private static SEAPP_TEMP:Ljava/io/File; = null

.field private static final SECONTEXT_FILE:Ljava/lang/String; = "seapp_contexts"

.field private static final SPOTA_PACKAGE:Ljava/lang/String; = "com.sec.android.app.spota"

.field private static final TAG:Ljava/lang/String; = "SEAndroidPolicy"


# instance fields
.field private gotSignatureMatch:Z

.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/security/mac_temp.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_TEMP:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/security/seapp_temp"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_TEMP:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/security/mac_permissions.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_POLICY_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->gotSignatureMatch:Z

    iput-object p1, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method

.method private addNewDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    const-string v5, "3"

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->returnFilePath()V

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->createTempFile()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->addNewDomainToMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->addNewDomainToSeapp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    and-int v6, v7, v8

    return v6
.end method

.method private addNewDomainToMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 34

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v25, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_TEMP:Ljava/io/File;

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    :try_start_8
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v21

    if-nez v21, :cond_16

    const/16 v26, 0x0

    :goto_15
    return v26

    :cond_16
    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Element;->normalize()V

    const-string v26, "policy"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    const/4 v14, 0x0

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    const-string v26, "signer"

    move-object/from16 v0, v26

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    const/16 v20, 0x0

    const/4 v10, 0x0

    :goto_51
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v26

    move/from16 v0, v26

    if-ge v10, v0, :cond_99

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/Element;

    const-string v26, "signature"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_137

    const-string v26, "containerAllowedPackage"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    const-string v26, "name"

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-interface {v5, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v26, "level"

    move-object/from16 v0, v26

    move-object/from16 v1, p5

    invoke-interface {v5, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v12, 0x1

    :cond_99
    if-nez v12, :cond_ee

    const-string v26, "signer"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    const-string v26, "seinfo"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    const-string v26, "level"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    const-string v26, "allowall"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    const-string v26, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v26, "value"

    move-object/from16 v0, v26

    move-object/from16 v1, p5

    invoke-interface {v13, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v26, "signature"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_ee
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v23

    new-instance v22, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v22

    invoke-direct {v0, v8}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v16, Ljavax/xml/transform/stream/StreamResult;

    sget-object v26, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_TEMP:Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    const-string v26, "indent"

    const-string v27, "yes"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v26, "{http://xml.apache.org/xslt}indent-amount"

    const-string v27, "2"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_132
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_132} :catch_13b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_132} :catch_140
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_132} :catch_145
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_132} :catch_14a

    const/4 v11, 0x1

    :goto_133
    move/from16 v26, v11

    goto/16 :goto_15

    :cond_137
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_51

    :catch_13b
    move-exception v9

    invoke-virtual {v9}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_133

    :catch_140
    move-exception v9

    invoke-virtual {v9}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_133

    :catch_145
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_133

    :catch_14a
    move-exception v9

    invoke-virtual {v9}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_133
.end method

.method private addNewDomainToSeapp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 20

    const/4 v6, 0x0

    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    sget-object v11, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_TEMP:Ljava/io/File;

    invoke-direct {v3, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_49

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2b

    goto :goto_1c

    :catch_2b
    move-exception v1

    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_48
    return v6

    :cond_49
    const/16 v11, 0x9

    :try_start_4b
    new-array v10, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "0"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "1"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "2"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "3"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "4"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string v12, "5"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "6"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const-string v12, "7"

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string v12, "8"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    const-string v12, "user=_app"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "seinfo="

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object p3, v10, v11

    const/4 v11, 0x3

    const-string v12, "domain="

    aput-object v12, v10, v11

    const/4 v11, 0x4

    aput-object p2, v10, v11

    const/4 v11, 0x5

    const-string v12, "type="

    aput-object v12, v10, v11

    const/4 v11, 0x6

    aput-object p4, v10, v11

    const/4 v11, 0x7

    const-string v12, "level="

    aput-object v12, v10, v11

    const/16 v11, 0x8

    aput-object p5, v10, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x2

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x3

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x4

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x5

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x6

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x7

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x8

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/io/FileWriter;

    sget-object v11, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_TEMP:Ljava/io/File;

    invoke-direct {v4, v11}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    new-instance v8, Ljava/io/BufferedWriter;

    invoke-direct {v8, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    const-string v11, "SEAndroidPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "New Line Added = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_13b} :catch_2b

    const/4 v6, 0x1

    goto/16 :goto_48
.end method

.method private declared-synchronized adminLockPolicy(ZI)Z
    .registers 9

    monitor-enter p0

    :try_start_1
    const-string v3, "SEAndroidPolicy"

    const-string v4, "adminLockPolicy_begin"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->allowChanges(I)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_50

    move-result v3

    if-eqz v3, :cond_2c

    :try_start_f
    const-string v3, "SEAndroidPolicy"

    const-string v4, "Locking on Database"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "SeAndroidPolicyLocked"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "SE_ANDROID_TABLE"

    invoke-virtual {v3, p2, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_50
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2b} :catch_46

    move-result v2

    :cond_2c
    :goto_2c
    :try_start_2c
    const-string v3, "SEAndroidPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adminLockPolicy result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_2c .. :try_end_44} :catchall_50

    monitor-exit p0

    return v2

    :catch_46
    move-exception v1

    :try_start_47
    const-string v3, "SEAndroidPolicy"

    const-string v4, "Exception on Database"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_50

    const/4 v2, 0x0

    goto :goto_2c

    :catchall_50
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized allowChanges(I)Z
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v2, "SEAndroidPolicy"

    const-string v3, "allowChanges_begin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SEAndroidPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package Name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.sec.android.app.spota"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    const-string v2, "SEAndroidPolicy"

    const-string v3, "Requested by SPOTA Agent"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->isAdminLocked(I)Z

    move-result v2

    if-nez v2, :cond_46

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->isAdminLocked()Z

    move-result v2

    if-nez v2, :cond_4e

    :cond_46
    const-string v2, "SEAndroidPolicy"

    const-string v3, "Changes Allowed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_73

    const/4 v1, 0x1

    :cond_4e
    :goto_4e
    monitor-exit p0

    return v1

    :cond_50
    :try_start_50
    const-string v2, "SEAndroidPolicy"

    const-string v3, "Requested by MDM Agent"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->isAdminLocked(I)Z

    move-result v2

    if-nez v2, :cond_6a

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    if-eqz v2, :cond_6a

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4e

    :cond_6a
    const-string v2, "SEAndroidPolicy"

    const-string v3, "Changes Allowed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_50 .. :try_end_71} :catchall_73

    const/4 v1, 0x1

    goto :goto_4e

    :catchall_73
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized broadcastStateChanged(I)V
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v1, "SEAndroidPolicy"

    const-string v2, "broadcastStateChanged_begin"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SEAndroidPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "mdm.intent.action.seandroid.policy.state.changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "mdm.intent.extra.seandroid.state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_SEANDROID"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    monitor-exit p0

    return-void

    :catchall_35
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private copyFiles(Ljava/lang/String;[B)Z
    .registers 11

    const-string v5, "SEAndroidPolicy"

    const-string v6, "copyFiles_begin"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    if-eqz p2, :cond_20

    const/4 v1, 0x0

    :try_start_b
    new-instance v3, Ljava/io/File;

    const-string v5, "/data/security/"

    invoke-direct {v3, v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_17} :catch_21
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_17} :catch_39

    :try_start_17
    invoke-virtual {v2, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_64
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_1a} :catch_6a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_67

    const/4 v4, 0x1

    if-eqz v2, :cond_20

    :try_start_1d
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_5e

    :cond_20
    :goto_20
    return v4

    :catch_21
    move-exception v0

    :goto_22
    :try_start_22
    const-string v5, "SEAndroidPolicy"

    const-string v6, "File Not Found"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_4e

    const/4 v4, 0x0

    if-eqz v1, :cond_20

    :try_start_2c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_20

    :catch_30
    move-exception v0

    const-string v5, "SEAndroidPolicy"

    const-string v6, "Error closing OutputStream"

    :goto_35
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :catch_39
    move-exception v0

    :goto_3a
    :try_start_3a
    const-string v5, "SEAndroidPolicy"

    const-string v6, "copyFile failed "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_4e

    const/4 v4, 0x0

    if-eqz v1, :cond_20

    :try_start_44
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_20

    :catch_48
    move-exception v0

    const-string v5, "SEAndroidPolicy"

    const-string v6, "Error closing OutputStream"

    goto :goto_35

    :catchall_4e
    move-exception v5

    :goto_4f
    if-eqz v1, :cond_54

    :try_start_51
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    :cond_54
    :goto_54
    throw v5

    :catch_55
    move-exception v0

    const-string v6, "SEAndroidPolicy"

    const-string v7, "Error closing OutputStream"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    :catch_5e
    move-exception v0

    const-string v5, "SEAndroidPolicy"

    const-string v6, "Error closing OutputStream"

    goto :goto_35

    :catchall_64
    move-exception v5

    move-object v1, v2

    goto :goto_4f

    :catch_67
    move-exception v0

    move-object v1, v2

    goto :goto_3a

    :catch_6a
    move-exception v0

    move-object v1, v2

    goto :goto_22
.end method

.method private createTempFile()V
    .registers 4

    const/4 v2, 0x1

    sget-object v0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_PERMISSIONS_FILEPATH:Ljava/io/File;

    sget-object v1, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_TEMP:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->duplicateFile(Ljava/io/File;Ljava/io/File;)V

    sget-object v0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_TEMP:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/io/File;->setWritable(Z)Z

    sget-object v0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_CONTEXTS_FILEPATH:Ljava/io/File;

    sget-object v1, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_TEMP:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->duplicateFile(Ljava/io/File;Ljava/io/File;)V

    sget-object v0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_TEMP:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/io/File;->setWritable(Z)Z

    return-void
.end method

.method private static duplicateFile(Ljava/io/File;Ljava/io/File;)V
    .registers 9

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v1, 0x0

    :goto_23
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_31
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_31} :catch_32
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_31} :catch_3e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_31} :catch_43

    goto :goto_23

    :catch_32
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_36
    return-void

    :cond_37
    :try_start_37
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_3d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_37 .. :try_end_3d} :catch_32
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_3d} :catch_3e
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3d} :catch_43

    goto :goto_36

    :catch_3e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_36

    :catch_43
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_36
.end method

.method private enforceSeAndroidPermission()I
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SEANDROID"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v6, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v6, 0x40

    :try_start_9
    invoke-virtual {v3, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_15
    array-length v6, v4

    if-ge v1, v6, :cond_29

    aget-object v6, v4, v1

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_21} :catch_24

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v5, 0x0

    :cond_29
    return-object v5
.end method

.method private declared-synchronized isAdminLocked()Z
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v5, "SEAndroidPolicy"

    const-string v6, "isAdminLocked_begin = all"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "adminUid"

    aput-object v6, v0, v5

    const/4 v5, 0x1

    const-string v6, "SeAndroidPolicyLocked"

    aput-object v6, v0, v5

    iget-object v5, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "SE_ANDROID_TABLE"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v1, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v5, "true"

    const-string v6, "SeAndroidPolicyLocked"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    const-string v5, "SEAndroidPolicy"

    const-string v6, "At Least one Admin is locked"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_47

    const/4 v4, 0x1

    :cond_45
    monitor-exit p0

    return v4

    :catchall_47
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private declared-synchronized isAdminLocked(I)Z
    .registers 9

    monitor-enter p0

    :try_start_1
    const-string v4, "SEAndroidPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAdminLocked_begin = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_64

    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_1b
    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "adminUid"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "SeAndroidPolicyLocked"

    aput-object v5, v0, v4

    iget-object v4, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "SE_ANDROID_TABLE"

    invoke-virtual {v4, p1, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(ILjava/lang/String;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v4, "true"

    const-string v5, "SeAndroidPolicyLocked"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3a
    .catchall {:try_start_1b .. :try_end_3a} :catchall_64
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3a} :catch_5a

    move-result v4

    if-eqz v4, :cond_58

    const/4 v3, 0x1

    :goto_3e
    :try_start_3e
    const-string v4, "SEAndroidPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAdminLocked result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_3e .. :try_end_56} :catchall_64

    monitor-exit p0

    return v3

    :cond_58
    const/4 v3, 0x0

    goto :goto_3e

    :catch_5a
    move-exception v1

    :try_start_5b
    const-string v4, "SEAndroidPolicy"

    const-string v5, "isAdminLocked = exception"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_64

    const/4 v3, 0x0

    goto :goto_3e

    :catchall_64
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private removeFiles()Z
    .registers 13

    const-string v9, "SEAndroidPolicy"

    const-string v10, "removeFiles_begin"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    :try_start_8
    new-instance v4, Ljava/io/File;

    const-string v9, "/data/security/"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v9, "SEAndroidPolicy"

    const-string v10, "Lets start the loop"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_34

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    array-length v7, v1

    const/4 v6, 0x0

    :goto_23
    if-ge v6, v7, :cond_34

    aget-object v5, v1, v6

    new-instance v3, Ljava/io/File;

    const-string v9, "/data/security/"

    invoke-direct {v3, v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_31} :catch_4e

    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_34
    const/4 v8, 0x1

    :goto_35
    const-string v9, "SEAndroidPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removeFiles result = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :catch_4e
    move-exception v2

    const-string v9, "SEAndroidPolicy"

    const-string v10, "Exception.removeFiles"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto :goto_35
.end method

.method private returnFilePath()V
    .registers 12

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v0, v10, [Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "security/mac_permissions.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v0, v6

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "security/spota/mac_permissions.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v0, v7

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "etc/security/mac_permissions.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v0, v8

    const/4 v3, 0x0

    aput-object v3, v0, v9

    new-array v1, v10, [Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "security/seapp_contexts"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v1, v6

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "security/spota/seapp_contexts"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v1, v7

    new-instance v3, Ljava/io/File;

    const-string v4, "seapp_contexts"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v8

    const/4 v3, 0x0

    aput-object v3, v1, v9

    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v2

    const-string v3, "SEAndroidPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v2, :pswitch_data_94

    :goto_7c
    return-void

    :pswitch_7d
    aget-object v3, v0, v2

    sput-object v3, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_PERMISSIONS_FILEPATH:Ljava/io/File;

    aget-object v3, v1, v2

    sput-object v3, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_CONTEXTS_FILEPATH:Ljava/io/File;

    goto :goto_7c

    :pswitch_86
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v0, v3

    sput-object v3, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_PERMISSIONS_FILEPATH:Ljava/io/File;

    add-int/lit8 v3, v2, -0x1

    aget-object v3, v1, v3

    sput-object v3, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_CONTEXTS_FILEPATH:Ljava/io/File;

    goto :goto_7c

    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_86
        :pswitch_86
        :pswitch_86
    .end packed-switch
.end method

.method private declared-synchronized searchAgent()I
    .registers 12

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_4
    const-string v9, "SEAndroidPolicy"

    const-string v10, "searchAgent_begin"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "SeAndroidPolicyLocked"

    aput-object v10, v0, v9

    iget-object v9, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "SE_ANDROID_TABLE"

    invoke-virtual {v9, v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_88

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_88

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string v9, "true"

    const-string v10, "SeAndroidPolicyLocked"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_26

    const-string v9, "adminUid"

    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v9, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_26

    const-string v8, "SEAndroidPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package Name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "com.sec.android.app.spota"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7f

    const-string v7, "SEAndroidPolicy"

    const-string v8, "searchAgent = SPOTA_AGENT"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_4 .. :try_end_7d} :catchall_91

    :goto_7d
    monitor-exit p0

    return v6

    :cond_7f
    :try_start_7f
    const-string v6, "SEAndroidPolicy"

    const-string v8, "searchAgent = MDM_AGENT"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    goto :goto_7d

    :cond_88
    const-string v6, "SEAndroidPolicy"

    const-string v7, "searchAgent = NONE"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catchall {:try_start_7f .. :try_end_8f} :catchall_91

    move v6, v8

    goto :goto_7d

    :catchall_91
    move-exception v6

    monitor-exit p0

    throw v6
.end method


# virtual methods
.method public amsGetEnforce()Z
    .registers 5

    const-string v2, "SEAndroidPolicy"

    const-string v3, "amsGetEnforce_begin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    const/4 v1, 0x0

    const/4 v0, 0x0

    const-string v2, "persist.security.ams.enforce"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    return v0
.end method

.method public amsSetEnforce(Z)I
    .registers 7

    const-string v3, "SEAndroidPolicy"

    const-string v4, "amsSetEnforce_begin"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    move-result v1

    const/4 v0, -0x1

    const/4 v3, 0x1

    invoke-direct {p0, v3, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v3

    if-eqz v3, :cond_28

    if-eqz p1, :cond_25

    const-string v2, "1"

    :goto_17
    const-string v3, "persist.security.ams.enforce"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    :goto_24
    return v0

    :cond_25
    const-string v2, "0"

    goto :goto_17

    :cond_28
    const/4 v0, -0x2

    goto :goto_24
.end method

.method public amsSetLogLevel(I)I
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "SEAndroidPolicy"

    const-string v3, "amsSetLogLevel_begin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    move-result v1

    const/4 v0, -0x1

    invoke-direct {p0, v5, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v2

    if-eqz v2, :cond_5a

    packed-switch p1, :pswitch_data_5c

    const-string v2, "SEAndroidPolicy"

    const-string v3, "Flag with a wrong value"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    const/4 v0, -0x1

    :goto_22
    return v0

    :pswitch_23
    const-string v2, "persist.security.ams.verbose"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    goto :goto_22

    :pswitch_35
    const-string v2, "persist.security.ams.verbose"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    goto :goto_22

    :pswitch_47
    const-string v2, "persist.security.ams.verbose"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    goto :goto_22

    :cond_5a
    const/4 v0, -0x2

    goto :goto_22

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_23
        :pswitch_35
        :pswitch_47
    .end packed-switch
.end method

.method public getDataType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 29

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->returnFilePath()V

    new-instance v8, Ljava/io/FileInputStream;

    sget-object v23, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_CONTEXTS_FILEPATH:Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v12, Ljava/io/DataInputStream;

    invoke-direct {v12, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    move-object/from16 v0, v23

    invoke-direct {v0, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v6, 0x0

    :cond_23
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_ff

    const-string v23, " "

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v2, v18

    array-length v13, v2

    const/4 v9, 0x0

    move v11, v9

    :goto_38
    if-ge v11, v13, :cond_23

    aget-object v17, v2, v11

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "seinfo="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_fa

    move-object/from16 v3, v18

    array-length v14, v3

    const/4 v9, 0x0

    :goto_61
    if-ge v9, v14, :cond_c6

    aget-object v22, v3, v9

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "name="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c3

    move-object/from16 v2, v18

    array-length v13, v2

    const/4 v9, 0x0

    move v10, v9

    :goto_87
    if-ge v10, v13, :cond_bb

    aget-object v19, v2, v10

    const-string v23, "="

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v3, v20

    array-length v14, v3

    const/4 v9, 0x0

    :goto_99
    if-ge v9, v14, :cond_b7

    aget-object v21, v3, v9

    const-string v23, "type"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b4

    const/16 v23, 0x1

    aget-object v6, v20, v23

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    :goto_b3
    return-object v6

    :cond_b4
    add-int/lit8 v9, v9, 0x1

    goto :goto_99

    :cond_b7
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_87

    :cond_bb
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    const/4 v6, 0x0

    goto :goto_b3

    :cond_c3
    add-int/lit8 v9, v9, 0x1

    goto :goto_61

    :cond_c6
    if-nez v6, :cond_fa

    move-object/from16 v3, v18

    array-length v14, v3

    const/4 v9, 0x0

    move v10, v9

    :goto_cd
    if-ge v10, v14, :cond_fa

    aget-object v19, v3, v10

    const-string v23, "="

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v4, v20

    array-length v15, v4

    const/4 v9, 0x0

    :goto_df
    if-ge v9, v15, :cond_f6

    aget-object v21, v4, v9

    const-string v23, "type"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f3

    const/16 v23, 0x1

    aget-object v6, v20, v23

    :cond_f3
    add-int/lit8 v9, v9, 0x1

    goto :goto_df

    :cond_f6
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_cd

    :cond_fa
    add-int/lit8 v9, v11, 0x1

    move v11, v9

    goto/16 :goto_38

    :cond_ff
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_105} :catch_106

    goto :goto_b3

    :catch_106
    move-exception v7

    sget-object v23, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_b3
.end method

.method public getDataTypeFromPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getSEInfoFromPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    :cond_c
    :goto_c
    return-object v2

    :cond_d
    invoke-virtual {p0, v1, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getDataType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    move-object v2, v0

    goto :goto_c
.end method

.method public getDomain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 29

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->returnFilePath()V

    new-instance v8, Ljava/io/FileInputStream;

    sget-object v23, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_CONTEXTS_FILEPATH:Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v12, Ljava/io/DataInputStream;

    invoke-direct {v12, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    move-object/from16 v0, v23

    invoke-direct {v0, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v6, 0x0

    :cond_23
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_ff

    const-string v23, " "

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v2, v18

    array-length v13, v2

    const/4 v9, 0x0

    move v11, v9

    :goto_38
    if-ge v11, v13, :cond_23

    aget-object v17, v2, v11

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "seinfo="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_fa

    move-object/from16 v3, v18

    array-length v14, v3

    const/4 v9, 0x0

    :goto_61
    if-ge v9, v14, :cond_c6

    aget-object v22, v3, v9

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "name="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c3

    move-object/from16 v2, v18

    array-length v13, v2

    const/4 v9, 0x0

    move v10, v9

    :goto_87
    if-ge v10, v13, :cond_bb

    aget-object v19, v2, v10

    const-string v23, "="

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v3, v20

    array-length v14, v3

    const/4 v9, 0x0

    :goto_99
    if-ge v9, v14, :cond_b7

    aget-object v21, v3, v9

    const-string v23, "domain"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b4

    const/16 v23, 0x1

    aget-object v6, v20, v23

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    :goto_b3
    return-object v6

    :cond_b4
    add-int/lit8 v9, v9, 0x1

    goto :goto_99

    :cond_b7
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_87

    :cond_bb
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    const/4 v6, 0x0

    goto :goto_b3

    :cond_c3
    add-int/lit8 v9, v9, 0x1

    goto :goto_61

    :cond_c6
    if-nez v6, :cond_fa

    move-object/from16 v3, v18

    array-length v14, v3

    const/4 v9, 0x0

    move v10, v9

    :goto_cd
    if-ge v10, v14, :cond_fa

    aget-object v19, v3, v10

    const-string v23, "="

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v4, v20

    array-length v15, v4

    const/4 v9, 0x0

    :goto_df
    if-ge v9, v15, :cond_f6

    aget-object v21, v4, v9

    const-string v23, "domain"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f3

    const/16 v23, 0x1

    aget-object v6, v20, v23

    :cond_f3
    add-int/lit8 v9, v9, 0x1

    goto :goto_df

    :cond_f6
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_cd

    :cond_fa
    add-int/lit8 v9, v11, 0x1

    move v11, v9

    goto/16 :goto_38

    :cond_ff
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_105} :catch_106

    goto :goto_b3

    :catch_106
    move-exception v7

    sget-object v23, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_b3
.end method

.method public getDomainFromPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getSEInfoFromPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    :cond_c
    :goto_c
    return-object v2

    :cond_d
    invoke-virtual {p0, v1, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getDomain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    move-object v2, v0

    goto :goto_c
.end method

.method public getSEAndroidAgent()I
    .registers 3

    const-string v0, "SEAndroidPolicy"

    const-string v1, "getSEAndroidAgent_begin"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v0

    return v0
.end method

.method public getSEInfoFromCertificate(Ljava/lang/String;)Ljava/lang/String;
    .registers 16

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->returnFilePath()V

    const/4 v13, 0x0

    iput-boolean v13, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->gotSignatureMatch:Z

    const/4 v9, 0x0

    sget-object v12, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_PERMISSIONS_FILEPATH:Ljava/io/File;

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    :try_start_10
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Element;->normalize()V

    const-string v13, "policy"

    invoke-interface {v2, v13}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v13, 0x0

    invoke-interface {v6, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    const-string v13, "signer"

    invoke-interface {v5, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v4, 0x0

    :goto_35
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-ge v4, v13, :cond_63

    invoke-interface {v10, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    const-string v13, "signature"

    invoke-interface {v11, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_65

    const-string v13, "seinfo"

    invoke-interface {v11, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    const/4 v13, 0x0

    invoke-interface {v7, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    const-string v13, "value"

    invoke-interface {v8, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->gotSignatureMatch:Z
    :try_end_63
    .catch Lorg/xml/sax/SAXException; {:try_start_10 .. :try_end_63} :catch_68
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_10 .. :try_end_63} :catch_6e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_63} :catch_74

    :cond_63
    move-object v13, v9

    :goto_64
    return-object v13

    :cond_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    :catch_68
    move-exception v3

    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V

    const/4 v13, 0x0

    goto :goto_64

    :catch_6e
    move-exception v3

    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    const/4 v13, 0x0

    goto :goto_64

    :catch_74
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    const/4 v13, 0x0

    goto :goto_64
.end method

.method public getSEInfoFromPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->returnFilePath()V

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_14

    :cond_13
    :goto_13
    return-object v4

    :cond_14
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getSEInfoFromCertificate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->gotSignatureMatch:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_18

    :cond_2d
    if-eqz v2, :cond_13

    move-object v4, v2

    goto :goto_13
.end method

.method public getSELinuxMode()Z
    .registers 4

    const-string v1, "SEAndroidPolicy"

    const-string v2, "getSELinuxMode_begin"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v0

    return v0
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->isAdminLocked(I)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->removeFiles()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "SEAndroidPolicy"

    const-string v1, "Admin is quiting"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    :cond_17
    return-void
.end method

.method public revokeSELinuxPolicy()I
    .registers 6

    const/4 v4, 0x0

    const-string v2, "SEAndroidPolicy"

    const-string v3, "revokeSELinuxPolicy_begin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    move-result v1

    const/4 v0, -0x1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->allowChanges(I)Z

    move-result v2

    if-eqz v2, :cond_28

    const-string v2, "SEAndroidPolicy"

    const-string v3, "Lets remove the Files"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->removeFiles()Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v0, 0x0

    invoke-direct {p0, v4, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    :cond_27
    :goto_27
    return v0

    :cond_28
    const/4 v0, -0x2

    goto :goto_27
.end method

.method public setFileContexts([B)I
    .registers 6

    const-string v2, "SEAndroidPolicy"

    const-string v3, "setFileContexts_begin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    move-result v1

    const/4 v0, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string v2, "file_contexts"

    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->copyFiles(Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_32

    const-string v2, "SEAndroidPolicy"

    const-string v3, "Files Copied Succesfull"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "selinux.reload_policy"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    const/4 v0, 0x0

    :goto_31
    return v0

    :cond_32
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    const/4 v0, -0x1

    goto :goto_31

    :cond_38
    const/4 v0, -0x2

    goto :goto_31
.end method

.method public setMacPermission([B)I
    .registers 6

    const-string v2, "SEAndroidPolicy"

    const-string v3, "setMacPermission_begin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    move-result v1

    const/4 v0, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v2

    if-eqz v2, :cond_3d

    const-string v2, "mac_permissions.xml"

    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->copyFiles(Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_37

    const-string v2, "SEAndroidPolicy"

    const-string v3, "Files Copied Successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_POLICY_FILE:Ljava/io/File;

    invoke-static {v2}, Lcom/android/server/pm/SELinuxMMAC;->readInstallPolicy(Ljava/io/File;)Z

    const-string v2, "SEAndroidPolicy"

    const-string v3, "readInstallPolicy successful"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    :goto_36
    return v0

    :cond_37
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    const/4 v0, -0x1

    goto :goto_36

    :cond_3d
    const/4 v0, -0x2

    goto :goto_36
.end method

.method public setPropertyContexts([B)I
    .registers 6

    const-string v2, "SEAndroidPolicy"

    const-string v3, "setPropertyContexts_begin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    move-result v1

    const/4 v0, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string v2, "property_contexts"

    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->copyFiles(Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_32

    const-string v2, "SEAndroidPolicy"

    const-string v3, "Files Copied Succesfull"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "selinux.reload_policy"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    const/4 v0, 0x0

    :goto_31
    return v0

    :cond_32
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    const/4 v0, -0x1

    goto :goto_31

    :cond_38
    const/4 v0, -0x2

    goto :goto_31
.end method

.method public setSEAppContexts([B)I
    .registers 6

    const-string v2, "SEAndroidPolicy"

    const-string v3, "setSEAppContexts_begin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    move-result v1

    const/4 v0, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string v2, "seapp_contexts"

    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->copyFiles(Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_32

    const-string v2, "SEAndroidPolicy"

    const-string v3, "Files Copied Succesfull"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "selinux.reload_policy"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    :goto_31
    return v0

    :cond_32
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    const/4 v0, -0x1

    goto :goto_31

    :cond_38
    const/4 v0, -0x2

    goto :goto_31
.end method

.method public setSELinuxEnforcing()Z
    .registers 7

    const/4 v5, 0x1

    const-string v3, "SEAndroidPolicy"

    const-string v4, "setSELinuxEnforcing_begin"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    move-result v2

    const/4 v1, 0x0

    invoke-direct {p0, v5, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v3

    if-nez v3, :cond_2d

    invoke-static {v5}, Landroid/os/SELinux;->setSELinuxEnforce(Z)Z

    move-result v1

    if-eqz v1, :cond_2d

    new-instance v0, Landroid/content/Intent;

    const-string v3, "mdm.intent.action.seandroid.policy.enforced"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_SEANDROID"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_2d
    return v1
.end method

.method public setSELinuxPolicy([B)I
    .registers 6

    const-string v2, "SEAndroidPolicy"

    const-string v3, "setSELinuxPolicy_begin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission()I

    move-result v1

    const/4 v0, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string v2, "sepolicy"

    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->copyFiles(Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_32

    const-string v2, "SEAndroidPolicy"

    const-string v3, "Files Copied Succesfull"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "selinux.reload_policy"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    const/4 v0, 0x0

    :goto_31
    return v0

    :cond_32
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    const/4 v0, -0x1

    goto :goto_31

    :cond_38
    const/4 v0, -0x2

    goto :goto_31
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method
