.class Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
.super Landroid/os/UEventObserver;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WiredAccessoryObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;,
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;,
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;
    }
.end annotation


# static fields
.field private static final BIT_HDMI_16_FORMAT:I = 0x10000

.field private static final BIT_HDMI_176_SAMPLERATE:I = 0x1000000

.field private static final BIT_HDMI_192_SAMPLERATE:I = 0x2000000

.field private static final BIT_HDMI_2:I = 0x2

.field private static final BIT_HDMI_20_FORMAT:I = 0x20000

.field private static final BIT_HDMI_24_FORMAT:I = 0x40000

.field private static final BIT_HDMI_32_SAMPLERATE:I = 0x80000

.field private static final BIT_HDMI_44_SAMPLERATE:I = 0x100000

.field private static final BIT_HDMI_48_SAMPLERATE:I = 0x200000

.field private static final BIT_HDMI_6:I = 0x20

.field private static final BIT_HDMI_88_SAMPLERATE:I = 0x400000

.field private static final BIT_HDMI_96_SAMPLERATE:I = 0x800000

.field private static final BIT_PCM_S16_LE:I = 0x1

.field private static final BIT_PCM_S24_3LE:I = 0x4

.field private static final BIT_PCM_S24_LE:I = 0x2

.field private static final BIT_PCM_S32_LE:I = 0x8

.field private static final CH_HDMI_AUDIO:Ljava/lang/String; = "ch_hdmi_audio"

.field private static final PCM_FORMAT_S16_LE:I = 0x0

.field private static final PCM_FORMAT_S24_3LE:I = 0x4

.field private static final PCM_FORMAT_S24_LE:I = 0x3

.field private static final PCM_FORMAT_S32_LE:I = 0x1

.field private static final SMART_DOCK_CONNECTED:Ljava/lang/String; = "10"

.field private static final USB_AUDIO_DEVICE_UEVENT:Ljava/lang/String; = "MAJOR=116"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler_usbAudio:Landroid/os/Handler;

.field private final mUEventInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUEventUsbAudioObserver:Landroid/os/UEventObserver;

.field mVUsbAudioInfo:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;",
            ">;"
        }
    .end annotation
.end field

.field private saveCHInfo:I

.field final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/WiredAccessoryManager;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->saveCHInfo:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mVUsbAudioInfo:Ljava/util/Vector;

    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$1;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;)V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventUsbAudioObserver:Landroid/os/UEventObserver;

    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$2;

    invoke-direct {v0, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$2;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;)V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mHandler_usbAudio:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->makeObservedUEventList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->sendUSBAudioIntent(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;IZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getAccInfo(IZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->update_usbaudio(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;)V

    return-void
.end method

.method private getAccInfo(IZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;
    .registers 25

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    new-instance v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Lcom/android/server/WiredAccessoryManager$1;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/asound/card"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/stream"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_c3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->parseAccInfo(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_bf

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mVUsbAudioInfo:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->trimToSize()V

    const/4 v14, 0x0

    :goto_4a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mVUsbAudioInfo:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v14, v3, :cond_bf

    new-instance v13, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Lcom/android/server/WiredAccessoryManager$1;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mVUsbAudioInfo:Ljava/util/Vector;

    invoke-virtual {v3, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;

    #getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->isPlayback:Z
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1100(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Z

    move-result v3

    move/from16 v0, p2

    if-ne v3, v0, :cond_92

    const-string v3, "S16_LE"

    #getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    #getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1300(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_95

    #getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1300(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)I

    move-result v3

    or-int/2addr v15, v3

    #getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1400(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getSamplingRate(Ljava/lang/String;I)I

    move-result v17

    :cond_91
    :goto_91
    const/4 v11, 0x1

    :cond_92
    add-int/lit8 v14, v14, 0x1

    goto :goto_4a

    :cond_95
    #getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1300(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_aa

    or-int/lit8 v15, v15, 0x2

    #getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1400(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getSamplingRate(Ljava/lang/String;I)I

    move-result v17

    goto :goto_91

    :cond_aa
    #getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1300(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_91

    or-int/lit8 v15, v15, 0x20

    #getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1400(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getSamplingRate(Ljava/lang/String;I)I

    move-result v18

    goto :goto_91

    :cond_bf
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->isSmartDockConnected()Z

    move-result v9

    :cond_c3
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move/from16 v3, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v10, p2

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->setUsbAudioData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZII)V

    return-object v2
.end method

.method private getFactoryMode()Z
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/FactoryApp/factorymode"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_1b

    move-result-object v1

    :goto_f
    if-eqz v1, :cond_28

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v2, 0x0

    :goto_1a
    return v2

    :catch_1b
    move-exception v0

    const-string v1, "OFF"

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cannot open file : /efs/FactoryApp/factorymode "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_28
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Current mode is Factorymode, So Popup UI will not be apear"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_1a
.end method

.method private getSamplingRate(Ljava/lang/String;I)I
    .registers 12

    invoke-direct {p0, p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->removeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/StringTokenizer;

    const-string v6, " "

    invoke-direct {v3, v1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_c
    :goto_c
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_6f

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    const/4 v4, 0x0

    :try_start_1d
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x1

    if-ne p2, v6, :cond_6b

    const v6, 0xbb80

    if-le v4, v6, :cond_6b

    if-eqz v2, :cond_6b

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "not supported SamplingRate for 16 bit : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_45} :catch_46

    goto :goto_c

    :catch_46
    move-exception v0

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Variable SamplingRate : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", so max rate setting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0xbb80

    goto :goto_c

    :cond_6b
    if-ge v2, v4, :cond_c

    move v2, v4

    goto :goto_c

    :cond_6f
    return v2
.end method

.method private isFactorySim()Z
    .registers 6

    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    const-string v0, "999999999999999"

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_25

    const-string v3, "999999999999999"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Factory SIM is used now, So Popup UI will not be apear"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :goto_24
    return v3

    :cond_25
    const/4 v3, 0x0

    goto :goto_24
.end method

.method private makeObservedUEventList()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;",
            ">;"
        }
    .end annotation

    const/16 v6, 0x10

    const/4 v5, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    #getter for: Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z
    invoke-static {v2}, Lcom/android/server/WiredAccessoryManager;->access$600(Lcom/android/server/WiredAccessoryManager;)Z

    move-result v2

    if-nez v2, :cond_22

    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string v2, "h2w"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;II)V

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    :goto_22
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string v2, "usb_audio"

    const/4 v3, 0x4

    const/16 v4, 0x8

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;II)V

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_35
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string v2, "ch_hdmi_audio"

    invoke-direct {v1, p0, v2, v6, v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;II)V

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_45
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string v2, "hotshoe_mic"

    const/16 v3, 0x20

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;II)V

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_57
    return-object v0

    :cond_58
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "This kernel does not have wired headset support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_62
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "This kernel does not have usb audio support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    :cond_6c
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string v2, "hdmi_audio"

    invoke-direct {v1, p0, v2, v6, v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;II)V

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_45

    :cond_7d
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string v2, "hdmi"

    invoke-direct {v1, p0, v2, v6, v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;II)V

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_8e

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_45

    :cond_8e
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "This kernel does not have HDMI audio support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    :cond_98
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "This kernel does not have ext mic support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57
.end method

.method private parseAccInfo(Ljava/lang/String;)I
    .registers 23

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mVUsbAudioInfo:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->clear()V

    const/4 v13, 0x1

    const/4 v12, 0x0

    :try_start_d
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_1e7
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_1ec

    :try_start_14
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_47

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "the "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is not exist"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_14 .. :try_end_3e} :catchall_1e9
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_3e} :catch_1ee

    const/16 v18, 0x0

    if-eqz v5, :cond_1f3

    const/4 v4, 0x0

    :goto_43
    if-eqz v9, :cond_46

    :try_start_45
    throw v9
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_46} :catch_1dc

    :cond_46
    :goto_46
    return v18

    :cond_47
    :try_start_47
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/FileReader;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_55
    .catchall {:try_start_47 .. :try_end_55} :catchall_1e9
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_55} :catch_1ee

    :try_start_55
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v18

    const-string v19, "####################################################"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    :goto_5e
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1bf

    new-instance v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Lcom/android/server/WiredAccessoryManager$1;)V

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "### INFO : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_1aa

    const/16 v18, 0x0

    move/from16 v0, v18

    #setter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->isPlayback:Z
    invoke-static {v2, v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1102(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;Z)Z

    :goto_96
    const-string v18, "Capture:"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a3

    const/4 v12, 0x1

    :cond_a3
    new-instance v14, Ljava/util/StringTokenizer;

    const-string v18, ":"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_5e

    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v18, "Format"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5e

    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    #setter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1202(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_5e

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "### INFO : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Ljava/util/StringTokenizer;

    const-string v18, ":"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v18, "Channels"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5e

    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    #setter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I
    invoke-static {v2, v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1302(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;I)I

    :cond_125
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_5e

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "### INFO : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v16, Ljava/util/StringTokenizer;

    const-string v18, ":"

    invoke-direct/range {v16 .. v18}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v18, "Rates"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_125

    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    #setter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1402(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mVUsbAudioInfo:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_17a
    .catchall {:try_start_55 .. :try_end_17a} :catchall_1b3
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_17a} :catch_17c

    goto/16 :goto_5e

    :catch_17c
    move-exception v11

    move-object v9, v10

    move-object v4, v5

    :goto_17f
    :try_start_17f
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "cannot create file : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19d
    .catchall {:try_start_17f .. :try_end_19d} :catchall_1e7

    const/4 v13, 0x0

    if-eqz v4, :cond_1a1

    const/4 v4, 0x0

    :cond_1a1
    if-eqz v9, :cond_1a6

    :try_start_1a3
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_1a6
    .catch Ljava/io/IOException; {:try_start_1a3 .. :try_end_1a6} :catch_1d7

    :cond_1a6
    :goto_1a6
    move/from16 v18, v13

    goto/16 :goto_46

    :cond_1aa
    const/16 v18, 0x1

    :try_start_1ac
    move/from16 v0, v18

    #setter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->isPlayback:Z
    invoke-static {v2, v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1102(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;Z)Z
    :try_end_1b1
    .catchall {:try_start_1ac .. :try_end_1b1} :catchall_1b3
    .catch Ljava/io/IOException; {:try_start_1ac .. :try_end_1b1} :catch_17c

    goto/16 :goto_96

    :catchall_1b3
    move-exception v18

    move-object v9, v10

    move-object v4, v5

    :goto_1b6
    if-eqz v4, :cond_1b9

    const/4 v4, 0x0

    :cond_1b9
    if-eqz v9, :cond_1be

    :try_start_1bb
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_1be
    .catch Ljava/io/IOException; {:try_start_1bb .. :try_end_1be} :catch_1d2

    :cond_1be
    :goto_1be
    throw v18

    :cond_1bf
    :try_start_1bf
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v18

    const-string v19, "####################################################"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c8
    .catchall {:try_start_1bf .. :try_end_1c8} :catchall_1b3
    .catch Ljava/io/IOException; {:try_start_1bf .. :try_end_1c8} :catch_17c

    if-eqz v5, :cond_1f1

    const/4 v4, 0x0

    :goto_1cb
    if-eqz v10, :cond_1d0

    :try_start_1cd
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_1d0
    .catch Ljava/io/IOException; {:try_start_1cd .. :try_end_1d0} :catch_1e2

    :cond_1d0
    :goto_1d0
    move-object v9, v10

    goto :goto_1a6

    :catch_1d2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1be

    :catch_1d7
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a6

    :catch_1dc
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_46

    :catch_1e2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d0

    :catchall_1e7
    move-exception v18

    goto :goto_1b6

    :catchall_1e9
    move-exception v18

    move-object v4, v5

    goto :goto_1b6

    :catch_1ec
    move-exception v11

    goto :goto_17f

    :catch_1ee
    move-exception v11

    move-object v4, v5

    goto :goto_17f

    :cond_1f1
    move-object v4, v5

    goto :goto_1cb

    :cond_1f3
    move-object v4, v5

    goto/16 :goto_43
.end method

.method private parseHdmiInfo(ILjava/lang/String;)Ljava/lang/String;
    .registers 13

    const/high16 v9, 0x1

    const/4 v4, 0x1

    const/high16 v8, 0x20

    const/high16 v7, 0x10

    const/high16 v6, 0x8

    and-int/lit16 v0, p1, 0xff

    const/high16 v5, 0x7

    and-int v1, p1, v5

    const/high16 v5, 0x3f8

    and-int v3, p1, v5

    const/4 v5, -0x1

    if-ne p1, v5, :cond_1d

    const/4 v2, 0x0

    :goto_17
    move p1, v2

    if-nez v0, :cond_1f

    const-string v4, "NONE"

    :goto_1c
    return-object v4

    :cond_1d
    move v2, v4

    goto :goto_17

    :cond_1f
    if-ne p1, v4, :cond_7d

    iput v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->saveCHInfo:I

    :cond_23
    :goto_23
    const/high16 v4, 0x4

    and-int/2addr v4, v1

    const/high16 v5, 0x4

    if-ne v4, v5, :cond_82

    const/16 v1, 0x28

    :goto_2c
    const/high16 v4, 0x200

    and-int/2addr v4, v3

    const/high16 v5, 0x200

    if-ne v4, v5, :cond_8c

    const v3, 0x2ee00

    :goto_36
    const/16 v1, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_48

    const v4, 0xbb80

    if-le v3, v4, :cond_48

    and-int v4, v3, v8

    if-ne v4, v8, :cond_cb

    const v3, 0xbb80

    :cond_48
    :goto_48
    invoke-direct {p0, p1, v0, v1, v3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->sendIntentToPopupUI(IIII)I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_51

    const/16 v1, 0x10

    :cond_51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1c

    :cond_7d
    if-nez p1, :cond_23

    iget v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->saveCHInfo:I

    goto :goto_23

    :cond_82
    and-int v4, v1, v9

    if-ne v4, v9, :cond_89

    const/16 v1, 0x10

    goto :goto_2c

    :cond_89
    const/16 v1, 0x10

    goto :goto_2c

    :cond_8c
    const/high16 v4, 0x100

    and-int/2addr v4, v3

    const/high16 v5, 0x100

    if-ne v4, v5, :cond_97

    const v3, 0x2b110

    goto :goto_36

    :cond_97
    const/high16 v4, 0x80

    and-int/2addr v4, v3

    const/high16 v5, 0x80

    if-ne v4, v5, :cond_a2

    const v3, 0x17700

    goto :goto_36

    :cond_a2
    const/high16 v4, 0x40

    and-int/2addr v4, v3

    const/high16 v5, 0x40

    if-ne v4, v5, :cond_ad

    const v3, 0x15888

    goto :goto_36

    :cond_ad
    and-int v4, v3, v8

    if-ne v4, v8, :cond_b5

    const v3, 0xbb80

    goto :goto_36

    :cond_b5
    and-int v4, v3, v7

    if-ne v4, v7, :cond_be

    const v3, 0xac44

    goto/16 :goto_36

    :cond_be
    and-int v4, v3, v6

    if-ne v4, v6, :cond_c6

    const/16 v3, 0x7d00

    goto/16 :goto_36

    :cond_c6
    const v3, 0xbb80

    goto/16 :goto_36

    :cond_cb
    and-int v4, v3, v7

    if-ne v4, v7, :cond_d4

    const v3, 0xac44

    goto/16 :goto_48

    :cond_d4
    and-int v4, v3, v6

    if-ne v4, v6, :cond_dc

    const/16 v3, 0x7d00

    goto/16 :goto_48

    :cond_dc
    const v3, 0xbb80

    goto/16 :goto_48
.end method

.method private removeChar(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-nez p1, :cond_5

    const-string v2, ""

    :goto_4
    return-object v2

    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2d

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2a

    :cond_23
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_2d
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method private final declared-synchronized sendIntentToPopupUI(IIII)I
    .registers 14

    const/16 v8, 0x20

    const/4 v7, 0x1

    const/4 v6, -0x1

    monitor-enter p0

    :try_start_5
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hdmi_audio_output"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/server/WiredAccessoryManager;->mHdmiSettingValue:I
    invoke-static {v2, v3}, Lcom/android/server/WiredAccessoryManager;->access$1602(Lcom/android/server/WiredAccessoryManager;I)I

    const/4 v1, 0x0

    and-int/lit8 v2, p2, 0x20

    if-ne v2, v8, :cond_be

    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    #getter for: Lcom/android/server/WiredAccessoryManager;->mHdmiSettingValue:I
    invoke-static {v2}, Lcom/android/server/WiredAccessoryManager;->access$1600(Lcom/android/server/WiredAccessoryManager;)I

    move-result v2

    if-ne v2, v6, :cond_be

    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getFactoryMode()Z

    move-result v2

    if-nez v2, :cond_be

    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->isFactorySim()Z

    move-result v2

    if-nez v2, :cond_be

    if-nez v1, :cond_be

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent BroadCasting : android.intent.action.ACTION_HDMI_AUDIO_CH_POPUP(state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", channels:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " format_info:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sampleRate_info:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_a4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "com.sec.android.app.popupuireceiver"

    const-string v3, "com.sec.android.app.popupuireceiver.popupAudio"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "AudioState"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "Audiochannels"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "AudioFormat"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "AudioSampleRate"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_9c
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/server/WiredAccessoryManager;->IntentToPopupUI:Z
    invoke-static {v2, v3}, Lcom/android/server/WiredAccessoryManager;->access$1702(Lcom/android/server/WiredAccessoryManager;Z)Z
    :try_end_a2
    .catchall {:try_start_5 .. :try_end_a2} :catchall_bb

    :goto_a2
    monitor-exit p0

    return p2

    :cond_a4
    :try_start_a4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_HDMI_AUDIO_CH_POPUP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "state"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "channels"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_ba
    .catchall {:try_start_a4 .. :try_end_ba} :catchall_bb

    goto :goto_9c

    :catchall_bb
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_be
    and-int/lit8 v2, p2, 0x20

    if-ne v2, v8, :cond_ca

    :try_start_c2
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    #getter for: Lcom/android/server/WiredAccessoryManager;->mHdmiSettingValue:I
    invoke-static {v2}, Lcom/android/server/WiredAccessoryManager;->access$1600(Lcom/android/server/WiredAccessoryManager;)I

    move-result v2

    if-eqz v2, :cond_cc

    :cond_ca
    if-ne v1, v7, :cond_cd

    :cond_cc
    const/4 p2, 0x2

    :cond_cd
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "not show POPUP UI"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/WiredAccessoryManager;->IntentToPopupUI:Z
    invoke-static {v2, v3}, Lcom/android/server/WiredAccessoryManager;->access$1702(Lcom/android/server/WiredAccessoryManager;Z)Z
    :try_end_dc
    .catchall {:try_start_c2 .. :try_end_dc} :catchall_bb

    goto :goto_a2
.end method

.method private final sendUSBAudioIntent(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;)V
    .registers 8

    const/4 v5, 0x6

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "state"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "card"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getCardNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "device"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getDeviceNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "channels"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getChannels()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "samplingRate2"

    invoke-virtual {p1, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getSamplingRate(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "samplingRate6"

    invoke-virtual {p1, v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getSamplingRate(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "usb_headset"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "issmartdock"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getIsSmartdock()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "hostDevice"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "isplayback"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getIsPlayback()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "24format"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->get24Format()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "supportedformat"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getSupportedPCMFormat()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "samplingRate24"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getSamplingRate24()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " channels:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getChannels()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " samplingRate2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getSamplingRate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " samplingRate6:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getSamplingRate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " issmartdock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getIsSmartdock()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isplayback:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getIsPlayback()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " format:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->get24Format()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " supporedformat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getSupportedPCMFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " samplingRate24="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getSamplingRate24()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_33

    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const-string v2, "ch_hdmi_audio"

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-direct {p0, p3, p2}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->parseHdmiInfo(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "NONE"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    :cond_33
    :goto_33
    return-void

    :cond_34
    const/4 v2, -0x1

    if-ne p3, v2, :cond_48

    const/4 p3, 0x0

    :cond_38
    :goto_38
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    #getter for: Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I
    invoke-static {v3}, Lcom/android/server/WiredAccessoryManager;->access$1800(Lcom/android/server/WiredAccessoryManager;)I

    move-result v3

    invoke-virtual {v1, v3, p3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->computeNewHeadsetState(II)I

    move-result v3

    #calls: Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;I)V
    invoke-static {v2, p2, v3}, Lcom/android/server/WiredAccessoryManager;->access$1900(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;I)V

    goto :goto_33

    :cond_48
    const/4 p3, 0x1

    goto :goto_38

    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateStateUSBDevice()V
    .registers 36

    const-string v26, "/sys/class/sound"

    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v26

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    const-string v4, ""

    const/16 v22, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    :goto_13
    :try_start_13
    array-length v0, v13

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v14, v0, :cond_60

    aget-object v12, v13, v14

    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v32

    if-eqz v32, :cond_194

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    const-string v32, "card"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_194

    const-string v32, "card0"

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_194

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "card Name is ==> "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, v21

    const/16 v22, 0x1

    :cond_60
    if-eqz v22, :cond_30a

    new-instance v25, Ljava/io/File;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_8b
    .catchall {:try_start_13 .. :try_end_8b} :catchall_2fa
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_8b} :catch_18a
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_8b} :catch_2e9

    move-result-object v24

    const/16 v18, 0x0

    move-object/from16 v16, v15

    :goto_90
    :try_start_90
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v18

    move/from16 v1, v32

    if-ge v0, v1, :cond_308

    aget-object v23, v24, v18

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->isDirectory()Z

    move-result v32

    if-eqz v32, :cond_320

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    const-string v32, "pcm"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_bf

    const-string v32, "control"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_320

    :cond_bf
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/uevent"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    new-instance v30, Ljava/io/File;

    invoke-direct/range {v30 .. v31}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v32

    if-eqz v32, :cond_320

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "uevent node ===> "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "ACTION=add\u0000DEVPATH="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\u0000"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    new-instance v15, Ljava/io/BufferedReader;

    new-instance v32, Ljava/io/FileReader;

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v32

    invoke-direct {v15, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_146
    .catchall {:try_start_90 .. :try_end_146} :catchall_313
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_146} :catch_31b
    .catch Ljava/lang/NullPointerException; {:try_start_90 .. :try_end_146} :catch_317

    :goto_146
    :try_start_146
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_198

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\u0000"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "uevent contents ===> "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_189
    .catchall {:try_start_146 .. :try_end_189} :catchall_2fa
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_189} :catch_18a
    .catch Ljava/lang/NullPointerException; {:try_start_146 .. :try_end_189} :catch_2e9

    goto :goto_146

    :catch_18a
    move-exception v10

    :goto_18b
    :try_start_18b
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_18e
    .catchall {:try_start_18b .. :try_end_18e} :catchall_2fa

    if-eqz v15, :cond_193

    :try_start_190
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_193
    .catch Ljava/io/IOException; {:try_start_190 .. :try_end_193} :catch_306

    :cond_193
    :goto_193
    return-void

    :cond_194
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_13

    :cond_198
    :try_start_198
    new-instance v11, Landroid/os/UEventObserver$UEvent;

    move-object/from16 v0, v29

    invoke-direct {v11, v0}, Landroid/os/UEventObserver$UEvent;-><init>(Ljava/lang/String;)V

    const-string v32, "ACTION"

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v32, "DEVPATH"

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v32, "MAJOR"

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v32, "MINOR"

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v32, "DEVNAME"

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "1"

    const-string v6, "0"

    const/16 v27, 0x0

    const/16 v17, 0x0

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "onUEvent(device) :: action = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", MAJOR = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", MINOR = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", DEVPATH = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "DEVNAME = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v32, "116"

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2e0

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v32, "usb"

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_2e0

    const-string v32, "gadget"

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_2e0

    const-string v32, "p"

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_267

    const-string v32, "c"

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_2e0

    :cond_267
    const-string v32, "p"

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_273

    const/16 v17, 0x1

    :cond_273
    const/16 v32, 0x8

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, " cardNumber = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v32, 0xa

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, " deviceNumber = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v32, "add"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2e6

    const/16 v27, 0x1

    :goto_2cf
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getAccInfo(IZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->update_usbaudio(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;)V
    :try_end_2e0
    .catchall {:try_start_198 .. :try_end_2e0} :catchall_2fa
    .catch Ljava/io/IOException; {:try_start_198 .. :try_end_2e0} :catch_18a
    .catch Ljava/lang/NullPointerException; {:try_start_198 .. :try_end_2e0} :catch_2e9

    :cond_2e0
    :goto_2e0
    add-int/lit8 v18, v18, 0x1

    move-object/from16 v16, v15

    goto/16 :goto_90

    :cond_2e6
    const/16 v27, 0x0

    goto :goto_2cf

    :catch_2e9
    move-exception v10

    :goto_2ea
    :try_start_2ea
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_2ed
    .catchall {:try_start_2ea .. :try_end_2ed} :catchall_2fa

    if-eqz v15, :cond_193

    :try_start_2ef
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_2f2
    .catch Ljava/io/IOException; {:try_start_2ef .. :try_end_2f2} :catch_2f4

    goto/16 :goto_193

    :catch_2f4
    move-exception v10

    :goto_2f5
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_193

    :catchall_2fa
    move-exception v32

    :goto_2fb
    if-eqz v15, :cond_300

    :try_start_2fd
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_300
    .catch Ljava/io/IOException; {:try_start_2fd .. :try_end_300} :catch_301

    :cond_300
    :goto_300
    throw v32

    :catch_301
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_300

    :catch_306
    move-exception v10

    goto :goto_2f5

    :cond_308
    move-object/from16 v15, v16

    :cond_30a
    if-eqz v15, :cond_193

    :try_start_30c
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_30f
    .catch Ljava/io/IOException; {:try_start_30c .. :try_end_30f} :catch_311

    goto/16 :goto_193

    :catch_311
    move-exception v10

    goto :goto_2f5

    :catchall_313
    move-exception v32

    move-object/from16 v15, v16

    goto :goto_2fb

    :catch_317
    move-exception v10

    move-object/from16 v15, v16

    goto :goto_2ea

    :catch_31b
    move-exception v10

    move-object/from16 v15, v16

    goto/16 :goto_18b

    :cond_320
    move-object/from16 v15, v16

    goto :goto_2e0
.end method

.method private final declared-synchronized update_usbaudio(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;)V
    .registers 7

    monitor-enter p0

    const/16 v0, 0x1f4

    :try_start_3
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    #getter for: Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/WiredAccessoryManager;->access$300(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mHandler_usbAudio:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mHandler_usbAudio:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method init()V
    .registers 13

    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    #getter for: Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/WiredAccessoryManager;->access$400(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    :try_start_7
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v8

    const-string v10, "init()"

    invoke-static {v8, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x400

    new-array v0, v8, [C

    const/4 v5, 0x0

    :goto_15
    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_a7

    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_88

    const/4 v3, 0x0

    :try_start_26
    new-instance v4, Ljava/io/FileReader;

    invoke-virtual {v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_a0
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_2f} :catch_5e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_8b

    const/4 v8, 0x0

    const/16 v10, 0x400

    :try_start_32
    invoke-virtual {v4, v0, v8, v10}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    new-instance v8, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v8, v0, v10, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_55

    invoke-virtual {v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v8, v10, v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_55
    .catchall {:try_start_32 .. :try_end_55} :catchall_ec
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_55} :catch_f2
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_55} :catch_ef

    :cond_55
    if-eqz v4, :cond_5a

    :try_start_57
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_88
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_e6

    :cond_5a
    :goto_5a
    move-object v3, v4

    :cond_5b
    :goto_5b
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :catch_5e
    move-exception v2

    :goto_5f
    :try_start_5f
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " not found while attempting to determine initial switch state"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_5f .. :try_end_7d} :catchall_a0

    if-eqz v3, :cond_5b

    :try_start_7f
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_88
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_5b

    :catch_83
    move-exception v2

    :try_start_84
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5b

    :catchall_88
    move-exception v8

    monitor-exit v9
    :try_end_8a
    .catchall {:try_start_84 .. :try_end_8a} :catchall_88

    throw v8

    :catch_8b
    move-exception v2

    :goto_8c
    :try_start_8c
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v8

    const-string v10, ""

    invoke-static {v8, v10, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_95
    .catchall {:try_start_8c .. :try_end_95} :catchall_a0

    if-eqz v3, :cond_5b

    :try_start_97
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_88
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9b

    goto :goto_5b

    :catch_9b
    move-exception v2

    :try_start_9c
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_88

    goto :goto_5b

    :catchall_a0
    move-exception v8

    :goto_a1
    if-eqz v3, :cond_a6

    :try_start_a3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_88
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_e1

    :cond_a6
    :goto_a6
    :try_start_a6
    throw v8

    :cond_a7
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateUSBDevice()V

    monitor-exit v9
    :try_end_ab
    .catchall {:try_start_a6 .. :try_end_ab} :catchall_88

    const/4 v5, 0x0

    :goto_ac
    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_d9

    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DEVPATH="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->startObserving(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_ac

    :cond_d9
    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventUsbAudioObserver:Landroid/os/UEventObserver;

    const-string v9, "MAJOR=116"

    invoke-virtual {v8, v9}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    return-void

    :catch_e1
    move-exception v2

    :try_start_e2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a6

    :catch_e6
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_ea
    .catchall {:try_start_e2 .. :try_end_ea} :catchall_88

    goto/16 :goto_5a

    :catchall_ec
    move-exception v8

    move-object v3, v4

    goto :goto_a1

    :catch_ef
    move-exception v2

    move-object v3, v4

    goto :goto_8c

    :catch_f2
    move-exception v2

    move-object v3, v4

    goto/16 :goto_5f
.end method

.method public isSmartDockConnected()Z
    .registers 14

    const/16 v12, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v10

    const-string v11, "checkSmartDock"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v12, [C

    const-string v0, "sys/class/sec/switch/adc"

    const/4 v5, 0x0

    const/4 v2, 0x0

    :try_start_13
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_73
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_18} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_61

    const/4 v10, 0x0

    const/16 v11, 0x8

    :try_start_1b
    invoke-virtual {v6, v1, v10, v11}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    if-le v7, v8, :cond_3c

    new-instance v3, Ljava/lang/String;

    const/4 v10, 0x0

    add-int/lit8 v11, v7, -0x1

    invoke-direct {v3, v1, v10, v11}, Ljava/lang/String;-><init>([CII)V

    move-object v2, v3

    :goto_2d
    const-string v10, "10"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_32
    .catchall {:try_start_1b .. :try_end_32} :catchall_89
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_32} :catch_8f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_32} :catch_8c

    move-result v10

    if-eqz v10, :cond_44

    if-eqz v6, :cond_3a

    :try_start_37
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_7f

    :cond_3a
    :goto_3a
    move-object v5, v6

    :goto_3b
    return v8

    :cond_3c
    :try_start_3c
    new-instance v3, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v3, v1, v10, v7}, Ljava/lang/String;-><init>([CII)V
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_89
    .catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_42} :catch_8f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_42} :catch_8c

    move-object v2, v3

    goto :goto_2d

    :cond_44
    if-eqz v6, :cond_49

    :try_start_46
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_84

    :cond_49
    :goto_49
    move-object v5, v6

    :cond_4a
    :goto_4a
    move v8, v9

    goto :goto_3b

    :catch_4c
    move-exception v4

    :goto_4d
    :try_start_4d
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v8

    const-string v10, "checkSmartDock This kernel does not have wired headset support "

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_4d .. :try_end_56} :catchall_73

    if-eqz v5, :cond_4a

    :try_start_58
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_4a

    :catch_5c
    move-exception v4

    :goto_5d
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4a

    :catch_61
    move-exception v4

    :goto_62
    :try_start_62
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v8

    const-string v10, ""

    invoke-static {v8, v10, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6b
    .catchall {:try_start_62 .. :try_end_6b} :catchall_73

    if-eqz v5, :cond_4a

    :try_start_6d
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_4a

    :catch_71
    move-exception v4

    goto :goto_5d

    :catchall_73
    move-exception v8

    :goto_74
    if-eqz v5, :cond_79

    :try_start_76
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    :cond_79
    :goto_79
    throw v8

    :catch_7a
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_79

    :catch_7f
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3a

    :catch_84
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49

    :catchall_89
    move-exception v8

    move-object v5, v6

    goto :goto_74

    :catch_8c
    move-exception v4

    move-object v5, v6

    goto :goto_62

    :catch_8f
    move-exception v4

    move-object v5, v6

    goto :goto_4d
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 9

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Headset UEVENT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1e
    const-string v4, "DEVPATH"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "SWITCH_NAME"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "SWITCH_STATE"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    #getter for: Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/WiredAccessoryManager;->access$400(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_3b} :catch_43

    :try_start_3b
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V

    monitor-exit v5

    :goto_3f
    return-void

    :catchall_40
    move-exception v4

    monitor-exit v5
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_40

    :try_start_42
    throw v4
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_43} :catch_43

    :catch_43
    move-exception v1

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse switch state from event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f
.end method
