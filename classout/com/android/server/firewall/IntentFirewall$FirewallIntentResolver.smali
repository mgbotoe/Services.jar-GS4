.class Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "IntentFirewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/IntentFirewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirewallIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver",
        "<",
        "Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;",
        "Lcom/android/server/firewall/IntentFirewall$Rule;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/firewall/IntentFirewall$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .registers 4

    check-cast p1, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->allowFilterResult(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected allowFilterResult(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/firewall/IntentFirewall$Rule;",
            ">;)Z"
        }
    .end annotation

    #getter for: Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;->rule:Lcom/android/server/firewall/IntentFirewall$Rule;
    invoke-static {p1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;->access$200(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;)Lcom/android/server/firewall/IntentFirewall$Rule;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .registers 4

    check-cast p2, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->isPackageForFilter(Ljava/lang/String;Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;)Z

    move-result v0

    return v0
.end method

.method protected isPackageForFilter(Ljava/lang/String;Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->newArray(I)[Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    move-result-object v0

    return-object v0
.end method

.method protected newArray(I)[Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;
    .registers 3

    new-array v0, p1, [Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    return-object v0
.end method

.method protected newResult(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;II)Lcom/android/server/firewall/IntentFirewall$Rule;
    .registers 5

    #getter for: Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;->rule:Lcom/android/server/firewall/IntentFirewall$Rule;
    invoke-static {p1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;->access$200(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;)Lcom/android/server/firewall/IntentFirewall$Rule;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .registers 5

    check-cast p1, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->newResult(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;II)Lcom/android/server/firewall/IntentFirewall$Rule;

    move-result-object v0

    return-object v0
.end method

.method protected sortResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/firewall/IntentFirewall$Rule;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
