.class public Lcom/android/server/pm/CheckExt;
.super Ljava/lang/Object;
.source "CheckExt.java"

# interfaces
.implements Lcom/android/server/pm/ICheckExt;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private checklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/ICheckExt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "CheckExt"

    iput-object v1, p0, Lcom/android/server/pm/CheckExt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/CheckExt;->checklist:Ljava/util/List;

    new-instance v0, Lcom/android/server/pm/xmlCheckExt;

    invoke-direct {v0}, Lcom/android/server/pm/xmlCheckExt;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/CheckExt;->checklist:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public varargs doCheck([Ljava/lang/String;)Z
    .registers 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/pm/CheckExt;->checklist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    :goto_9
    return v2

    :cond_a
    const/4 v1, 0x0

    :goto_b
    iget-object v3, p0, Lcom/android/server/pm/CheckExt;->checklist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    iget-object v3, p0, Lcom/android/server/pm/CheckExt;->checklist:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ICheckExt;

    invoke-interface {v0, p1}, Lcom/android/server/pm/ICheckExt;->doCheck([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v2, 0x1

    goto :goto_9

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method