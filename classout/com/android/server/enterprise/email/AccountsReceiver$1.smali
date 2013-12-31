.class Lcom/android/server/enterprise/email/AccountsReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "AccountsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/AccountsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/email/AccountsReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/email/AccountsReceiver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(Ljava/lang/String;)I

    move-result v1

    const-string v9, "android.intent.action.sec.MDM_ACCOUNT_SETUP_RESULT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ad

    const-string v9, "status"

    const/16 v10, 0x8

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "user_id"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "service"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "account_id"

    const-wide/16 v10, -0x1

    invoke-virtual {p2, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v9, "eas"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_60

    new-instance v6, Landroid/content/Intent;

    const-string v9, "edm.intent.action.EXCHANGE_ACCOUNT_ADD_RESULT"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "email_id"

    invoke-virtual {v6, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "result"

    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "account_id"

    invoke-virtual {v6, v9, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v9, "server_host"

    const-string v10, "server_name"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "containerid"

    invoke-virtual {v6, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {p1, v6, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_5f
    :goto_5f
    return-void

    :cond_60
    new-instance v6, Landroid/content/Intent;

    const-string v9, "edm.intent.action.EMAIL_ACCOUNT_ADD_RESULT"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "email_id"

    invoke-virtual {v6, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "result"

    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "account_id"

    invoke-virtual {v6, v9, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v9, "protocol"

    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "receive_host"

    const-string v10, "receive_host"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "containerid"

    invoke-virtual {v6, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {p1, v6, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_90} :catch_91

    goto :goto_5f

    :catch_91
    move-exception v2

    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mReceiver - EX:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    :cond_ad
    :try_start_ad
    const-string v9, "android.intent.action.sec.MDM_ACCOUNT_DELETE_RESULT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5f

    const-string v9, "status"

    const/16 v10, 0x8

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "user_id"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "service"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "account_id"

    const-wide/16 v10, -0x1

    invoke-virtual {p2, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v9, "eas"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_106

    new-instance v6, Landroid/content/Intent;

    const-string v9, "edm.intent.action.EXCHANGE_ACCOUNT_DELETE_RESULT"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "email_id"

    invoke-virtual {v6, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "result"

    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "account_id"

    invoke-virtual {v6, v9, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v9, "server_host"

    const-string v10, "server_name"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "containerid"

    invoke-virtual {v6, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {p1, v6, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_5f

    :cond_106
    new-instance v6, Landroid/content/Intent;

    const-string v9, "edm.intent.action.EMAIL_ACCOUNT_DELETE_RESULT"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "email_id"

    invoke-virtual {v6, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "result"

    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "account_id"

    invoke-virtual {v6, v9, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v9, "protocol"

    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "receive_host"

    const-string v10, "receive_host"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "containerid"

    invoke-virtual {v6, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {p1, v6, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_136} :catch_91

    goto/16 :goto_5f
.end method
