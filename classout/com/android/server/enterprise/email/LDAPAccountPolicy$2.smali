.class Lcom/android/server/enterprise/email/LDAPAccountPolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "LDAPAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/LDAPAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$2;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "edm.intent.action.ldap.createacct.internal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    const-string v3, "LDAPAccountPolicyService"

    const-string v4, "Received intent : ACTION_LDAP_CREATE_ACCT"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_41

    new-instance v0, Landroid/content/Intent;

    const-string v3, "edm.intent.action.ldap.createacct.result"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "edm.intent.extra.ldap.result"

    const-string v4, "edm.intent.extra.ldap.result"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "edm.intent.extra.ldap.acct.id"

    const-string v4, "edm.intent.extra.ldap.acct.id"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$2;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    #getter for: Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->access$200(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.sec.MDM_LDAP"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_41
    return-void
.end method
