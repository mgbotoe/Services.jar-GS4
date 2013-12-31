.class Lcom/android/server/IntentResolver$2;
.super Lcom/android/server/IntentResolverOld;
.source "IntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IntentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolverOld",
        "<TF;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/IntentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/IntentResolver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/IntentResolver$2;->this$0:Lcom/android/server/IntentResolver;

    invoke-direct {p0}, Lcom/android/server/IntentResolverOld;-><init>()V

    return-void
.end method


# virtual methods
.method protected allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/List",
            "<TR;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/IntentResolver$2;->this$0:Lcom/android/server/IntentResolver;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/IntentResolver;->allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected isFilterStopped(Landroid/content/IntentFilter;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;I)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/IntentResolver$2;->this$0:Lcom/android/server/IntentResolver;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/IntentResolver;->isFilterStopped(Landroid/content/IntentFilter;I)Z

    move-result v0

    return v0
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TF;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/IntentResolver$2;->this$0:Lcom/android/server/IntentResolver;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z

    move-result v0

    return v0
.end method

.method protected newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;II)TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/IntentResolver$2;->this$0:Lcom/android/server/IntentResolver;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/IntentResolver;->newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected sortResults(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/IntentResolver$2;->this$0:Lcom/android/server/IntentResolver;

    invoke-virtual {v0, p1}, Lcom/android/server/IntentResolver;->sortResults(Ljava/util/List;)V

    return-void
.end method
