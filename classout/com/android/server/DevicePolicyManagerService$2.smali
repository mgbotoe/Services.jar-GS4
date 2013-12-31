.class Lcom/android/server/DevicePolicyManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DevicePolicyManagerService;

.field final synthetic val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

.field final synthetic val$adminReceiver:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Landroid/content/ComponentName;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iput-object p3, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    monitor-enter v5

    :try_start_3
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v4}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v4, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v0

    iget-object v4, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v4, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.android.email"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    #calls: Lcom/android/server/DevicePolicyManagerService;->resetAppPolicies(I)V
    invoke-static {v4, v3}, Lcom/android/server/DevicePolicyManagerService;->access$200(Lcom/android/server/DevicePolicyManagerService;I)V

    :cond_3f
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    if-eqz v0, :cond_56

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-virtual {v6, v3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    #calls: Lcom/android/server/DevicePolicyManagerService;->resetGlobalProxyLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    invoke-static {v4, v6}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    :cond_56
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    #calls: Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    invoke-static {v4, v3}, Lcom/android/server/DevicePolicyManagerService;->access$400(Lcom/android/server/DevicePolicyManagerService;I)V

    iget-object v4, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_6a

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v6, "device_policies_backup.xml"

    invoke-virtual {v4, v6, v3}, Lcom/android/server/DevicePolicyManagerService;->deleteBackupFile(Ljava/lang/String;I)V

    :cond_6a
    new-instance v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v4, v4, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->removeActiveAdminFromDpm(Landroid/content/ComponentName;)V

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    monitor-exit v5

    return-void

    :catchall_7f
    move-exception v4

    monitor-exit v5
    :try_end_81
    .catchall {:try_start_3 .. :try_end_81} :catchall_7f

    throw v4
.end method
