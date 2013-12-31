.class Lcom/android/server/wifi/WifiNotificationController$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiNotificationController;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiNotificationController;

.field final synthetic val$IMS_LOWSIGNAL_STATUS:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiNotificationController;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController$2;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    iput-object p2, p0, Lcom/android/server/wifi/WifiNotificationController$2;->val$IMS_LOWSIGNAL_STATUS:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$2;->val$IMS_LOWSIGNAL_STATUS:Ljava/lang/String;

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$2;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #getter for: Lcom/android/server/wifi/WifiNotificationController;->mLowSignal:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiNotificationController;->access$800(Lcom/android/server/wifi/WifiNotificationController;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$2;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #getter for: Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiNotificationController;->access$600(Lcom/android/server/wifi/WifiNotificationController;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$2;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const-wide/16 v2, 0x0

    #setter for: Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J
    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiNotificationController;->access$902(Lcom/android/server/wifi/WifiNotificationController;J)J

    :cond_20
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$2;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #setter for: Lcom/android/server/wifi/WifiNotificationController;->mLowSignal:Z
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiNotificationController;->access$802(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$2;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #getter for: Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiNotificationController;->access$600(Lcom/android/server/wifi/WifiNotificationController;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$2;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController$2;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #getter for: Lcom/android/server/wifi/WifiNotificationController;->mLowSignalNWs:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiNotificationController;->access$1000(Lcom/android/server/wifi/WifiNotificationController;)I

    move-result v3

    #calls: Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V
    invoke-static {v1, v2, v3, v4, v4}, Lcom/android/server/wifi/WifiNotificationController;->access$1100(Lcom/android/server/wifi/WifiNotificationController;ZIZI)V

    :cond_39
    return-void
.end method
