.class public Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;
.super Ljava/lang/Object;
.source "SmartClipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SmartClipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenshotCaptureSound"
.end annotation


# instance fields
.field private DEBUG:Z

.field private final NUM_MEDIA_SOUND_STREAMS:I

.field public final SHUTTER_CLICK:I

.field private final SOUND_FILES:[Ljava/lang/String;

.field private final SOUND_NOT_LOADED:I

.field private final TAG:Ljava/lang/String;

.field private mSoundIdToPlay:I

.field private mSoundIds:[I

.field private mSoundPool:Landroid/media/SoundPool;

.field final synthetic this$0:Lcom/android/server/smartclip/SmartClipView;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SmartClipView;)V
    .registers 8

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->NUM_MEDIA_SOUND_STREAMS:I

    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->DEBUG:Z

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "/system/media/audio/ui/camera_click.ogg"

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->SOUND_FILES:[Ljava/lang/String;

    const-string v1, "SpenScreenshotCaptureSound"

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->TAG:Ljava/lang/String;

    iput v5, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->SOUND_NOT_LOADED:I

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->SHUTTER_CLICK:I

    new-instance v1, Landroid/media/SoundPool;

    invoke-direct {v1, v4, v4, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->mSoundPool:Landroid/media/SoundPool;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->mSoundIds:[I

    const/4 v0, 0x0

    :goto_31
    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->mSoundIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3d

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->mSoundIds:[I

    aput v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_3d
    iput v5, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->mSoundIdToPlay:I

    return-void
.end method


# virtual methods
.method public declared-synchronized load(I)V
    .registers 6

    monitor-enter p0

    if-ltz p1, :cond_8

    :try_start_3
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_24

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sound requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->mSoundIds:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3a

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->mSoundIds:[I

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->SOUND_FILES:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, p1
    :try_end_3a
    .catchall {:try_start_24 .. :try_end_3a} :catchall_21

    :cond_3a
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized play(I)V
    .registers 10

    monitor-enter p0

    :try_start_1
    const-string v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "JP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const-string v0, "service.camera.running"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setStreamType(I)V

    :goto_25
    if-ltz p1, :cond_2c

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_56

    :cond_2c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sound requested: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_45

    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_48
    :try_start_48
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setStreamType(I)V

    goto :goto_25

    :cond_4f
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setStreamType(I)V

    goto :goto_25

    :cond_56
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->mSoundIds:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_72

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->SOUND_FILES:[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->mSoundIdToPlay:I

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->mSoundIds:[I

    iget v1, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->mSoundIdToPlay:I

    aput v1, v0, p1
    :try_end_70
    .catchall {:try_start_48 .. :try_end_70} :catchall_45

    :goto_70
    monitor-exit p0

    return-void

    :cond_72
    const/high16 v2, 0x3f80

    packed-switch p1, :pswitch_data_92

    :goto_77
    :try_start_77
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->mSoundIds:[I

    aget v1, v1, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_70

    :pswitch_86
    const-string v0, "situation=3;device=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_8f
    .catchall {:try_start_77 .. :try_end_8f} :catchall_45

    move-result v2

    goto :goto_77

    nop

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_86
    .end packed-switch
.end method

.method public release()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->mSoundPool:Landroid/media/SoundPool;

    :cond_c
    return-void
.end method
