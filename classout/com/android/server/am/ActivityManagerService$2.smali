.class Lcom/android/server/am/ActivityManagerService$2;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 61

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_ade

    :cond_7
    :goto_7
    return-void

    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "anr_show_background"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6e

    const/16 v53, 0x1

    :goto_25
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_2b
    const-string v3, "app"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/server/am/ProcessRecord;

    const-string v3, "result"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/android/server/am/AppErrorResult;

    if-eqz v46, :cond_71

    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_71

    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App already has crash dialog: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v50, :cond_69

    const/4 v3, 0x0

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V

    :cond_69
    monitor-exit v4

    goto :goto_7

    :catchall_6b
    move-exception v3

    :goto_6c
    monitor-exit v4
    :try_end_6d
    .catchall {:try_start_2b .. :try_end_6d} :catchall_6b

    throw v3

    :cond_6e
    const/16 v53, 0x0

    goto :goto_25

    :cond_71
    if-nez v53, :cond_c0

    :try_start_73
    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v5, 0x2710

    if-lt v3, v5, :cond_c0

    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #getter for: Lcom/android/server/am/ActivityManagerService;->mCurrentUserId:I
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)I

    move-result v5

    if-eq v3, v5, :cond_c0

    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v3, v5, :cond_c0

    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping crash dialog of "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ": background"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v50, :cond_bd

    const/4 v3, 0x0

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V

    :cond_bd
    monitor-exit v4

    goto/16 :goto_7

    :cond_c0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v3

    if-eqz v3, :cond_124

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v3, :cond_124

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v3, :cond_124

    new-instance v25, Lcom/android/server/am/AppErrorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    move-object/from16 v2, v46

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    :try_end_ef
    .catchall {:try_start_73 .. :try_end_ef} :catchall_6b

    :try_start_ef
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_10d

    new-instance v3, Lcom/android/server/am/ActivityManagerService$2$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/am/ActivityManagerService$2$1;-><init>(Lcom/android/server/am/ActivityManagerService$2;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v3, Lcom/android/server/am/ActivityManagerService$2$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/am/ActivityManagerService$2$2;-><init>(Lcom/android/server/am/ActivityManagerService$2;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_10d
    move-object/from16 v0, v25

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;
    :try_end_113
    .catchall {:try_start_ef .. :try_end_113} :catchall_ad8

    move-object/from16 v7, v25

    :cond_115
    :goto_115
    :try_start_115
    monitor-exit v4
    :try_end_116
    .catchall {:try_start_115 .. :try_end_116} :catchall_6b

    if-eqz v7, :cond_11b

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    :cond_11b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    :cond_124
    if-eqz v50, :cond_115

    const/4 v3, 0x0

    :try_start_127
    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_12c
    .catchall {:try_start_127 .. :try_end_12c} :catchall_6b

    goto :goto_115

    :sswitch_12d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_13a
    const-string v3, "errorpermission"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/String;

    const-string v3, "app"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/server/am/ProcessRecord;

    if-eqz v46, :cond_176

    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_176

    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App already has crash dialog: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    goto/16 :goto_7

    :catchall_173
    move-exception v3

    monitor-exit v4
    :try_end_175
    .catchall {:try_start_13a .. :try_end_175} :catchall_173

    throw v3

    :cond_176
    :try_start_176
    const-string v3, "result"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/android/server/am/AppErrorResult;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v3, :cond_1c8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v3, :cond_1c8

    new-instance v7, Lcom/android/server/am/AppPermissionManagedDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v50

    move-object/from16 v1, v46

    move-object/from16 v2, v43

    invoke-direct {v7, v3, v0, v1, v2}, Lcom/android/server/am/AppPermissionManagedDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    move-object/from16 v0, v46

    iput-object v7, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    sget-object v5, Lcom/android/server/am/ActivityManagerService;->mCMMessageByApp:Ljava/util/HashSet;

    monitor-enter v5
    :try_end_1ab
    .catchall {:try_start_176 .. :try_end_1ab} :catchall_173

    :try_start_1ab
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->mCMMessageByApp:Ljava/util/HashSet;

    if-eqz v3, :cond_1ba

    sget-object v3, Lcom/android/server/am/ActivityManagerService;->mCMMessageByApp:Ljava/util/HashSet;

    move-object/from16 v0, v46

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_1ba
    monitor-exit v5
    :try_end_1bb
    .catchall {:try_start_1ab .. :try_end_1bb} :catchall_1c5

    :goto_1bb
    :try_start_1bb
    monitor-exit v4
    :try_end_1bc
    .catchall {:try_start_1bb .. :try_end_1bc} :catchall_173

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    :catchall_1c5
    move-exception v3

    :try_start_1c6
    monitor-exit v5
    :try_end_1c7
    .catchall {:try_start_1c6 .. :try_end_1c7} :catchall_1c5

    :try_start_1c7
    throw v3

    :cond_1c8
    const/4 v3, 0x0

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_1ce
    .catchall {:try_start_1c7 .. :try_end_1ce} :catchall_173

    goto :goto_1bb

    :sswitch_1cf
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_1dc
    const-string v3, "newIntent_intent"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/Intent;

    const-string v3, "newIntent_packagename"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;
    :try_end_1f0
    .catchall {:try_start_1dc .. :try_end_1f0} :catchall_211

    :try_start_1f0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Landroid/content/pm/IPackageManager;->getManagedPermissions(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1f9
    .catchall {:try_start_1f0 .. :try_end_1f9} :catchall_211
    .catch Landroid/os/RemoteException; {:try_start_1f0 .. :try_end_1f9} :catch_214

    move-result-object v23

    :goto_1fa
    :try_start_1fa
    new-instance v7, Lcom/android/server/am/AppPermissionManagedDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move-object/from16 v2, v23

    invoke-direct {v7, v3, v0, v1, v2}, Lcom/android/server/am/AppPermissionManagedDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;[Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    monitor-exit v4

    goto/16 :goto_7

    :catchall_211
    move-exception v3

    monitor-exit v4
    :try_end_213
    .catchall {:try_start_1fa .. :try_end_213} :catchall_211

    throw v3

    :catch_214
    move-exception v28

    const/16 v23, 0x0

    goto :goto_1fa

    :sswitch_218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_21f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/util/HashMap;

    const-string v3, "app"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/server/am/ProcessRecord;

    if-eqz v46, :cond_259

    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_259

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App already has anr dialog: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v19

    goto/16 :goto_7

    :catchall_256
    move-exception v3

    monitor-exit v19
    :try_end_258
    .catchall {:try_start_21f .. :try_end_258} :catchall_256

    throw v3

    :cond_259
    :try_start_259
    new-instance v6, Landroid/content/Intent;

    const-string v3, "android.intent.action.ANR"

    invoke-direct {v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v3, :cond_26d

    const/high16 v3, 0x5000

    invoke-virtual {v6, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_26d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v17, 0x3e8

    const/16 v18, 0x0

    #calls: Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZIII)I
    invoke-static/range {v3 .. v18}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZIII)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v3

    if-eqz v3, :cond_2de

    new-instance v7, Lcom/android/server/am/AppNotRespondingDialog;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_2dc

    const/4 v12, 0x1

    :goto_2ac
    move-object/from16 v10, v46

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_2cb

    new-instance v3, Lcom/android/server/am/ActivityManagerService$2$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/am/ActivityManagerService$2$3;-><init>(Lcom/android/server/am/ActivityManagerService$2;)V

    invoke-virtual {v7, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v3, Lcom/android/server/am/ActivityManagerService$2$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/am/ActivityManagerService$2$4;-><init>(Lcom/android/server/am/ActivityManagerService$2;)V

    invoke-virtual {v7, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2cb
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    move-object/from16 v0, v46

    iput-object v7, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    :goto_2d2
    monitor-exit v19
    :try_end_2d3
    .catchall {:try_start_259 .. :try_end_2d3} :catchall_256

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    :cond_2dc
    const/4 v12, 0x0

    goto :goto_2ac

    :cond_2de
    :try_start_2de
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v3, v0, v4}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    :try_end_2e8
    .catchall {:try_start_2de .. :try_end_2e8} :catchall_256

    goto :goto_2d2

    :sswitch_2e9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_2f6
    const-string v3, "app"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/server/am/ProcessRecord;

    if-nez v46, :cond_30f

    const-string v3, "ActivityManager"

    const-string v5, "App not found when showing strict mode dialog."

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    goto/16 :goto_7

    :catchall_30c
    move-exception v3

    monitor-exit v4
    :try_end_30e
    .catchall {:try_start_2f6 .. :try_end_30e} :catchall_30c

    throw v3

    :cond_30f
    :try_start_30f
    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_332

    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App already has strict mode dialog: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    goto/16 :goto_7

    :cond_332
    const-string v3, "result"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/android/server/am/AppErrorResult;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v3

    if-eqz v3, :cond_37a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v3, :cond_37a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v3, :cond_37a

    new-instance v7, Lcom/android/server/am/StrictModeViolationDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v50

    move-object/from16 v1, v46

    invoke-direct {v7, v3, v5, v0, v1}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    move-object/from16 v0, v46

    iput-object v7, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    :goto_370
    monitor-exit v4
    :try_end_371
    .catchall {:try_start_30f .. :try_end_371} :catchall_30c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    :cond_37a
    const/4 v3, 0x0

    :try_start_37b
    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_380
    .catchall {:try_start_37b .. :try_end_380} :catchall_30c

    goto :goto_370

    :sswitch_381
    new-instance v7, Lcom/android/server/am/FactoryErrorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "msg"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v7, v3, v4}, Lcom/android/server/am/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    :sswitch_3a2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v51

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/res/Configuration;

    move-object/from16 v0, v51

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z

    goto/16 :goto_7

    :sswitch_3b9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_3be
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    monitor-exit v4

    goto/16 :goto_7

    :catchall_3c8
    move-exception v3

    monitor-exit v4
    :try_end_3ca
    .catchall {:try_start_3be .. :try_end_3ca} :catchall_3c8

    throw v3

    :sswitch_3cb
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_3d0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_407

    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    if-nez v3, :cond_401

    new-instance v7, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-direct {v7, v3, v5, v0}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    move-object/from16 v0, v20

    iput-object v7, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    :cond_401
    :goto_401
    monitor-exit v4

    goto/16 :goto_7

    :catchall_404
    move-exception v3

    monitor-exit v4
    :try_end_406
    .catchall {:try_start_3d0 .. :try_end_406} :catchall_404

    throw v3

    :cond_407
    :try_start_407
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_401

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;
    :try_end_419
    .catchall {:try_start_407 .. :try_end_419} :catchall_404

    goto :goto_401

    :sswitch_41a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v3, :cond_44c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v37

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v37

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7530

    move-object/from16 v0, v37

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    :cond_44c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_7

    :sswitch_45d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_462
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v32, v3, -0x1

    :goto_46e
    if-ltz v32, :cond_4b1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v49

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_482
    .catchall {:try_start_462 .. :try_end_482} :catchall_4ae

    if-eqz v3, :cond_48b

    :try_start_484
    move-object/from16 v0, v49

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v3}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_48b
    .catchall {:try_start_484 .. :try_end_48b} :catchall_4ae
    .catch Landroid/os/RemoteException; {:try_start_484 .. :try_end_48b} :catch_48e

    :cond_48b
    :goto_48b
    add-int/lit8 v32, v32, -0x1

    goto :goto_46e

    :catch_48e
    move-exception v29

    :try_start_48f
    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update time zone for: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v49

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48b

    :catchall_4ae
    move-exception v3

    monitor-exit v4
    :try_end_4b0
    .catchall {:try_start_48f .. :try_end_4b0} :catchall_4ae

    throw v3

    :cond_4b1
    :try_start_4b1
    monitor-exit v4
    :try_end_4b2
    .catchall {:try_start_4b1 .. :try_end_4b2} :catchall_4ae

    goto/16 :goto_7

    :sswitch_4b4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_4b9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v32, v3, -0x1

    :goto_4c5
    if-ltz v32, :cond_508

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v49

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_4d9
    .catchall {:try_start_4b9 .. :try_end_4d9} :catchall_505

    if-eqz v3, :cond_4e2

    :try_start_4db
    move-object/from16 v0, v49

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v3}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_4e2
    .catchall {:try_start_4db .. :try_end_4e2} :catchall_505
    .catch Landroid/os/RemoteException; {:try_start_4db .. :try_end_4e2} :catch_4e5

    :cond_4e2
    :goto_4e2
    add-int/lit8 v32, v32, -0x1

    goto :goto_4c5

    :catch_4e5
    move-exception v29

    :try_start_4e6
    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to clear dns cache for: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v49

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e2

    :catchall_505
    move-exception v3

    monitor-exit v4
    :try_end_507
    .catchall {:try_start_4e6 .. :try_end_507} :catchall_505

    throw v3

    :cond_508
    :try_start_508
    monitor-exit v4
    :try_end_509
    .catchall {:try_start_508 .. :try_end_509} :catchall_505

    goto/16 :goto_7

    :sswitch_50b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Landroid/net/ProxyProperties;

    const-string v31, ""

    const-string v45, ""

    const-string v30, ""

    if-eqz v48, :cond_52b

    invoke-virtual/range {v48 .. v48}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v48 .. v48}, Landroid/net/ProxyProperties;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v48 .. v48}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v30

    :cond_52b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_530
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v32, v3, -0x1

    :goto_53c
    if-ltz v32, :cond_585

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v49

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_550
    .catchall {:try_start_530 .. :try_end_550} :catchall_582

    if-eqz v3, :cond_55f

    :try_start_552
    move-object/from16 v0, v49

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v31

    move-object/from16 v1, v45

    move-object/from16 v2, v30

    invoke-interface {v3, v0, v1, v2}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55f
    .catchall {:try_start_552 .. :try_end_55f} :catchall_582
    .catch Landroid/os/RemoteException; {:try_start_552 .. :try_end_55f} :catch_562

    :cond_55f
    :goto_55f
    add-int/lit8 v32, v32, -0x1

    goto :goto_53c

    :catch_562
    move-exception v29

    :try_start_563
    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update http proxy for: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v49

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55f

    :catchall_582
    move-exception v3

    monitor-exit v4
    :try_end_584
    .catchall {:try_start_563 .. :try_end_584} :catchall_582

    throw v3

    :cond_585
    :try_start_585
    monitor-exit v4
    :try_end_586
    .catchall {:try_start_585 .. :try_end_586} :catchall_582

    goto/16 :goto_7

    :sswitch_588
    const-string v57, "System UIDs Inconsistent"

    const-string v55, "UIDs on the system are inconsistent, you need to wipe your data partition or your device will be unstable."

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v7, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v3}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7da

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    move-object/from16 v0, v57

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v55

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v3, -0x1

    const-string v4, "I\'m Feeling Lucky"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xf

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v7, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object v7, v3, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_7

    :sswitch_5f5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    goto/16 :goto_7

    :sswitch_60f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v3, :cond_641

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v37

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v37

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    move-object/from16 v0, v37

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    :cond_641
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_64e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v20

    #calls: Lcom/android/server/am/ActivityManagerService;->processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v3, v0}, Lcom/android/server/am/ActivityManagerService;->access$300(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    monitor-exit v4

    goto/16 :goto_7

    :catchall_65a
    move-exception v3

    monitor-exit v4
    :try_end_65c
    .catchall {:try_start_64e .. :try_end_65c} :catchall_65a

    throw v3

    :sswitch_65d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_662
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService;->doPendingActivityLaunchesLocked(Z)V

    monitor-exit v4

    goto/16 :goto_7

    :catchall_66d
    move-exception v3

    monitor-exit v4
    :try_end_66f
    .catchall {:try_start_662 .. :try_end_66f} :catchall_66d

    throw v3

    :sswitch_670
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_675
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_698

    const/4 v11, 0x1

    :goto_681
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    #calls: Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZI)Z
    invoke-static/range {v8 .. v15}, Lcom/android/server/am/ActivityManagerService;->access$400(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZI)Z

    monitor-exit v4

    goto/16 :goto_7

    :catchall_695
    move-exception v3

    monitor-exit v4
    :try_end_697
    .catchall {:try_start_675 .. :try_end_697} :catchall_695

    throw v3

    :cond_698
    const/4 v11, 0x0

    goto :goto_681

    :sswitch_69a
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v3}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    goto/16 :goto_7

    :sswitch_6a5
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v33

    if-eqz v33, :cond_7

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v47, v0

    if-eqz v47, :cond_7

    :try_start_6bb
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v4, 0x104063b

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    aput-object v12, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v55

    new-instance v38, Landroid/app/Notification;

    invoke-direct/range {v38 .. v38}, Landroid/app/Notification;-><init>()V

    const v3, 0x10807f3

    move-object/from16 v0, v38

    iput v3, v0, Landroid/app/Notification;->icon:I

    const-wide/16 v3, 0x0

    move-object/from16 v0, v38

    iput-wide v3, v0, Landroid/app/Notification;->when:J

    const/4 v3, 0x2

    move-object/from16 v0, v38

    iput v3, v0, Landroid/app/Notification;->flags:I

    move-object/from16 v0, v55

    move-object/from16 v1, v38

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    move-object/from16 v0, v38

    iput v3, v0, Landroid/app/Notification;->defaults:I

    const/4 v3, 0x0

    move-object/from16 v0, v38

    iput-object v3, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, v38

    iput-object v3, v0, Landroid/app/Notification;->vibrate:[J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v4, 0x104063c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    move-object/from16 v0, v52

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v15, 0x1000

    const/16 v16, 0x0

    new-instance v17, Landroid/os/UserHandle;

    move-object/from16 v0, v52

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v12 .. v17}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v0, v38

    move-object/from16 v1, v24

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_74b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6bb .. :try_end_74b} :catch_773

    const/4 v3, 0x1

    :try_start_74c
    new-array v0, v3, [I

    move-object/from16 v18, v0

    const-string v13, "android"

    const-string v14, "android"

    const/4 v15, 0x0

    const v16, 0x104063b

    move-object/from16 v0, v52

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v19, v0

    move-object/from16 v12, v33

    move-object/from16 v17, v38

    invoke-interface/range {v12 .. v19}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_765
    .catch Ljava/lang/RuntimeException; {:try_start_74c .. :try_end_765} :catch_767
    .catch Landroid/os/RemoteException; {:try_start_74c .. :try_end_765} :catch_ad5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_74c .. :try_end_765} :catch_773

    goto/16 :goto_7

    :catch_767
    move-exception v28

    :try_start_768
    const-string v3, "ActivityManager"

    const-string v4, "Error showing notification for heavy-weight app"

    move-object/from16 v0, v28

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_771
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_768 .. :try_end_771} :catch_773

    goto/16 :goto_7

    :catch_773
    move-exception v28

    const-string v3, "ActivityManager"

    const-string v4, "Unable to create context for heavy notification"

    move-object/from16 v0, v28

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    :sswitch_77f
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v33

    if-eqz v33, :cond_7

    :try_start_785
    const-string v3, "android"

    const/4 v4, 0x0

    const v5, 0x104063b

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v33

    invoke-interface {v0, v3, v4, v5, v8}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_794
    .catch Ljava/lang/RuntimeException; {:try_start_785 .. :try_end_794} :catch_796
    .catch Landroid/os/RemoteException; {:try_start_785 .. :try_end_794} :catch_ad2

    goto/16 :goto_7

    :catch_796
    move-exception v28

    const-string v3, "ActivityManager"

    const-string v4, "Error canceling notification for service"

    move-object/from16 v0, v28

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    :sswitch_7a2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_7a7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    const/16 v3, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService$2;->removeMessages(I)V

    const/16 v3, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v37

    const-wide/32 v12, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v12, v13}, Lcom/android/server/am/ActivityManagerService$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v4

    goto/16 :goto_7

    :catchall_7cb
    move-exception v3

    monitor-exit v4
    :try_end_7cd
    .catchall {:try_start_7a7 .. :try_end_7cd} :catchall_7cb

    throw v3

    :sswitch_7ce
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    invoke-virtual {v3, v4, v5, v8, v12}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    goto/16 :goto_7

    :sswitch_7db
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_7e0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    if-eqz v3, :cond_81e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    iget-object v3, v3, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80e

    monitor-exit v4

    goto/16 :goto_7

    :catchall_80b
    move-exception v3

    monitor-exit v4
    :try_end_80d
    .catchall {:try_start_7e0 .. :try_end_80d} :catchall_80b

    throw v3

    :cond_80e
    :try_start_80e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    invoke-virtual {v3}, Lcom/android/server/am/CompatModeDialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    :cond_81e
    if-eqz v21, :cond_820

    :cond_820
    monitor-exit v4
    :try_end_821
    .catchall {:try_start_80e .. :try_end_821} :catchall_80b

    goto/16 :goto_7

    :sswitch_823
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #calls: Lcom/android/server/am/ActivityManagerService;->dispatchProcessesChanged()V
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$500(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_7

    :sswitch_82c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v58, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v44

    move/from16 v1, v58

    #calls: Lcom/android/server/am/ActivityManagerService;->dispatchProcessDied(II)V
    invoke-static {v3, v0, v1}, Lcom/android/server/am/ActivityManagerService;->access$600(Lcom/android/server/am/ActivityManagerService;II)V

    goto/16 :goto_7

    :sswitch_845
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_84a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v41

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v32, v3, -0x1

    :goto_85a
    if-ltz v32, :cond_915

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/ProcessRecord;

    if-eqz v20, :cond_872

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_875

    :cond_872
    :goto_872
    add-int/lit8 v32, v32, -0x1

    goto :goto_85a

    :cond_875
    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->adjChanged:Z

    if-eqz v3, :cond_8e0

    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->adjChanged:Z

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    sget v5, Lcom/android/server/am/ProcessList;->HIDDEN_APP_MIN_ADJ:I

    if-lt v3, v5, :cond_8c0

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x81

    if-nez v3, :cond_8a8

    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->inHiddenGrp:Z

    if-nez v3, :cond_8a8

    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->inHiddenGrp:Z

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v3}, Landroid/os/Process;->toHidden(I)V

    goto :goto_872

    :catchall_8a5
    move-exception v3

    monitor-exit v4
    :try_end_8a7
    .catchall {:try_start_84a .. :try_end_8a7} :catchall_8a5

    throw v3

    :cond_8a8
    :try_start_8a8
    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->inHiddenGrp:Z

    if-nez v3, :cond_872

    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->waitHidden:Z

    if-nez v3, :cond_872

    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->waitHidden:Z

    move-wide/from16 v0, v41

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/server/am/ProcessRecord;->waitTime:J

    goto :goto_872

    :cond_8c0
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    sget v5, Lcom/android/server/am/ProcessList;->HIDDEN_APP_MIN_ADJ:I

    if-ge v3, v5, :cond_872

    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->inHiddenGrp:Z

    if-eqz v3, :cond_8d4

    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->inHiddenGrp:Z

    goto :goto_872

    :cond_8d4
    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->waitHidden:Z

    if-eqz v3, :cond_872

    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->waitHidden:Z

    goto :goto_872

    :cond_8e0
    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->waitHidden:Z

    if-eqz v3, :cond_872

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    move/from16 v0, v32

    if-ge v0, v3, :cond_872

    move-object/from16 v0, v20

    iget-wide v12, v0, Lcom/android/server/am/ProcessRecord;->waitTime:J

    sub-long v12, v41, v12

    const-wide/16 v14, 0x2710

    cmp-long v3, v12, v14

    if-lez v3, :cond_872

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v3}, Landroid/os/Process;->toHidden(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->inHiddenGrp:Z

    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->waitHidden:Z

    goto/16 :goto_872

    :cond_915
    monitor-exit v4
    :try_end_916
    .catchall {:try_start_8a8 .. :try_end_916} :catchall_8a5

    goto/16 :goto_7

    :sswitch_918
    const-string v3, "1"

    const-string v4, "ro.debuggable"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_92d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v39

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-wide v12, v3, Lcom/android/server/am/ActivityManagerService;->mLastMemUsageReportTime:J

    const-wide/32 v14, 0x493e0

    add-long/2addr v12, v14

    cmp-long v3, v39, v12

    if-gez v3, :cond_945

    monitor-exit v4

    goto/16 :goto_7

    :catchall_942
    move-exception v3

    monitor-exit v4
    :try_end_944
    .catchall {:try_start_92d .. :try_end_944} :catchall_942

    throw v3

    :cond_945
    :try_start_945
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-wide/from16 v0, v39

    iput-wide v0, v3, Lcom/android/server/am/ActivityManagerService;->mLastMemUsageReportTime:J

    monitor-exit v4
    :try_end_94e
    .catchall {:try_start_945 .. :try_end_94e} :catchall_942

    new-instance v56, Lcom/android/server/am/ActivityManagerService$2$5;

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityManagerService$2$5;-><init>(Lcom/android/server/am/ActivityManagerService$2;)V

    invoke-virtual/range {v56 .. v56}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7

    :sswitch_95c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/UserStartedState;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v3, v5, v8}, Lcom/android/server/am/ActivityManagerService;->dispatchUserSwitch(Lcom/android/server/am/UserStartedState;II)V

    goto/16 :goto_7

    :sswitch_973
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/UserStartedState;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v3, v5, v8}, Lcom/android/server/am/ActivityManagerService;->continueUserSwitch(Lcom/android/server/am/UserStartedState;II)V

    goto/16 :goto_7

    :sswitch_98a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/UserStartedState;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v3, v5, v8}, Lcom/android/server/am/ActivityManagerService;->timeoutUserSwitch(Lcom/android/server/am/UserStartedState;II)V

    goto/16 :goto_7

    :sswitch_9a1
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_9c4

    const/16 v36, 0x1

    :goto_9a9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v3}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v3

    move/from16 v0, v36

    if-eq v3, v0, :cond_7

    if-eqz v36, :cond_9c7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v3}, Landroid/os/UpdateLock;->acquire()V

    goto/16 :goto_7

    :cond_9c4
    const/16 v36, 0x0

    goto :goto_9a9

    :cond_9c7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v3}, Landroid/os/UpdateLock;->release()V

    goto/16 :goto_7

    :sswitch_9d2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v54, v0

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move/from16 v0, v54

    invoke-static {v3, v0}, Lcom/android/server/am/AppStateBroadcaster;->SendApplicationStop(Ljava/lang/String;I)V

    goto/16 :goto_7

    :sswitch_9e5
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/am/AppStateBroadcaster;->SendApplicationFocusLoss(Ljava/lang/String;)V

    goto/16 :goto_7

    :sswitch_9f0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1040956

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    :sswitch_a11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    if-nez v3, :cond_a3b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v12, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v14, "ACTIVITY_RESUME_BOOSTER"

    const/16 v15, 0xc

    const-wide/16 v16, 0x0

    invoke-direct/range {v12 .. v17}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v12, v3, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    const-string v4, "ActivityManager_resume"

    invoke-virtual {v3, v4}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    :cond_a3b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    if-nez v3, :cond_a65

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v12, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v14, "ACTIVITY_RESUME_BOOSTER"

    const/16 v15, 0x10

    const-wide/16 v16, 0x0

    invoke-direct/range {v12 .. v17}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v12, v3, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    const-string v4, "ActivityManager_resume"

    invoke-virtual {v3, v4}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    :cond_a65
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    if-nez v3, :cond_a8f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v12, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v14, "ACTIVITY_RESUME_BOOSTER"

    const/16 v15, 0xe

    const-wide/16 v16, 0x0

    invoke-direct/range {v12 .. v17}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v12, v3, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    const-string v4, "ActivityManager_resume"

    invoke-virtual {v3, v4}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    :cond_a8f
    sget v3, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTailRun:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_aa2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    const/16 v4, 0x12c

    invoke-virtual {v3, v4}, Landroid/os/DVFSHelper;->acquire(I)V

    const/4 v3, 0x0

    sput v3, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTailRun:I

    :cond_aa2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    invoke-virtual {v3}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v3

    if-eqz v3, :cond_ab9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    const/16 v4, 0x12c

    invoke-virtual {v3, v4}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_ab9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    invoke-virtual {v3}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    const/16 v4, 0x12c

    invoke-virtual {v3, v4}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_7

    :catch_ad2
    move-exception v3

    goto/16 :goto_7

    :catch_ad5
    move-exception v3

    goto/16 :goto_7

    :catchall_ad8
    move-exception v3

    move-object/from16 v7, v25

    goto/16 :goto_6c

    nop

    :sswitch_data_ade
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_218
        0x3 -> :sswitch_381
        0x4 -> :sswitch_3a2
        0x5 -> :sswitch_3b9
        0x6 -> :sswitch_3cb
        0xc -> :sswitch_41a
        0xd -> :sswitch_45d
        0xe -> :sswitch_588
        0xf -> :sswitch_5f5
        0x14 -> :sswitch_60f
        0x15 -> :sswitch_65d
        0x16 -> :sswitch_670
        0x17 -> :sswitch_69a
        0x18 -> :sswitch_6a5
        0x19 -> :sswitch_77f
        0x1a -> :sswitch_2e9
        0x1b -> :sswitch_7a2
        0x1c -> :sswitch_4b4
        0x1d -> :sswitch_50b
        0x1e -> :sswitch_7db
        0x1f -> :sswitch_823
        0x20 -> :sswitch_82c
        0x21 -> :sswitch_918
        0x22 -> :sswitch_95c
        0x23 -> :sswitch_973
        0x24 -> :sswitch_98a
        0x25 -> :sswitch_9a1
        0x26 -> :sswitch_12d
        0x27 -> :sswitch_1cf
        0x28 -> :sswitch_845
        0x29 -> :sswitch_a11
        0x190 -> :sswitch_9d2
        0x191 -> :sswitch_9e5
        0x1f4 -> :sswitch_9f0
        0x3e7 -> :sswitch_7ce
    .end sparse-switch
.end method
