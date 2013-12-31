.class Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/SELinuxMMAC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InstallPolicy"
.end annotation


# instance fields
.field final isContainerApp:Z

.field noAuditPackageNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final pkgPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;",
            ">;"
        }
    .end annotation
.end field

.field final policyPerms:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final seinfo:Ljava/lang/String;

.field trustedPackageNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->policyPerms:Ljava/util/HashSet;

    iput-object p2, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->pkgPolicy:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->trustedPackageNameList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->noAuditPackageNameList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->isContainerApp:Z

    return-void
.end method

.method constructor <init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->policyPerms:Ljava/util/HashSet;

    iput-object p2, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->pkgPolicy:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->trustedPackageNameList:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->noAuditPackageNameList:Ljava/util/ArrayList;

    iput-boolean p4, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->isContainerApp:Z

    return-void
.end method


# virtual methods
.method getSEinfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->pkgPolicy:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->pkgPolicy:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->getSEinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    iget-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    goto :goto_14
.end method

.method passedPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->pkgPolicy:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->pkgPolicy:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->passedPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x1

    goto :goto_18
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->policyPerms:Ljava/util/HashSet;

    if-eqz v1, :cond_28

    const-string v1, ",\n"

    new-instance v2, Ljava/util/TreeSet;

    iget-object v3, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->policyPerms:Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1e
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_28
    const-string v1, "allow-all"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e
.end method
