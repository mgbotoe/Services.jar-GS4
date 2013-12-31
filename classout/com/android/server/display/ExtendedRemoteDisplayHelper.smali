.class Lcom/android/server/display/ExtendedRemoteDisplayHelper;
.super Ljava/lang/Object;
.source "ExtendedRemoteDisplayHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtendedRemoteDisplayHelper"

.field private static sExtRemoteDisplayClass:Ljava/lang/Class;

.field private static sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;

.field private static sExtRemoteDisplayListen:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    :try_start_0
    const-string v2, "com.qualcomm.wfd.ExtendedRemoteDisplay"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_42

    :goto_8
    sget-object v2, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;

    if-eqz v2, :cond_41

    const-string v2, "ExtendedRemoteDisplayHelper"

    const-string v3, "ExtendedRemoteDisplay Is available. Find Methods"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    :try_start_14
    new-array v0, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-class v3, Landroid/media/RemoteDisplay$Listener;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-class v3, Landroid/os/Handler;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v2

    sget-object v2, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;

    const-string v3, "listen"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayListen:Ljava/lang/reflect/Method;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_34} :catch_4b

    :goto_34
    const/4 v2, 0x0

    :try_start_35
    new-array v0, v2, [Ljava/lang/Class;

    sget-object v2, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;

    const-string v3, "dispose"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_41} :catch_54

    :cond_41
    :goto_41
    return-void

    :catch_42
    move-exception v1

    const-string v2, "ExtendedRemoteDisplayHelper"

    const-string v3, "ExtendedRemoteDisplay Not available."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :catch_4b
    move-exception v1

    const-string v2, "ExtendedRemoteDisplayHelper"

    const-string v3, "ExtendedRemoteDisplay.listen Not available."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    :catch_54
    move-exception v1

    const-string v2, "ExtendedRemoteDisplayHelper"

    const-string v3, "ExtendedRemoteDisplay.dispose Not available."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispose(Ljava/lang/Object;)V
    .registers 5

    const-string v2, "ExtendedRemoteDisplayHelper"

    const-string v3, "ExtendedRemoteDisplay.dispose"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    sget-object v2, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_f} :catch_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_f} :catch_30

    :goto_f
    return-void

    :catch_10
    move-exception v1

    const-string v2, "ExtendedRemoteDisplayHelper"

    const-string v3, "ExtendedRemoteDisplay.dispose - InvocationTargetException"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_23

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_23
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_2a

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_2a
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_30
    move-exception v1

    const-string v2, "ExtendedRemoteDisplayHelper"

    const-string v3, "ExtendedRemoteDisplay.dispose-IllegalAccessException"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_f
.end method

.method public static isAvailable()Z
    .registers 2

    sget-object v0, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayListen:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_15

    const-string v0, "ExtendedRemoteDisplayHelper"

    const-string v1, "ExtendedRemoteDisplay isAvailable() : Available."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const-string v0, "ExtendedRemoteDisplayHelper"

    const-string v1, "ExtendedRemoteDisplay isAvailable() : Not Available."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Landroid/content/Context;)Ljava/lang/Object;
    .registers 11

    const/4 v2, 0x0

    const-string v3, "ExtendedRemoteDisplayHelper"

    const-string v4, "ExtendedRemoteDisplay.listen"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayListen:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_26

    sget-object v3, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_26

    :try_start_10
    sget-object v3, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayListen:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    aput-object p3, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_25} :catch_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_25} :catch_47

    move-result-object v2

    :cond_26
    :goto_26
    return-object v2

    :catch_27
    move-exception v1

    const-string v3, "ExtendedRemoteDisplayHelper"

    const-string v4, "ExtendedRemoteDisplay.listen - InvocationTargetException"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3a

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_3a
    instance-of v3, v0, Ljava/lang/Error;

    if-eqz v3, :cond_41

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_41
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_47
    move-exception v1

    const-string v3, "ExtendedRemoteDisplayHelper"

    const-string v4, "ExtendedRemoteDisplay.listen -IllegalAccessException"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_26
.end method
