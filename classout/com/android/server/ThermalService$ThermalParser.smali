.class public Lcom/android/server/ThermalService$ThermalParser;
.super Ljava/lang/Object;
.source "ThermalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThermalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThermalParser"
.end annotation


# static fields
.field private static final MIDTHERMAL:Ljava/lang/String; = "thermalconfig"

.field private static final PINFO:Ljava/lang/String; = "PlatformInfo"

.field private static final POLLDELAY:Ljava/lang/String; = "PollDelay"

.field private static final SENSOR:Ljava/lang/String; = "Sensor"

.field private static final THRESHOLD:Ljava/lang/String; = "Threshold"

.field private static final ZONE:Ljava/lang/String; = "Zone"


# instance fields
.field private done:Z

.field private mCurrSensor:Landroid/thermal/ThermalSensor;

.field private mCurrSensorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/thermal/ThermalSensor;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrZone:Landroid/thermal/ThermalZone;

.field mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

.field mInputStream:Ljava/io/FileReader;

.field mParser:Lorg/xmlpull/v1/XmlPullParser;

.field private mPlatformInfo:Lcom/android/server/ThermalService$PlatformInfo;

.field private mPollDelayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mThermalZones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/thermal/ThermalZone;",
            ">;"
        }
    .end annotation
.end field

.field private mThresholdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field tempZoneId:I

.field final synthetic this$0:Lcom/android/server/ThermalService;


# direct methods
.method constructor <init>(Lcom/android/server/ThermalService;Ljava/lang/String;)V
    .registers 7

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/server/ThermalService$ThermalParser;->this$0:Lcom/android/server/ThermalService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/ThermalService$ThermalParser;->done:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/ThermalService$ThermalParser;->tempZoneId:I

    iput-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mInputStream:Ljava/io/FileReader;

    :try_start_e
    const-string v2, "org.xmlpull.v1.XmlPullParserFactory"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance(Ljava/lang/String;Ljava/lang/Class;)Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;
    :try_end_29
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_29} :catch_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_29} :catch_4f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_29} :catch_5a

    :goto_29
    :try_start_29
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mInputStream:Ljava/io/FileReader;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPlatformInfo:Lcom/android/server/ThermalService$PlatformInfo;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensorList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mThermalZones:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mInputStream:Ljava/io/FileReader;
    :try_end_41
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_41} :catch_74
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_29 .. :try_end_41} :catch_7f

    if-nez v2, :cond_68

    :cond_43
    :goto_43
    return-void

    :catch_44
    move-exception v0

    invoke-static {}, Lcom/android/server/ThermalService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SecurityException caught in ThermalParser"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :catch_4f
    move-exception v0

    invoke-static {}, Lcom/android/server/ThermalService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IllegalArgumentException caught in ThermalParser"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :catch_5a
    move-exception v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    invoke-static {}, Lcom/android/server/ThermalService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XmlPullParserException caught in ThermalParser"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :cond_68
    :try_start_68
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mInputStream:Ljava/io/FileReader;

    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_73
    .catch Ljava/io/FileNotFoundException; {:try_start_68 .. :try_end_73} :catch_74
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_68 .. :try_end_73} :catch_7f

    goto :goto_43

    :catch_74
    move-exception v0

    invoke-static {}, Lcom/android/server/ThermalService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FileNotFoundException Exception in ThermalParser()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    :catch_7f
    move-exception v0

    invoke-static {}, Lcom/android/server/ThermalService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XmlPullParserException Exception in ThermalParser()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method


# virtual methods
.method public getPlatformInfo()Lcom/android/server/ThermalService$PlatformInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ThermalService$ThermalParser;->mPlatformInfo:Lcom/android/server/ThermalService$PlatformInfo;

    return-object v0
.end method

.method public getThermalZoneList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/thermal/ThermalZone;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/ThermalService$ThermalParser;->mThermalZones:Ljava/util/ArrayList;

    return-object v0
.end method

.method public parse()V
    .registers 6

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mInputStream:Ljava/io/FileReader;

    if-nez v3, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    if-nez v3, :cond_1a

    :try_start_9
    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mInputStream:Ljava/io/FileReader;

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_4

    :catch_f
    move-exception v0

    invoke-static {}, Lcom/android/server/ThermalService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IOException caught in parse() function"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_1a
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_20
    const/4 v3, 0x1

    if-eq v1, v3, :cond_59

    iget-boolean v3, p0, Lcom/android/server/ThermalService$ThermalParser;->done:Z

    if-nez v3, :cond_59

    packed-switch v1, :pswitch_data_64

    :goto_2a
    :pswitch_2a
    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_20

    :pswitch_31
    invoke-static {}, Lcom/android/server/ThermalService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StartDocument"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_3a} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_3a} :catch_4a

    goto :goto_2a

    :catch_3b
    move-exception v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_4

    :pswitch_40
    :try_start_40
    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/ThermalService$ThermalParser;->processStartElement(Ljava/lang/String;)V
    :try_end_49
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_40 .. :try_end_49} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_49} :catch_4a

    goto :goto_2a

    :catch_4a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :pswitch_4f
    :try_start_4f
    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/ThermalService$ThermalParser;->processEndElement(Ljava/lang/String;)V

    goto :goto_2a

    :cond_59
    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mInputStream:Ljava/io/FileReader;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mInputStream:Ljava/io/FileReader;

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_62
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4f .. :try_end_62} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_62} :catch_4a

    goto :goto_4

    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_31
        :pswitch_2a
        :pswitch_40
        :pswitch_4f
    .end packed-switch
.end method

.method processEndElement(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    const-string v0, "Sensor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensorList:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensorList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    :cond_16
    :goto_16
    return-void

    :cond_17
    const-string v0, "Zone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/ThermalService$ThermalParser;->mThermalZones:Ljava/util/ArrayList;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    iget-object v1, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensorList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/thermal/ThermalZone;->setSensorList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/server/ThermalService$ThermalParser;->mThermalZones:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensorList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ThermalService$ThermalParser;->tempZoneId:I

    goto :goto_16

    :cond_3d
    const-string v0, "Threshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    iget-object v1, p0, Lcom/android/server/ThermalService$ThermalParser;->mThresholdList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/thermal/ThermalSensor;->setThermalThresholds(Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mThresholdList:Ljava/util/ArrayList;

    goto :goto_16

    :cond_53
    const-string v0, "PollDelay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    iget-object v1, p0, Lcom/android/server/ThermalService$ThermalParser;->mPollDelayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/thermal/ThermalZone;->setPollDelay(Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPollDelayList:Ljava/util/ArrayList;

    goto :goto_16

    :cond_69
    const-string v0, "thermalconfig"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/android/server/ThermalService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Parsing Finished.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ThermalService$ThermalParser;->done:Z

    goto :goto_16
.end method

.method processStartElement(Ljava/lang/String;)V
    .registers 6

    :try_start_0
    const-string v2, "PlatformInfo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v2, Lcom/android/server/ThermalService$PlatformInfo;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->this$0:Lcom/android/server/ThermalService;

    invoke-direct {v2, v3}, Lcom/android/server/ThermalService$PlatformInfo;-><init>(Lcom/android/server/ThermalService;)V

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPlatformInfo:Lcom/android/server/ThermalService$PlatformInfo;

    :cond_11
    :goto_11
    return-void

    :cond_12
    const-string v2, "Sensor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensorList:Ljava/util/ArrayList;

    if-nez v2, :cond_25

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensorList:Ljava/util/ArrayList;

    :cond_25
    new-instance v2, Landroid/thermal/ThermalSensor;

    invoke-direct {v2}, Landroid/thermal/ThermalSensor;-><init>()V

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_11

    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11

    :cond_32
    :try_start_32
    const-string v2, "Zone"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mThermalZones:Ljava/util/ArrayList;

    if-nez v2, :cond_11

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mThermalZones:Ljava/util/ArrayList;

    goto :goto_11

    :cond_46
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPlatformInfo:Lcom/android/server/ThermalService$PlatformInfo;

    if-eqz v2, :cond_61

    const-string v2, "PlatformThermalStates"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPlatformInfo:Lcom/android/server/ThermalService$PlatformInfo;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/server/ThermalService$PlatformInfo;->mMaxThermalStates:I

    goto :goto_11

    :cond_61
    const-string v2, "PowerOptimizationMode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_77

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/ThermalService;->access$102(I)I

    goto :goto_11

    :cond_77
    const-string v2, "ZoneName"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ac

    iget v2, p0, Lcom/android/server/ThermalService$ThermalParser;->tempZoneId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_ac

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Modem"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a4

    :goto_92
    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    invoke-virtual {v2, v1}, Landroid/thermal/ThermalZone;->setZoneName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    iget v3, p0, Lcom/android/server/ThermalService$ThermalParser;->tempZoneId:I

    invoke-virtual {v2, v3}, Landroid/thermal/ThermalZone;->setZoneId(I)V

    goto/16 :goto_11

    :cond_a4
    new-instance v2, Landroid/thermal/ThermalZone;

    invoke-direct {v2}, Landroid/thermal/ThermalZone;-><init>()V

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    goto :goto_92

    :cond_ac
    const-string v2, "ZoneID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c2

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/ThermalService$ThermalParser;->tempZoneId:I

    goto/16 :goto_11

    :cond_c2
    const-string v2, "SupportsUEvent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_df

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    if-eqz v2, :cond_df

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/thermal/ThermalZone;->setSupportsUEvent(I)V

    goto/16 :goto_11

    :cond_df
    const-string v2, "SensorLogic"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_fc

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    if-eqz v2, :cond_fc

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/thermal/ThermalZone;->setSensorLogic(I)V

    goto/16 :goto_11

    :cond_fc
    const-string v2, "DebounceInterval"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_119

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    if-eqz v2, :cond_119

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/thermal/ThermalZone;->setDBInterval(I)V

    goto/16 :goto_11

    :cond_119
    const-string v2, "PollDelay"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12e

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrZone:Landroid/thermal/ThermalZone;

    if-eqz v2, :cond_12e

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPollDelayList:Ljava/util/ArrayList;

    goto/16 :goto_11

    :cond_12e
    const-string v2, "SensorID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14b

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    if-eqz v2, :cond_14b

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/thermal/ThermalSensor;->setSensorID(I)V

    goto/16 :goto_11

    :cond_14b
    const-string v2, "SensorName"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    if-eqz v2, :cond_164

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/thermal/ThermalSensor;->setSensorName(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_164
    const-string v2, "SensorPath"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17d

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    if-eqz v2, :cond_17d

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/thermal/ThermalSensor;->setSensorPath(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_17d
    const-string v2, "InputTemp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_196

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    if-eqz v2, :cond_196

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/thermal/ThermalSensor;->setInputTempPath(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_196
    const-string v2, "HighTemp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1af

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    if-eqz v2, :cond_1af

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/thermal/ThermalSensor;->setHighTempPath(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_1af
    const-string v2, "LowTemp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c8

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    if-eqz v2, :cond_1c8

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/thermal/ThermalSensor;->setLowTempPath(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_1c8
    const-string v2, "UEventDevPath"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e1

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    if-eqz v2, :cond_1e1

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/thermal/ThermalSensor;->setUEventDevPath(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_1e1
    const-string v2, "Threshold"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f6

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mCurrSensor:Landroid/thermal/ThermalSensor;

    if-eqz v2, :cond_1f6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mThresholdList:Ljava/util/ArrayList;

    goto/16 :goto_11

    :cond_1f6
    const-string v2, "DelayTOff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_217

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPollDelayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_217

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPollDelayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    :cond_217
    const-string v2, "DelayNormal"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_238

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPollDelayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_238

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPollDelayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    :cond_238
    const-string v2, "DelayWarning"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_259

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPollDelayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_259

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPollDelayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    :cond_259
    const-string v2, "DelayAlert"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27a

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPollDelayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_27a

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPollDelayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    :cond_27a
    const-string v2, "DelayCritical"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29b

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPollDelayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_29b

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mPollDelayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    :cond_29b
    const-string v2, "ThresholdTOff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2bc

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mThresholdList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2bc

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mThresholdList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    :cond_2bc
    const-string v2, "ThresholdNormal"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2dd

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mThresholdList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2dd

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mThresholdList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    :cond_2dd
    const-string v2, "ThresholdWarning"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2fe

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mThresholdList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2fe

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mThresholdList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    :cond_2fe
    const-string v2, "ThresholdAlert"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31f

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mThresholdList:Ljava/util/ArrayList;

    if-eqz v2, :cond_31f

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mThresholdList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    :cond_31f
    const-string v2, "ThresholdCritical"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mThresholdList:Ljava/util/ArrayList;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/ThermalService$ThermalParser;->mThresholdList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/ThermalService$ThermalParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_33e
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_33e} :catch_2d

    goto/16 :goto_11
.end method
