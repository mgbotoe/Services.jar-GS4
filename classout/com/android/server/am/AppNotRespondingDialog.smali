.class Lcom/android/server/am/AppNotRespondingDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppNotRespondingDialog.java"


# static fields
.field static final FORCE_CLOSE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppNotRespondingDialog"

.field static final WAIT:I = 0x2

.field static final WAIT_AND_REPORT:I = 0x3


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V
    .registers 33

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    new-instance v22, Lcom/android/server/am/AppNotRespondingDialog$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/AppNotRespondingDialog$2;-><init>(Lcom/android/server/am/AppNotRespondingDialog;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const/4 v10, 0x0

    const-string v22, "eng"

    const-string v23, "ro.build.type"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_20f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v22, "yyyy-mm-dd-hh-mm-ss"

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v22, Ljava/util/Date;

    move-object/from16 v0, v22

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "/data/log/looper-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ".txt"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_6e
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v15, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :try_start_84
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_89
    .catchall {:try_start_84 .. :try_end_89} :catchall_256
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_89} :catch_222

    :try_start_89
    const-string v22, "activity"

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v23

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "looper"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    aput-object v15, v24, v25

    invoke-static/range {v22 .. v24}, Landroid/os/Debug;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    :try_end_a4
    .catchall {:try_start_89 .. :try_end_a4} :catchall_2a7
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_a4} :catch_2aa

    if-eqz v14, :cond_2ae

    :try_start_a6
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_213

    move-object v13, v14

    :cond_aa
    :goto_aa
    const-string v6, "-k -t -z -d -o /data/log/dumpstate_app_anr"

    const-string v22, "-k -t -z -d -o /data/log/dumpstate_app_anr"

    invoke-static/range {v22 .. v22}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppNotRespondingDialog;->setCancelable(Z)V

    if-eqz p4, :cond_26a

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    :goto_ca
    const/4 v12, 0x0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_277

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    if-eqz v12, :cond_277

    if-eqz v11, :cond_26d

    const v17, 0x1040627

    :goto_f2
    if-eqz v12, :cond_28b

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    :goto_116
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppNotRespondingDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/16 v22, -0x1

    const v23, 0x104062b

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/AppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    const/16 v22, -0x2

    const v23, 0x104062d

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/AppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1ad

    const/16 v18, 0x0

    const-string v22, "enterprise_policy"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v8, :cond_181

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v18

    :cond_181
    if-eqz v18, :cond_1ad

    invoke-virtual/range {v18 .. v18}, Landroid/app/enterprise/RestrictionPolicy;->isGoogleCrashReportAllowed()Z

    move-result v22

    if-eqz v22, :cond_1ad

    const/16 v22, -0x3

    const v23, 0x104062c

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/AppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    :cond_1ad
    const v22, 0x1040626

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppNotRespondingDialog;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz p5, :cond_1ca

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v22

    const/16 v23, 0x7da

    invoke-virtual/range {v22 .. v23}, Landroid/view/Window;->setType(I)V

    :cond_1ca
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v22

    const/high16 v23, 0x4000

    invoke-virtual/range {v22 .. v23}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Application Not Responding: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v22, 0x10

    move/from16 v0, v22

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_20f
    const-string v10, "/data/log/looper.txt"

    goto/16 :goto_6e

    :catch_213
    move-exception v7

    const-string v22, "AppNotRespondingDialog"

    const-string v23, "output.close() failed"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v13, v14

    goto/16 :goto_aa

    :catch_222
    move-exception v7

    :goto_223
    :try_start_223
    const-string v22, "AppNotRespondingDialog"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Can\'t dump looper "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_241
    .catchall {:try_start_223 .. :try_end_241} :catchall_256

    if-eqz v13, :cond_aa

    :try_start_243
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_246
    .catch Ljava/io/IOException; {:try_start_243 .. :try_end_246} :catch_248

    goto/16 :goto_aa

    :catch_248
    move-exception v7

    const-string v22, "AppNotRespondingDialog"

    const-string v23, "output.close() failed"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_aa

    :catchall_256
    move-exception v22

    :goto_257
    if-eqz v13, :cond_25c

    :try_start_259
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_25c
    .catch Ljava/io/IOException; {:try_start_259 .. :try_end_25c} :catch_25d

    :cond_25c
    :goto_25c
    throw v22

    :catch_25d
    move-exception v7

    const-string v23, "AppNotRespondingDialog"

    const-string v24, "output.close() failed"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25c

    :cond_26a
    const/4 v11, 0x0

    goto/16 :goto_ca

    :cond_26d
    move-object v11, v12

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const v17, 0x1040629

    goto/16 :goto_f2

    :cond_277
    if-eqz v11, :cond_282

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const v17, 0x1040628

    goto/16 :goto_f2

    :cond_282
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const v17, 0x104062a

    goto/16 :goto_f2

    :cond_28b
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_116

    :catchall_2a7
    move-exception v22

    move-object v13, v14

    goto :goto_257

    :catch_2aa
    move-exception v7

    move-object v13, v14

    goto/16 :goto_223

    :cond_2ae
    move-object v13, v14

    goto/16 :goto_aa
.end method

.method static synthetic access$000(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method


# virtual methods
.method getProcessName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    const-string v0, ""

    goto :goto_8
.end method

.method public onStop()V
    .registers 1

    return-void
.end method
