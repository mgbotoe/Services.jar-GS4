.class Lcom/android/server/enterprise/security/PasswordPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "PasswordPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/security/PasswordPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/security/PasswordPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    const-string v9, "com.android.server.enterprise.PWD_CHANGE_TIMEOUT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4c

    :try_start_10
    iget-object v9, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    #getter for: Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;
    invoke-static {v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$000(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v9

    if-nez v9, :cond_37

    iget-object v9, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequested(II)Z

    new-instance v6, Landroid/content/Intent;

    const-string v9, "secedm.src.android.app.enterprise.action.DO_KEYGUARD"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    #getter for: Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$100(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_33} :catch_43

    :cond_33
    :goto_33
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_36
    return-void

    :cond_37
    :try_start_37
    iget-object v9, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequested(II)Z

    const/4 v9, 0x2

    invoke-static {v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$202(I)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_42} :catch_43

    goto :goto_33

    :catch_43
    move-exception v2

    const-string v9, "PasswordPolicy"

    const-string v10, "is pwd change enforced??"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    :cond_4c
    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_99

    :try_start_54
    iget-object v9, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedEx(I)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_87

    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x1000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v9, 0x40

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v9, 0x80

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    #getter for: Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$100(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_7d} :catch_7e

    goto :goto_33

    :catch_7e
    move-exception v2

    const-string v9, "PasswordPolicy"

    const-string v10, "is new pwd enforced?"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    :cond_87
    :try_start_87
    iget-object v9, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedEx(I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_33

    iget-object v9, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequested(II)Z
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_98} :catch_7e

    goto :goto_33

    :cond_99
    const-string v9, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_114

    iget-object v9, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    #getter for: Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;
    invoke-static {v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$000(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v9

    if-nez v9, :cond_33

    invoke-static {}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$200()I

    move-result v9

    if-lez v9, :cond_33

    invoke-static {}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$200()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d7

    iget-object v9, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequested(II)Z

    :cond_c1
    :goto_c1
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$202(I)I

    new-instance v6, Landroid/content/Intent;

    const-string v9, "secedm.src.android.app.enterprise.action.DO_KEYGUARD"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    #getter for: Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$100(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_33

    :cond_d7
    invoke-static {}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$200()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_e6

    iget-object v9, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequested(II)Z

    goto :goto_c1

    :cond_e6
    invoke-static {}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$200()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_c1

    iget-object v9, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v11}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequested(II)Z

    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x1000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v9, 0x40

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v9, 0x80

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    #getter for: Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$100(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_c1

    :cond_114
    const-string v9, "com.android.server.MDM_PASSWORD_EXPIRING_NOTIFICATION"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    const-string v9, "PasswordPolicy"

    const-string v10, "Received MDM_PASSWORD_EXPIRING_NOTIFICATION intent"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    #calls: Lcom/android/server/enterprise/security/PasswordPolicy;->isMDMAdmin(Landroid/content/Intent;)Z
    invoke-static {v10, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$300(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/Intent;)Z

    move-result v10

    if-ne v9, v10, :cond_33

    const-string v9, "expiration"

    const-wide/16 v10, -0x1

    invoke-virtual {p2, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v9, -0x1

    cmp-long v9, v3, v9

    if-eqz v9, :cond_142

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v9, v3, v9

    if-lez v9, :cond_15c

    :cond_142
    const-string v9, "PasswordPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In grace period or failed to get "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_36

    :cond_15c
    const-string v9, "PasswordPolicy"

    const-string v10, "Password expired already so launching password screen"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    #getter for: Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$100(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const-string v9, "com.android.settings"

    invoke-virtual {v1, v9}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChange(I)Z

    goto/16 :goto_33
.end method
