.class Lcom/android/server/power/ShutdownDialog$StatePrepare;
.super Ljava/lang/Object;
.source "ShutdownDialog.java"

# interfaces
.implements Lcom/android/server/power/ShutdownDialog$DrawState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatePrepare"
.end annotation


# instance fields
.field private hasAnim:Z

.field private hasSound:Z

.field final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method private constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog$StatePrepare;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method

.method private needToPlayCommonSound()Z
    .registers 5

    const-string v2, ""

    const-string v3, "KOR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v0, 0x0

    if-nez v0, :cond_d

    if-nez v1, :cond_f

    :cond_d
    const/4 v2, 0x1

    :goto_e
    return v2

    :cond_f
    const/4 v2, 0x0

    goto :goto_e
.end method

.method private playSoundForKor()V
    .registers 4

    const-string v1, "ShutdownDialog"

    const-string v2, "shutdown Dialog kor power snd"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    const-string v1, "service.media.powersnd"

    const-string v2, "2"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ctl.start"

    const-string v2, "powersnd"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_1a} :catch_1b
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_1a} :catch_20

    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1a

    :catch_20
    move-exception v1

    goto :goto_1a
.end method

.method private prepareSound(Ljava/lang/String;)V
    .registers 10

    const/4 v2, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_6
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_a6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_67
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_b} :catch_7e
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_b} :catch_92

    :try_start_b
    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    #setter for: Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownDialog;->access$1202(Lcom/android/server/power/ShutdownDialog;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->access$1200(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->access$1200(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    const-string v5, "situation=8;device=0"

    invoke-static {v5}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->access$1200(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5, v4, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->access$1200(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->access$1200(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v5

    new-instance v6, Lcom/android/server/power/ShutdownDialog$StatePrepare$1;

    invoke-direct {v6, p0}, Lcom/android/server/power/ShutdownDialog$StatePrepare$1;-><init>(Lcom/android/server/power/ShutdownDialog$StatePrepare;)V

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->access$1200(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_60
    .catchall {:try_start_b .. :try_end_60} :catchall_bf
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_60} :catch_c8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_60} :catch_c5
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_60} :catch_c2

    if-eqz v3, :cond_65

    :try_start_62
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_b6

    :cond_65
    :goto_65
    move-object v2, v3

    :cond_66
    :goto_66
    return-void

    :catch_67
    move-exception v0

    :goto_68
    :try_start_68
    const-string v5, "ShutdownDialog"

    const-string v6, "!@MediaPlayer exception. Sound will not start!"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_a6

    if-eqz v2, :cond_66

    :try_start_71
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_66

    :catch_75
    move-exception v0

    const-string v5, "ShutdownDialog"

    const-string v6, "sound file.close"

    :goto_7a
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_66

    :catch_7e
    move-exception v0

    :goto_7f
    :try_start_7f
    const-string v5, "ShutdownDialog"

    const-string v6, "!@MediaPlayer exception. Sound will not start!"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_a6

    if-eqz v2, :cond_66

    :try_start_88
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_66

    :catch_8c
    move-exception v0

    const-string v5, "ShutdownDialog"

    const-string v6, "sound file.close"

    goto :goto_7a

    :catch_92
    move-exception v0

    :goto_93
    :try_start_93
    const-string v5, "ShutdownDialog"

    const-string v6, "!@MediaPlayer exception. Sound will not start!"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9a
    .catchall {:try_start_93 .. :try_end_9a} :catchall_a6

    if-eqz v2, :cond_66

    :try_start_9c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a0

    goto :goto_66

    :catch_a0
    move-exception v0

    const-string v5, "ShutdownDialog"

    const-string v6, "sound file.close"

    goto :goto_7a

    :catchall_a6
    move-exception v5

    :goto_a7
    if-eqz v2, :cond_ac

    :try_start_a9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_ad

    :cond_ac
    :goto_ac
    throw v5

    :catch_ad
    move-exception v0

    const-string v6, "ShutdownDialog"

    const-string v7, "sound file.close"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ac

    :catch_b6
    move-exception v0

    const-string v5, "ShutdownDialog"

    const-string v6, "sound file.close"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_65

    :catchall_bf
    move-exception v5

    move-object v2, v3

    goto :goto_a7

    :catch_c2
    move-exception v0

    move-object v2, v3

    goto :goto_93

    :catch_c5
    move-exception v0

    move-object v2, v3

    goto :goto_7f

    :catch_c8
    move-exception v0

    move-object v2, v3

    goto :goto_68
.end method

.method private prepareWindowRotation(II)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v2}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    if-le p1, p2, :cond_32

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    :goto_17
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v2}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v2}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7e5

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    return-void

    :cond_32
    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_17
.end method


# virtual methods
.method public checkRunning()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasSound:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasAnim:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public checkStart()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public prepare(Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    const-string v8, "ShutdownDialog"

    const-string v9, "prepare shutdown dialog image and sound"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_6d

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6d

    iget-object v8, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;
    invoke-static {v8}, Lcom/android/server/power/ShutdownDialog;->access$500(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->clear()V

    iget-object v8, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;
    invoke-static {v8}, Lcom/android/server/power/ShutdownDialog;->access$500(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v8

    new-instance v9, Lcom/android/server/power/LibQmg;

    invoke-direct {v9, p1}, Lcom/android/server/power/LibQmg;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2b
    iget-object v8, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;
    invoke-static {v8}, Lcom/android/server/power/ShutdownDialog;->access$500(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_73

    iget-object v8, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;
    invoke-static {v8}, Lcom/android/server/power/ShutdownDialog;->access$500(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/LibQmg;

    const-string v8, "ShutdownDialog"

    invoke-virtual {v3}, Lcom/android/server/power/LibQmg;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/android/server/power/LibQmg;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Lcom/android/server/power/LibQmg;->getHeight()I

    move-result v1

    invoke-direct {p0, v7, v1}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->prepareWindowRotation(II)V

    const/4 v2, 0x0

    :goto_59
    const/4 v8, 0x3

    if-ge v2, v8, :cond_7a

    iget-object v8, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/android/server/power/ShutdownDialog;->access$700(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v1, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    aput-object v9, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    :cond_6d
    iget-object v8, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #calls: Lcom/android/server/power/ShutdownDialog;->createDefaultQmgPlayList()V
    invoke-static {v8}, Lcom/android/server/power/ShutdownDialog;->access$600(Lcom/android/server/power/ShutdownDialog;)V

    goto :goto_2b

    :cond_73
    const-string v8, "ShutdownDialog"

    const-string v9, "qmglist error"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->needToPlayCommonSound()Z

    move-result v8

    if-eqz v8, :cond_d4

    const/16 v6, -0x270f

    iget-object v8, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/power/ShutdownDialog;->access$800(Lcom/android/server/power/ShutdownDialog;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_9e

    const-string v8, "shutdown"

    const-string v9, "1"

    invoke-virtual {v0, v8, v9}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    :cond_9e
    const-string v8, "ShutdownDialog"

    const-string v9, "!@systemVol:%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #calls: Lcom/android/server/power/ShutdownDialog;->getSoundPath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, p2}, Lcom/android/server/power/ShutdownDialog;->access$900(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c3

    if-lez v6, :cond_c3

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasSound:Z

    invoke-direct {p0, v4}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->prepareSound(Ljava/lang/String;)V

    :cond_c3
    :goto_c3
    new-instance v5, Landroid/content/Intent;

    const-string v8, "POWER_OFF_ANIMATION_START"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/power/ShutdownDialog;->access$800(Lcom/android/server/power/ShutdownDialog;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_d4
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->playSoundForKor()V

    goto :goto_c3
.end method

.method public start()V
    .registers 3

    const-string v0, "ShutdownDialog"

    const-string v1, "start draw"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$1000(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StateDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog$StateDrawing;->start()V

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$1000(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StateDrawing;

    move-result-object v1

    #setter for: Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;
    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownDialog;->access$1102(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$DrawState;)Lcom/android/server/power/ShutdownDialog$DrawState;

    return-void
.end method
