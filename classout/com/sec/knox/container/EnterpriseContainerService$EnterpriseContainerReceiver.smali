.class Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnterpriseContainerReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/knox/container/EnterpriseContainerService;


# direct methods
.method constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 24

    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "<<< Intent action is >>> : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "<<< Intent data is   >>> : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_50

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7e

    :cond_50
    const-string v17, "EnterpriseContainerService"

    const-string v18, "Inside package added listener"

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    if-eqz v15, :cond_7c

    invoke-virtual {v15}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v12

    :goto_61
    const-string v17, "com.samsung.redexmobile"

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7b

    const-string v17, "EnterpriseContainerService"

    const-string v18, "Binding again , it matches"

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->bindRedexService()V
    invoke-static/range {v17 .. v17}, Lcom/sec/knox/container/EnterpriseContainerService;->access$300(Lcom/sec/knox/container/EnterpriseContainerService;)V

    :cond_7b
    :goto_7b
    return-void

    :cond_7c
    const/4 v12, 0x0

    goto :goto_61

    :cond_7e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.intent.action.EMAIL_ACCOUNT_CREATED_INTENT"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1b0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "sec_container_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1b0

    const-string v17, "username"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "domain"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    const/4 v4, -0x1

    :try_start_af
    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "sec_container_"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "sec_container_"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v4

    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Given containerId : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_103
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_af .. :try_end_103} :catch_169
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_103} :catch_188

    :goto_103
    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Account added in Email app with username -"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " and domain-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->checkExistence(I)Z
    invoke-static {v0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$400(Lcom/sec/knox/container/EnterpriseContainerService;I)Z

    move-result v17

    if-eqz v17, :cond_1a7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/sec/knox/container/EnterpriseContainerService;->access$500()I

    move-result v18

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v18

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->updateContainerEmailId(ILjava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v0, v4, v1, v5, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$600(Lcom/sec/knox/container/EnterpriseContainerService;ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v13

    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Emailid update status :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7b

    :catch_169
    move-exception v6

    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "N/A containerId IndexOutOfBoundsException "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_103

    :catch_188
    move-exception v6

    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "N/A containerId generic exception "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_103

    :cond_1a7
    const-string v17, "EnterpriseContainerService"

    const-string v18, "Container doesn\'t exist..no action"

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7b

    :cond_1b0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.sec.knox.container.INTENT_ALARM_TIMEOUT"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_20a

    const-string v17, "EnterpriseContainerService"

    const-string v18, "Intent INTENT_ACTION_PASSWORD_TIMEOUT_NOTIFICATION received"

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "containerid"

    const/16 v18, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v17, "containerid"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static/range {v17 .. v17}, Lcom/sec/knox/container/EnterpriseContainerService;->access$700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v17

    const/16 v18, 0xf

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static/range {v17 .. v17}, Lcom/sec/knox/container/EnterpriseContainerService;->access$700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_7b

    :cond_20a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.sec.knox.container.INTENT_ALARM_UNMOUNT_TIMEOUT"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_264

    const-string v17, "EnterpriseContainerService"

    const-string v18, "Intent INTENT_ACTION_UNMOUNT_TIMEOUT_NOTIFICATION received"

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "containerid"

    const/16 v18, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v17, "containerid"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static/range {v17 .. v17}, Lcom/sec/knox/container/EnterpriseContainerService;->access$700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v17

    const/16 v18, 0x10

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static/range {v17 .. v17}, Lcom/sec/knox/container/EnterpriseContainerService;->access$700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_7b

    :cond_264
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "enterprise.container.INTENT_ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2be

    const-string v17, "EnterpriseContainerService"

    const-string v18, "received ACTION_EXPIRED_PASSWORD_NOTIFICATION from alarm manager"

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "containerid"

    const/16 v18, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v17, "containerid"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static/range {v17 .. v17}, Lcom/sec/knox/container/EnterpriseContainerService;->access$700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v17

    const/16 v18, 0xe

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static/range {v17 .. v17}, Lcom/sec/knox/container/EnterpriseContainerService;->access$700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_7b

    :cond_2be
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.intent.action.EMAIL_ACCOUNT_DELETED_INTENT"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3d9

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "sec_container_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3d9

    const-string v17, "username"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "domain"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    const/4 v4, -0x1

    :try_start_2ef
    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "sec_container_"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "sec_container_"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v4

    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Given containerId : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_343
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2ef .. :try_end_343} :catch_3a9
    .catch Ljava/lang/Exception; {:try_start_2ef .. :try_end_343} :catch_3c6

    :goto_343
    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Account deleted in Email app with username- "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " and domain-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->checkExistence(I)Z
    invoke-static {v0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$400(Lcom/sec/knox/container/EnterpriseContainerService;I)Z

    move-result v17

    if-eqz v17, :cond_3d0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800()I

    move-result v18

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v18

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->updateContainerEmailId(ILjava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v0, v4, v1, v5, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$600(Lcom/sec/knox/container/EnterpriseContainerService;ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v13

    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Emailid update status :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7b

    :catch_3a9
    move-exception v6

    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "N/A containerId "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_343

    :catch_3c6
    move-exception v6

    const-string v17, "EnterpriseContainerService"

    const-string v18, "N/A containerId"

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_343

    :cond_3d0
    const-string v17, "EnterpriseContainerService"

    const-string v18, "Container doesn\'t exist..no action"

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7b

    :cond_3d9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.intent.action.SCREEN_OFF"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static/range {v17 .. v17}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/knox/container/manager/StateManager;->getContainers()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_475

    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ACTION_SCREEN_OFF container list: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_415
    :goto_415
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_47e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    if-eqz v11, :cond_415

    invoke-virtual {v11}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerId()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static/range {v17 .. v17}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/sec/knox/container/manager/StateManager;->getContainerLockOnScreenLock(I)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_415

    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ACTION_SCREEN_OFF container needs to be locked: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->scheduleTimer(Landroid/content/Context;IZ)V
    invoke-static {v0, v1, v4, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1100(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/content/Context;IZ)V

    goto :goto_415

    :cond_475
    const-string v17, "EnterpriseContainerService"

    const-string v18, "ACTION_SCREEN_OFF container list is empty"

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7b

    :cond_47e
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_482
    :goto_482
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    if-eqz v11, :cond_482

    invoke-virtual {v11}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerId()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->getPasswordVerifyOnlyOnModeChange(I)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_482

    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ACTION_SCREEN_OFF container needs to be locked: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->changeActiveContainerPasswordStatus(I)V

    goto :goto_482
.end method
