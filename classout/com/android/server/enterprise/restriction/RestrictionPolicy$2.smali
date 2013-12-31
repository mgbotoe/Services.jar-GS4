.class Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "RestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    :try_start_d
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    #calls: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateUSBMode()V
    invoke-static {v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$100(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_36

    :goto_12
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_28

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    #getter for: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$200(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    #getter for: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$300(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v1, v3, v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_28
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStatusBarExpansionAllowed(Z)Z

    move-result v3

    if-nez v3, :cond_35

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    #calls: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceStatusBarExpansion(Z)V
    invoke-static {v3, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$400(Lcom/android/server/enterprise/restriction/RestrictionPolicy;Z)V

    :cond_35
    :goto_35
    return-void

    :catch_36
    move-exception v2

    const-string v3, "RestrictionPolicy"

    const-string v4, "updateUsbMode failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_3f
    const-string v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    :try_start_47
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    #calls: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateUSBMode()V
    invoke-static {v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$100(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4c} :catch_4d

    goto :goto_35

    :catch_4d
    move-exception v2

    const-string v3, "RestrictionPolicy"

    const-string v4, "updateUsbMode failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    :cond_56
    const-string v3, "android.intent.action.sec.DEFAULT_NETWORK_POLICY_APPLIED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v3

    if-nez v3, :cond_35

    :try_start_66
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->applyBackgroundDataRestriction()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6b} :catch_6c

    goto :goto_35

    :catch_6c
    move-exception v2

    const-string v3, "RestrictionPolicy"

    const-string v4, "Network Policy update failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method
