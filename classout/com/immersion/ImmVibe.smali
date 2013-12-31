.class public abstract Lcom/immersion/ImmVibe;
.super Ljava/lang/Object;
.source "ImmVibe.java"

# interfaces
.implements Lcom/immersion/ImmVibeAPI;


# static fields
.field private static sInstance:Lcom/immersion/ImmVibe;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/immersion/ImmVibe;->sInstance:Lcom/immersion/ImmVibe;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/immersion/ImmVibe;
    .registers 3

    const/4 v0, 0x0

    sget-object v1, Lcom/immersion/ImmVibe;->sInstance:Lcom/immersion/ImmVibe;

    if-nez v1, :cond_19

    invoke-static {}, Lcom/immersion/ImmVibe;->newImmVibeInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    if-nez v0, :cond_13

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VIBE_E_FAIL"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    invoke-virtual {v0}, Lcom/immersion/ImmVibe;->initialize()V

    sput-object v0, Lcom/immersion/ImmVibe;->sInstance:Lcom/immersion/ImmVibe;

    :goto_18
    return-object v0

    :cond_19
    sget-object v0, Lcom/immersion/ImmVibe;->sInstance:Lcom/immersion/ImmVibe;

    goto :goto_18
.end method

.method private static newImmVibeInstance()Lcom/immersion/ImmVibe;
    .registers 2

    const/4 v0, 0x0

    const-string v1, "com.immersion.android.ImmVibe"

    invoke-static {v1}, Lcom/immersion/ImmVibe;->newImmVibeInstanceForName(Ljava/lang/String;)Lcom/immersion/ImmVibe;

    move-result-object v0

    if-nez v0, :cond_f

    const-string v1, "com.immersion.J2ME.ImmVibe"

    invoke-static {v1}, Lcom/immersion/ImmVibe;->newImmVibeInstanceForName(Ljava/lang/String;)Lcom/immersion/ImmVibe;

    move-result-object v0

    :cond_f
    return-object v0
.end method

.method private static newImmVibeInstanceForName(Ljava/lang/String;)Lcom/immersion/ImmVibe;
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/immersion/ImmVibe;

    move-object v1, v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_e

    :goto_d
    return-object v1

    :catch_e
    move-exception v3

    goto :goto_d
.end method


# virtual methods
.method public terminate()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/immersion/ImmVibe;->sInstance:Lcom/immersion/ImmVibe;

    return-void
.end method
