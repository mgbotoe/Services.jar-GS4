.class Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;
.super Ljava/lang/Object;
.source "BrowserPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/browser/BrowserPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BrowserProxyCache"
.end annotation


# instance fields
.field private mAdminUid:I

.field private final mContainerId:I

.field private mProxySetting:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/enterprise/browser/BrowserPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/browser/BrowserPolicy;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->this$0:Lcom/android/server/enterprise/browser/BrowserPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mContainerId:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mProxySetting:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;)I
    .registers 2

    iget v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mProxySetting:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method clear()V
    .registers 4

    const/4 v2, -0x1

    iget v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    if-eq v1, v2, :cond_22

    iput v2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mProxySetting:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    iget v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mContainerId:I

    const-string v2, "mdm.intent.action.clear.http.proxy"

    invoke-static {v1, v2}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->this$0:Lcom/android/server/enterprise/browser/BrowserPolicy;

    #getter for: Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->access$000(Lcom/android/server/enterprise/browser/BrowserPolicy;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sec.enterprise.mdm.permission.BROWSER_PROXY"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_22
    return-void
.end method

.method setProxy(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->setProxy(ILjava/lang/String;Z)V

    return-void
.end method

.method setProxy(ILjava/lang/String;Z)V
    .registers 7

    if-eqz p2, :cond_25

    iput p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    iput-object p2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mProxySetting:Ljava/lang/String;

    if-eqz p3, :cond_25

    new-instance v0, Landroid/content/Intent;

    iget v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mContainerId:I

    const-string v2, "mdm.intent.action.set.http.proxy"

    invoke-static {v1, v2}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "mdm.intent.extra.http.proxy.server"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->this$0:Lcom/android/server/enterprise/browser/BrowserPolicy;

    #getter for: Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->access$000(Lcom/android/server/enterprise/browser/BrowserPolicy;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sec.enterprise.mdm.permission.BROWSER_PROXY"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_25
    return-void
.end method
