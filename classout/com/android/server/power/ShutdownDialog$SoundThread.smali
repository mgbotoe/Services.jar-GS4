.class Lcom/android/server/power/ShutdownDialog$SoundThread;
.super Lcom/android/server/power/ShutdownDialog$RunningCheckable;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method private constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/ShutdownDialog$RunningCheckable;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog$SoundThread;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$1200(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-nez v1, :cond_13

    const-string v1, "ShutdownDialog"

    const-string v2, "MediaPlayer is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/server/power/ShutdownDialog$RunningCheckable;->running:Z

    :goto_12
    return-void

    :cond_13
    :try_start_13
    const-string v1, "ShutdownDialog"

    const-string v2, "Playing sound file"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$1200(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$SoundThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$1200(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_31
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_31} :catch_34
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_31} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_31} :catch_46

    :goto_31
    iput-boolean v3, p0, Lcom/android/server/power/ShutdownDialog$RunningCheckable;->running:Z

    goto :goto_12

    :catch_34
    move-exception v0

    const-string v1, "ShutdownDialog"

    const-string v2, "sound thread IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :catch_3d
    move-exception v0

    const-string v1, "ShutdownDialog"

    const-string v2, "sound thread InterruptedException"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :catch_46
    move-exception v0

    const-string v1, "ShutdownDialog"

    const-string v2, "sound thread exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method
