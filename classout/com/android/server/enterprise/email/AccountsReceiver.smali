.class public Lcom/android/server/enterprise/email/AccountsReceiver;
.super Ljava/lang/Object;
.source "AccountsReceiver.java"


# static fields
.field private static final DELETE_RESULT:Ljava/lang/String; = "android.intent.action.sec.MDM_ACCOUNT_DELETE_RESULT"

.field private static final SETUP_RESULT:Ljava/lang/String; = "android.intent.action.sec.MDM_ACCOUNT_SETUP_RESULT"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "AccountsReceiver"

    sput-object v0, Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lcom/android/server/enterprise/email/AccountsReceiver$1;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/email/AccountsReceiver$1;-><init>(Lcom/android/server/enterprise/email/AccountsReceiver;)V

    iput-object v4, p0, Lcom/android/server/enterprise/email/AccountsReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    :try_start_b
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_3a

    :try_start_10
    const-string v4, "android.intent.action.sec.MDM_ACCOUNT_SETUP_RESULT"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.sec.MDM_ACCOUNT_DELETE_RESULT"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v3, 0x1

    :goto_1b
    const/4 v4, 0x1

    if-gt v3, v4, :cond_33

    const-string v4, "android.intent.action.sec.MDM_ACCOUNT_SETUP_RESULT"

    invoke-static {v3, v4}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.sec.MDM_ACCOUNT_DELETE_RESULT"

    invoke-static {v3, v4}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_33
    iget-object v4, p0, Lcom/android/server/enterprise/email/AccountsReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_38} :catch_54

    move-object v1, v2

    :goto_39
    return-void

    :catch_3a
    move-exception v0

    :goto_3b
    sget-object v4, Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handled exception :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :catch_54
    move-exception v0

    move-object v1, v2

    goto :goto_3b
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method
