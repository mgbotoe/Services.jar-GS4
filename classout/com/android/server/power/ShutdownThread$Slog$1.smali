.class final Lcom/android/server/power/ShutdownThread$Slog$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread$Slog;->startState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread$Slog;->access$1102(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "ShutdownDelay"

    const-string v1, "!@ShutdownThread.run() : checking timeout, done."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "-k -z -d -o /data/log/dumpstate_shutdownthread"

    invoke-static {v0}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    :goto_16
    return-void

    :cond_17
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1200()Z

    move-result v0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    goto :goto_16
.end method