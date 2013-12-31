.class public Lcom/android/server/enterprise/storage/EnterpriseXmlParser;
.super Ljava/lang/Object;
.source "EnterpriseXmlParser.java"


# static fields
.field private static final ATTR_DEFAULT:Ljava/lang/String; = "default"

.field private static final ATTR_FOREIGN_KEY_NAME:Ljava/lang/String; = "foreignkeyname"

.field private static final ATTR_FOREIGN_REFER_KEY:Ljava/lang/String; = "foreignreferkey"

.field private static final ATTR_FOREIGN_REFER_TABLE:Ljava/lang/String; = "foreignrefertable"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PRIMARY_KEY:Ljava/lang/String; = "primarykey"

.field private static final ATTR_PROPERTIES:Ljava/lang/String; = "properties"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final COLUMN:Ljava/lang/String; = "column"

.field private static final TABLE:Ljava/lang/String; = "table"

.field private static final TAG:Ljava/lang/String; = "EnterpriseXmlParser"


# instance fields
.field private final mCallback:Lcom/android/server/enterprise/storage/TableCallback;

.field private final mParser:Landroid/content/res/XmlResourceParser;


# direct methods
.method public constructor <init>(Landroid/content/res/XmlResourceParser;Lcom/android/server/enterprise/storage/TableCallback;)V
    .registers 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    iput-object p2, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mCallback:Lcom/android/server/enterprise/storage/TableCallback;

    return-void
.end method

.method private getType(Ljava/lang/String;)Lcom/android/server/enterprise/storage/Column$DATA_TYPE;
    .registers 3

    if-nez p1, :cond_5

    sget-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->BLOB:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "int"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->INTEGER:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    goto :goto_4

    :cond_10
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->TEXT:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    goto :goto_4

    :cond_1b
    const-string v0, "numeric"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->NUMERIC:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    goto :goto_4

    :cond_26
    const-string v0, "real"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->REAL:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    goto :goto_4

    :cond_31
    sget-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->BLOB:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    goto :goto_4
.end method

.method private isPrimaryKey(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_c

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public parseXML()V
    .registers 13

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v7

    const/4 v8, 0x0

    :goto_7
    const/4 v0, 0x1

    if-eq v7, v0, :cond_9a

    packed-switch v7, :pswitch_data_b2

    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    goto :goto_7

    :pswitch_14
    iget-object v0, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v0, "table"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    new-instance v8, Lcom/android/server/enterprise/storage/Table;

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const/4 v1, 0x0

    const-string v2, "name"

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const/4 v2, 0x0

    const-string v3, "foreignrefertable"

    invoke-interface {v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const/4 v3, 0x0

    const-string v4, "foreignreferkey"

    invoke-interface {v2, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const/4 v4, 0x0

    const-string v5, "foreignkeyname"

    invoke-interface {v3, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/Table;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    const-string v0, "column"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/android/server/enterprise/storage/Column;

    iget-object v1, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const/4 v2, 0x0

    const-string v3, "name"

    invoke-interface {v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const/4 v3, 0x0

    const-string v4, "type"

    invoke-interface {v2, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->getType(Ljava/lang/String;)Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const/4 v4, 0x0

    const-string v5, "primarykey"

    invoke-interface {v3, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->isPrimaryKey(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const/4 v5, 0x0

    const-string v10, "properties"

    invoke-interface {v4, v5, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const/4 v10, 0x0

    const-string v11, "default"

    invoke-interface {v5, v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/storage/Column;-><init>(Ljava/lang/String;Lcom/android/server/enterprise/storage/Column$DATA_TYPE;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/android/server/enterprise/storage/Table;->addColumn(Lcom/android/server/enterprise/storage/Column;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_90} :catch_92

    goto/16 :goto_d

    :catch_92
    move-exception v6

    const-string v0, "EnterpriseXmlParser"

    const-string v1, "parseXML EX:"

    invoke-static {v0, v1, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9a
    return-void

    :pswitch_9b
    :try_start_9b
    iget-object v0, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v0, "table"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mCallback:Lcom/android/server/enterprise/storage/TableCallback;

    invoke-interface {v0, v8}, Lcom/android/server/enterprise/storage/TableCallback;->onTableFound(Lcom/android/server/enterprise/storage/Table;)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_ae} :catch_92

    const/4 v8, 0x0

    goto/16 :goto_d

    nop

    :pswitch_data_b2
    .packed-switch 0x2
        :pswitch_14
        :pswitch_9b
    .end packed-switch
.end method
