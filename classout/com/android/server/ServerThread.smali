.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DIR_ENCRYPTION:Z = false

.field public static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field public static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final is3LMAllowed:Z

.field private static final is3LMPowerSavingEnabled:Z


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startFingerprintService(Landroid/content/Context;)V
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.fingerprint_manager_service"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    :try_start_c
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.fingerprint.service"

    const-string v4, "com.samsung.android.fingerprint.service.FingerprintServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.secretmode.service"

    const-string v4, "com.samsung.android.secretmode.service.SecretModeService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_38} :catch_39

    :cond_38
    :goto_38
    return-void

    :catch_39
    move-exception v0

    const-string v2, "SystemServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting fingerprint service failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .registers 9

    const-string v4, "user"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "personal_mode_enabled"

    const/4 v6, 0x0

    iget v7, v2, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v3, v7}, Landroid/os/UserManager;->getUserHandle(I)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_10

    :cond_2d
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.systemui"

    const-string v6, "com.android.systemui.SystemUIService"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public run()V
    .registers 214

    const-string v7, "SystemServer"

    const-string v9, "!@Begin SystemServer Thread"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroid/util/EventLog;->writeEvent(IJ)I

    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    const/16 v7, -0x13

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v168

    if-eqz v168, :cond_56

    invoke-virtual/range {v168 .. v168}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_56

    const/4 v7, 0x0

    move-object/from16 v0, v168

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_186

    const/16 v162, 0x1

    :goto_3d
    invoke-virtual/range {v168 .. v168}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_18a

    const/4 v7, 0x1

    invoke-virtual/range {v168 .. v168}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v168

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v161

    :goto_4f
    move/from16 v0, v162

    move-object/from16 v1, v161

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    :cond_56
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v115

    const-string v7, ""

    move-object/from16 v0, v115

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18e

    const/16 v114, 0x0

    :goto_68
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v11, "0"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    const/16 v123, 0x0

    const/16 v67, 0x0

    const/16 v97, 0x0

    const/16 v129, 0x0

    const/16 v126, 0x0

    const/16 v158, 0x0

    const/16 v106, 0x0

    const/16 v77, 0x0

    const/16 v199, 0x0

    const/16 v69, 0x0

    const/16 v142, 0x0

    const/16 v30, 0x0

    const/16 v29, 0x0

    const/16 v148, 0x0

    const/16 v91, 0x0

    const/16 v160, 0x0

    const/16 v209, 0x0

    const/16 v206, 0x0

    const/16 v144, 0x0

    const/16 v208, 0x0

    const/16 v167, 0x0

    const/16 v204, 0x0

    const/16 v157, 0x0

    const/4 v5, 0x0

    const/16 v211, 0x0

    const/16 v78, 0x0

    const/16 v107, 0x0

    const/16 v197, 0x0

    const/16 v165, 0x0

    const/16 v192, 0x0

    const/16 v195, 0x0

    const/16 v163, 0x0

    const/16 v150, 0x0

    const/16 v180, 0x0

    const/16 v103, 0x0

    const/16 v88, 0x0

    const/16 v122, 0x0

    const/16 v177, 0x0

    const/16 v146, 0x0

    const/16 v159, 0x0

    const/16 v95, 0x0

    const/16 v185, 0x0

    const/16 v183, 0x0

    const/16 v179, 0x0

    const/16 v101, 0x0

    const/16 v134, 0x0

    new-instance v194, Landroid/os/HandlerThread;

    const-string v7, "UI"

    move-object/from16 v0, v194

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v194 .. v194}, Landroid/os/HandlerThread;->start()V

    new-instance v20, Landroid/os/Handler;

    invoke-virtual/range {v194 .. v194}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v212, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v212

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v212 .. v212}, Landroid/os/HandlerThread;->start()V

    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v212 .. v212}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v7, Lcom/android/server/ServerThread$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/16 v24, 0x0

    :try_start_119
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v124, Lcom/android/server/pm/Installer;

    invoke-direct/range {v124 .. v124}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_125
    .catch Ljava/lang/RuntimeException; {:try_start_119 .. :try_end_125} :catch_131d

    :try_start_125
    invoke-virtual/range {v124 .. v124}, Lcom/android/server/pm/Installer;->ping()Z

    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/power/PowerManagerService;

    invoke-direct {v4}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_134
    .catch Ljava/lang/RuntimeException; {:try_start_125 .. :try_end_134} :catch_132c

    :try_start_134
    const-string v7, "power"

    invoke-static {v7, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v114 .. v114}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v5

    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v10, v5, v0, v1}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_154
    .catch Ljava/lang/RuntimeException; {:try_start_134 .. :try_end_154} :catch_133d

    :try_start_154
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v10, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isMultiSimSlot()Z

    move-result v7

    if-eqz v7, :cond_bfe

    const/16 v172, 0x0

    :goto_169
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v7

    move/from16 v0, v172

    if-ge v0, v7, :cond_194

    const-string v7, "telephony.registry"

    move/from16 v0, v172

    invoke-static {v7, v0}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    move/from16 v0, v172

    invoke-direct {v9, v5, v0}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;I)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_183
    .catch Ljava/lang/RuntimeException; {:try_start_154 .. :try_end_183} :catch_c62

    add-int/lit8 v172, v172, 0x1

    goto :goto_169

    :cond_186
    const/16 v162, 0x0

    goto/16 :goto_3d

    :cond_18a
    const/16 v161, 0x0

    goto/16 :goto_4f

    :cond_18e
    invoke-static/range {v115 .. v115}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v114

    goto/16 :goto_68

    :cond_194
    move-object/from16 v147, v146

    :goto_196
    :try_start_196
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_1412

    const-string v7, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v146, Lcom/android/server/MSimTelephonyRegistry;

    move-object/from16 v0, v146

    invoke-direct {v0, v5}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_1ad
    .catch Ljava/lang/RuntimeException; {:try_start_196 .. :try_end_1ad} :catch_136c

    :try_start_1ad
    const-string v7, "telephony.msim.registry"

    move-object/from16 v0, v146

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :goto_1b4
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "scheduling_policy"

    new-instance v9, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v9}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    invoke-virtual {v10}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_1da

    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1da
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v100

    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v100

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c2e

    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f8
    .catch Ljava/lang/RuntimeException; {:try_start_1ad .. :try_end_1f8} :catch_c62

    const/16 v24, 0x1

    :cond_1fa
    :goto_1fa
    :try_start_1fa
    const-string v7, "SystemServer"

    const-string v9, "Enterprise Container Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v96, Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, v96

    invoke-direct {v0, v5}, Lcom/sec/knox/container/EnterpriseContainerService;-><init>(Landroid/content/Context;)V
    :try_end_208
    .catch Ljava/lang/Throwable; {:try_start_1fa .. :try_end_208} :catch_c43
    .catch Ljava/lang/RuntimeException; {:try_start_1fa .. :try_end_208} :catch_c62

    :try_start_208
    const-string v7, "container_service"

    move-object/from16 v0, v96

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Container Service service created..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_216
    .catch Ljava/lang/Throwable; {:try_start_208 .. :try_end_216} :catch_1409
    .catch Ljava/lang/RuntimeException; {:try_start_208 .. :try_end_216} :catch_137b

    move-object/from16 v95, v96

    :goto_218
    :try_start_218
    const-string v7, "1"

    const-string v9, "ro.config.tima"

    const-string v11, "0"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_225
    .catch Ljava/lang/RuntimeException; {:try_start_218 .. :try_end_225} :catch_c62

    move-result v182

    if-eqz v182, :cond_24f

    :try_start_228
    const-string v7, "SystemServer"

    const-string v9, "TIMA Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v186, Lcom/android/server/TimaService;

    move-object/from16 v0, v186

    invoke-direct {v0, v5}, Lcom/android/server/TimaService;-><init>(Landroid/content/Context;)V
    :try_end_236
    .catch Ljava/lang/Throwable; {:try_start_228 .. :try_end_236} :catch_c7f
    .catch Ljava/lang/RuntimeException; {:try_start_228 .. :try_end_236} :catch_c62

    :try_start_236
    const-string v7, "tima"

    move-object/from16 v0, v186

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23d
    .catch Ljava/lang/Throwable; {:try_start_236 .. :try_end_23d} :catch_1404
    .catch Ljava/lang/RuntimeException; {:try_start_236 .. :try_end_23d} :catch_138a

    move-object/from16 v185, v186

    :goto_23f
    :try_start_23f
    const-string v7, "SystemServer"

    const-string v9, "TIMA Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v184, Lcom/android/server/TimaObserver;

    move-object/from16 v0, v184

    invoke-direct {v0, v5}, Lcom/android/server/TimaObserver;-><init>(Landroid/content/Context;)V
    :try_end_24d
    .catch Ljava/lang/Throwable; {:try_start_23f .. :try_end_24d} :catch_c8b
    .catch Ljava/lang/RuntimeException; {:try_start_23f .. :try_end_24d} :catch_c62

    move-object/from16 v183, v184

    :cond_24f
    :goto_24f
    :try_start_24f
    const-string v7, "SystemServer"

    const-string v9, "!@Begin PackageManager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v114, :cond_c97

    const/4 v7, 0x1

    :goto_259
    move-object/from16 v0, v124

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;

    move-result-object v157

    const-string v7, "SystemServer"

    const-string v9, "!@End PackageManager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_268
    .catch Ljava/lang/RuntimeException; {:try_start_24f .. :try_end_268} :catch_c62

    const/16 v117, 0x0

    :try_start_26a
    invoke-interface/range {v157 .. v157}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_26d
    .catch Landroid/os/RemoteException; {:try_start_26a .. :try_end_26d} :catch_12a1
    .catch Ljava/lang/RuntimeException; {:try_start_26a .. :try_end_26d} :catch_c62

    move-result v117

    :goto_26e
    :try_start_26e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_29a
    .catch Ljava/lang/RuntimeException; {:try_start_26e .. :try_end_29a} :catch_c62

    :try_start_29a
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v68, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v68

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2a8
    .catch Ljava/lang/Throwable; {:try_start_29a .. :try_end_2a8} :catch_c9a
    .catch Ljava/lang/RuntimeException; {:try_start_29a .. :try_end_2a8} :catch_c62

    :try_start_2a8
    const-string v7, "account"

    move-object/from16 v0, v68

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2af
    .catch Ljava/lang/Throwable; {:try_start_2a8 .. :try_end_2af} :catch_13ff
    .catch Ljava/lang/RuntimeException; {:try_start_2a8 .. :try_end_2af} :catch_1399

    move-object/from16 v67, v68

    :goto_2b1
    :try_start_2b1
    const-string v7, ""

    const-string v9, "KT"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2b8
    .catch Ljava/lang/RuntimeException; {:try_start_2b1 .. :try_end_2b8} :catch_c62

    move-result v7

    if-eqz v7, :cond_2cc

    :try_start_2bb
    const-string v7, "SystemServer"

    const-string v9, "KT UCA Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "ktuca"

    new-instance v9, Landroid/ktuca/KtUcaService;

    invoke-direct {v9, v5}, Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2cc
    .catch Ljava/lang/Throwable; {:try_start_2bb .. :try_end_2cc} :catch_ca6
    .catch Ljava/lang/RuntimeException; {:try_start_2bb .. :try_end_2cc} :catch_c62

    :cond_2cc
    :goto_2cc
    :try_start_2cc
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    move/from16 v0, v114

    if-ne v0, v7, :cond_cb2

    const/4 v7, 0x1

    :goto_2d9
    invoke-static {v5, v7}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v97

    new-instance v102, Lcom/android/server/DirEncryptService;

    move-object/from16 v0, v102

    invoke-direct {v0, v5}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_2e4
    .catch Ljava/lang/RuntimeException; {:try_start_2cc .. :try_end_2e4} :catch_c62

    :try_start_2e4
    sget-boolean v7, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    if-eqz v7, :cond_2ef

    const-string v7, "DirEncryptService"

    move-object/from16 v0, v102

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2ef
    .catch Ljava/lang/Throwable; {:try_start_2e4 .. :try_end_2ef} :catch_cb5
    .catch Ljava/lang/RuntimeException; {:try_start_2e4 .. :try_end_2ef} :catch_13a8

    :cond_2ef
    move-object/from16 v101, v102

    :goto_2f1
    :try_start_2f1
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/android/server/LightsService;

    invoke-direct {v6, v5}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_307
    .catch Ljava/lang/RuntimeException; {:try_start_2f1 .. :try_end_307} :catch_c62

    :try_start_307
    const-string v7, "SystemServer"

    const-string v9, "Led Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v127, Lcom/android/server/LEDManagerService;

    move-object/from16 v0, v127

    invoke-direct {v0, v6}, Lcom/android/server/LEDManagerService;-><init>(Lcom/android/server/LightsService;)V
    :try_end_315
    .catch Ljava/lang/RuntimeException; {:try_start_307 .. :try_end_315} :catch_13b7

    :try_start_315
    const-string v7, "LEDService"

    move-object/from16 v0, v127

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "1"

    const-string v9, "persist.service.thermal"

    const-string v11, "0"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_343

    const-string v7, "SystemServer"

    const-string v9, "Intel Thermal Service enabled"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v181, Lcom/android/server/ThermalService;

    move-object/from16 v0, v181

    invoke-direct {v0, v5}, Lcom/android/server/ThermalService;-><init>(Landroid/content/Context;)V
    :try_end_33a
    .catch Ljava/lang/RuntimeException; {:try_start_315 .. :try_end_33a} :catch_13c2

    :try_start_33a
    const-string v7, "thermalservice"

    move-object/from16 v0, v181

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_341
    .catch Ljava/lang/RuntimeException; {:try_start_33a .. :try_end_341} :catch_13cf

    move-object/from16 v180, v181

    :cond_343
    :try_start_343
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_34f
    .catch Ljava/lang/RuntimeException; {:try_start_343 .. :try_end_34f} :catch_13c2

    :try_start_34f
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v200, Lcom/android/server/VibratorService;

    move-object/from16 v0, v200

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_362
    .catch Ljava/lang/RuntimeException; {:try_start_34f .. :try_end_362} :catch_13de

    :try_start_362
    const-string v7, "vibrator"

    move-object/from16 v0, v200

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "SSRM Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_370
    .catch Ljava/lang/RuntimeException; {:try_start_362 .. :try_end_370} :catch_ccd

    :try_start_370
    new-instance v81, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/ssrm.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object/from16 v0, v81

    invoke-direct {v0, v7, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v7, "com.android.server.ssrm.CustomFrequencyManagerService"

    move-object/from16 v0, v81

    invoke-virtual {v0, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v80

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    const-class v11, Landroid/app/IActivityManager;

    aput-object v11, v7, v9

    move-object/from16 v0, v80

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v82

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    const/4 v9, 0x1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v11

    aput-object v11, v7, v9

    move-object/from16 v0, v82

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v173

    check-cast v173, Landroid/os/IBinder;

    const-string v7, "CustomFrequencyManagerService"

    move-object/from16 v0, v173

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b4
    .catch Ljava/lang/Exception; {:try_start_370 .. :try_end_3b4} :catch_cc3
    .catch Ljava/lang/RuntimeException; {:try_start_370 .. :try_end_3b4} :catch_ccd

    :goto_3b4
    :try_start_3b4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/display/DisplayManagerService;)V

    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Lcom/android/server/AlarmManagerService;

    invoke-direct {v15, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3cb
    .catch Ljava/lang/RuntimeException; {:try_start_3b4 .. :try_end_3cb} :catch_ccd

    :try_start_3cb
    const-string v7, "alarm"

    invoke-static {v7, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v16

    move-object v12, v5

    move-object v13, v8

    move-object v14, v4

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v19, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_3f5
    .catch Ljava/lang/RuntimeException; {:try_start_3cb .. :try_end_3f5} :catch_13e9

    :try_start_3f5
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "com.sec.feature.sensorhub"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_423

    const-string v7, "SystemServer"

    const-string v9, "Context Aware Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "context_aware"

    new-instance v9, Landroid/hardware/contextaware/manager/ContextAwareService;

    invoke-direct {v9, v5}, Landroid/hardware/contextaware/manager/ContextAwareService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "SContext Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "scontext"

    new-instance v9, Landroid/hardware/scontext/SContextService;

    invoke-direct {v9, v5}, Landroid/hardware/scontext/SContextService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_423
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    move/from16 v0, v114

    if-eq v0, v7, :cond_cd9

    const/16 v22, 0x1

    :goto_431
    if-nez v117, :cond_cdd

    const/16 v23, 0x1

    :goto_435
    move-object/from16 v16, v5

    move-object/from16 v17, v4

    move-object/from16 v18, v10

    invoke-static/range {v16 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v211

    const-string v7, "window"

    move-object/from16 v0, v211

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "input"

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v211

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual/range {v211 .. v211}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/input/InputManagerService;->start()V

    move-object/from16 v0, v211

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ce1

    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_481
    .catch Ljava/lang/RuntimeException; {:try_start_3f5 .. :try_end_481} :catch_cef

    :goto_481
    move-object/from16 v199, v200

    move-object/from16 v126, v127

    move-object/from16 v123, v124

    :goto_487
    const/16 v104, 0x0

    const/16 v112, 0x0

    const/16 v175, 0x0

    const/16 v120, 0x0

    const/16 v71, 0x0

    const/16 v152, 0x0

    const/16 v202, 0x0

    const/16 v130, 0x0

    const/16 v98, 0x0

    const/16 v188, 0x0

    const/16 v132, 0x0

    const/16 v109, 0x0

    const/16 v187, 0x0

    const/4 v7, 0x1

    move/from16 v0, v114

    if-eq v0, v7, :cond_4d0

    :try_start_4a6
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v121, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v121

    move-object/from16 v1, v211

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_4b6
    .catch Ljava/lang/Throwable; {:try_start_4a6 .. :try_end_4b6} :catch_d37

    :try_start_4b6
    const-string v7, "input_method"

    move-object/from16 v0, v121

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4bd
    .catch Ljava/lang/Throwable; {:try_start_4b6 .. :try_end_4bd} :catch_1318

    move-object/from16 v120, v121

    :goto_4bf
    :try_start_4bf
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d0
    .catch Ljava/lang/Throwable; {:try_start_4bf .. :try_end_4d0} :catch_d43

    :cond_4d0
    :goto_4d0
    :try_start_4d0
    invoke-virtual/range {v211 .. v211}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_4d3
    .catch Ljava/lang/Throwable; {:try_start_4d0 .. :try_end_4d3} :catch_d4f

    :goto_4d3
    :try_start_4d3
    invoke-interface/range {v157 .. v157}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_4d6
    .catch Ljava/lang/Throwable; {:try_start_4d3 .. :try_end_4d6} :catch_d5b

    :goto_4d6
    :try_start_4d6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x1040639

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v7, v9, v11}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_4e9
    .catch Landroid/os/RemoteException; {:try_start_4d6 .. :try_end_4e9} :catch_1315

    :goto_4e9
    if-eqz v95, :cond_4ee

    :try_start_4eb
    invoke-virtual/range {v95 .. v95}, Lcom/sec/knox/container/EnterpriseContainerService;->preSystemReady()V
    :try_end_4ee
    .catch Ljava/lang/Throwable; {:try_start_4eb .. :try_end_4ee} :catch_d67

    :cond_4ee
    :goto_4ee
    const/4 v7, 0x1

    move/from16 v0, v114

    if-eq v0, v7, :cond_140e

    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_518

    :try_start_501
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v143, Lcom/android/server/MountService;

    move-object/from16 v0, v143

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_50f
    .catch Ljava/lang/Throwable; {:try_start_501 .. :try_end_50f} :catch_d73

    :try_start_50f
    const-string v7, "mount"

    move-object/from16 v0, v143

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_516
    .catch Ljava/lang/Throwable; {:try_start_50f .. :try_end_516} :catch_1310

    move-object/from16 v142, v143

    :cond_518
    :goto_518
    :try_start_518
    const-string v7, "SystemServer"

    const-string v9, "DirEncryptSerrvice"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v101, :cond_52b

    const-string v7, "SystemServer"

    const-string v9, "DirEncryptService.SystemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v101 .. v101}, Lcom/android/server/DirEncryptService;->systemReady()V
    :try_end_52b
    .catch Ljava/lang/Throwable; {:try_start_518 .. :try_end_52b} :catch_d7f

    :cond_52b
    :goto_52b
    :try_start_52b
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v133, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v133

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_539
    .catch Ljava/lang/Throwable; {:try_start_52b .. :try_end_539} :catch_d8b

    :try_start_539
    const-string v7, "lock_settings"

    move-object/from16 v0, v133

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_540
    .catch Ljava/lang/Throwable; {:try_start_539 .. :try_end_540} :catch_130b

    move-object/from16 v132, v133

    :goto_542
    :try_start_542
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v105, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v105

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_550
    .catch Ljava/lang/Throwable; {:try_start_542 .. :try_end_550} :catch_d97

    :try_start_550
    const-string v7, "device_policy"

    move-object/from16 v0, v105

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_557
    .catch Ljava/lang/Throwable; {:try_start_550 .. :try_end_557} :catch_1306

    move-object/from16 v104, v105

    :goto_559
    :try_start_559
    const-string v7, "SystemServer"

    const-string v9, "Enterprise Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v113, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-object/from16 v0, v157

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    move-object v7, v0

    move-object/from16 v0, v113

    move-object/from16 v1, v104

    invoke-direct {v0, v5, v7, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/app/admin/IDevicePolicyManager;)V
    :try_end_56e
    .catch Ljava/lang/Throwable; {:try_start_559 .. :try_end_56e} :catch_da3

    :try_start_56e
    const-string v7, "enterprise_policy"

    move-object/from16 v0, v113

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Enterprise Policymanager service created..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57c
    .catch Ljava/lang/Throwable; {:try_start_56e .. :try_end_57c} :catch_1301

    move-object/from16 v112, v113

    :goto_57e
    :try_start_57e
    const-string v7, "SystemServer"

    const-string v9, "HarmonyEAS service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v135, Lcom/android/server/HarmonyEASService;

    move-object/from16 v0, v135

    invoke-direct {v0, v5}, Lcom/android/server/HarmonyEASService;-><init>(Landroid/content/Context;)V
    :try_end_58c
    .catch Ljava/lang/Throwable; {:try_start_57e .. :try_end_58c} :catch_daf

    :try_start_58c
    const-string v7, "harmony_eas_service"

    move-object/from16 v0, v135

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Harmony EAS service created..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59a
    .catch Ljava/lang/Throwable; {:try_start_58c .. :try_end_59a} :catch_12fc

    move-object/from16 v134, v135

    :goto_59c
    :try_start_59c
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v176, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v176

    move-object/from16 v1, v211

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_5ac
    .catch Ljava/lang/Throwable; {:try_start_59c .. :try_end_5ac} :catch_dbb

    :try_start_5ac
    const-string v7, "statusbar"

    move-object/from16 v0, v176

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5b3
    .catch Ljava/lang/Throwable; {:try_start_5ac .. :try_end_5b3} :catch_12f7

    move-object/from16 v175, v176

    :goto_5b5
    :try_start_5b5
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5c6
    .catch Ljava/lang/Throwable; {:try_start_5b5 .. :try_end_5c6} :catch_dc7

    :goto_5c6
    :try_start_5c6
    const-string v7, "SystemServer"

    const-string v9, "ClipboardEx Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "clipboardEx"

    new-instance v9, Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {v9, v5}, Lcom/android/server/sec/InternalClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5d7
    .catch Ljava/lang/Throwable; {:try_start_5c6 .. :try_end_5d7} :catch_dd3

    :goto_5d7
    :try_start_5d7
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v154

    if-eqz v154, :cond_5f9

    const-string v7, "com.sec.feature.spen_usp"

    move-object/from16 v0, v154

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_5f9

    const-string v7, "SystemServer"

    const-string v9, "SmartclipMetadata Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "smartclipMetadata"

    new-instance v9, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;

    invoke-direct {v9, v5}, Lcom/android/server/smartclip/InternalSmartClipMetaDataService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5f9
    .catch Ljava/lang/Throwable; {:try_start_5d7 .. :try_end_5f9} :catch_ddf

    :cond_5f9
    :goto_5f9
    :try_start_5f9
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_60b
    .catch Ljava/lang/Throwable; {:try_start_5f9 .. :try_end_60b} :catch_deb

    :goto_60b
    :try_start_60b
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v189, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v189

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_619
    .catch Ljava/lang/Throwable; {:try_start_60b .. :try_end_619} :catch_df7

    :try_start_619
    const-string v7, "textservices"

    move-object/from16 v0, v189

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_620
    .catch Ljava/lang/Throwable; {:try_start_619 .. :try_end_620} :catch_12f2

    move-object/from16 v188, v189

    :goto_622
    :try_start_622
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v149, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v149

    move-object/from16 v1, v30

    invoke-direct {v0, v5, v1, v15}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_632
    .catch Ljava/lang/Throwable; {:try_start_622 .. :try_end_632} :catch_e03

    :try_start_632
    const-string v7, "netstats"

    move-object/from16 v0, v149

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_639
    .catch Ljava/lang/Throwable; {:try_start_632 .. :try_end_639} :catch_12ed

    move-object/from16 v29, v149

    :goto_63b
    :try_start_63b
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_64f
    .catch Ljava/lang/Throwable; {:try_start_63b .. :try_end_64f} :catch_e0f

    :try_start_64f
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_656
    .catch Ljava/lang/Throwable; {:try_start_64f .. :try_end_656} :catch_12ea

    :goto_656
    :try_start_656
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v210, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v210

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_664
    .catch Ljava/lang/Throwable; {:try_start_656 .. :try_end_664} :catch_e1d

    :try_start_664
    const-string v7, "wifip2p"

    move-object/from16 v0, v210

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_66b
    .catch Ljava/lang/Throwable; {:try_start_664 .. :try_end_66b} :catch_12e5

    move-object/from16 v209, v210

    :goto_66d
    :try_start_66d
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v207, Lcom/android/server/wifi/WifiService;

    move-object/from16 v0, v207

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_67b
    .catch Ljava/lang/Throwable; {:try_start_66d .. :try_end_67b} :catch_e29

    :try_start_67b
    const-string v7, "wifi"

    move-object/from16 v0, v207

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_682
    .catch Ljava/lang/Throwable; {:try_start_67b .. :try_end_682} :catch_12e0

    move-object/from16 v206, v207

    :goto_684
    :try_start_684
    const-string v7, "SystemServer"

    const-string v9, "MSAP Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v145, Lcom/android/server/MsapWifiService;

    move-object/from16 v0, v145

    invoke-direct {v0, v5}, Lcom/android/server/MsapWifiService;-><init>(Landroid/content/Context;)V
    :try_end_692
    .catch Ljava/lang/Throwable; {:try_start_684 .. :try_end_692} :catch_e35

    :try_start_692
    const-string v7, "msapwifi"

    move-object/from16 v0, v145

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_699
    .catch Ljava/lang/Throwable; {:try_start_692 .. :try_end_699} :catch_12db

    move-object/from16 v144, v145

    :goto_69b
    :try_start_69b
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Display Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v205, Lcom/samsung/wfd/WfdService;

    move-object/from16 v0, v205

    invoke-direct {v0, v5}, Lcom/samsung/wfd/WfdService;-><init>(Landroid/content/Context;)V
    :try_end_6a9
    .catch Ljava/lang/Throwable; {:try_start_69b .. :try_end_6a9} :catch_e41

    :try_start_6a9
    const-string v7, "wfd"

    move-object/from16 v0, v205

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6b0
    .catch Ljava/lang/Throwable; {:try_start_6a9 .. :try_end_6b0} :catch_12d6

    move-object/from16 v204, v205

    :goto_6b2
    :try_start_6b2
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v92, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v92

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_6c6
    .catch Ljava/lang/Throwable; {:try_start_6b2 .. :try_end_6c6} :catch_e4d

    :try_start_6c6
    const-string v7, "connectivity"

    move-object/from16 v0, v92

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    invoke-virtual/range {v206 .. v206}, Lcom/android/server/wifi/WifiService;->checkAndStartWifi()V

    invoke-virtual/range {v209 .. v209}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_6e1
    .catch Ljava/lang/Throwable; {:try_start_6c6 .. :try_end_6e1} :catch_12d1

    move-object/from16 v91, v92

    :goto_6e3
    :try_start_6e3
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v167

    const-string v7, "servicediscovery"

    move-object/from16 v0, v167

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6f5
    .catch Ljava/lang/Throwable; {:try_start_6e3 .. :try_end_6f5} :catch_e59

    :goto_6f5
    :try_start_6f5
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_706
    .catch Ljava/lang/Throwable; {:try_start_6f5 .. :try_end_706} :catch_e65

    :goto_706
    if-eqz v142, :cond_71b

    const-string v7, "vold.decrypt"

    const-string v9, "null"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "trigger_restart_min_framework"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_71b

    invoke-virtual/range {v142 .. v142}, Lcom/android/server/MountService;->waitForAsecScan()V

    :cond_71b
    if-eqz v67, :cond_720

    :try_start_71d
    invoke-virtual/range {v67 .. v67}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_720
    .catch Ljava/lang/Throwable; {:try_start_71d .. :try_end_720} :catch_e71

    :cond_720
    :goto_720
    if-eqz v97, :cond_725

    :try_start_722
    invoke-virtual/range {v97 .. v97}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_725
    .catch Ljava/lang/Throwable; {:try_start_722 .. :try_end_725} :catch_e7d

    :cond_725
    :goto_725
    :try_start_725
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v153, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v153

    move-object/from16 v1, v175

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_735
    .catch Ljava/lang/Throwable; {:try_start_725 .. :try_end_735} :catch_e89

    :try_start_735
    const-string v7, "notification"

    move-object/from16 v0, v153

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v153

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_743
    .catch Ljava/lang/Throwable; {:try_start_735 .. :try_end_743} :catch_12cc

    move-object/from16 v152, v153

    :goto_745
    :try_start_745
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_756
    .catch Ljava/lang/Throwable; {:try_start_745 .. :try_end_756} :catch_e95

    :goto_756
    :try_start_756
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v131, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v131

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_764
    .catch Ljava/lang/Throwable; {:try_start_756 .. :try_end_764} :catch_ea1

    :try_start_764
    const-string v7, "location"

    move-object/from16 v0, v131

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_76b
    .catch Ljava/lang/Throwable; {:try_start_764 .. :try_end_76b} :catch_12c7

    move-object/from16 v130, v131

    :goto_76d
    :try_start_76d
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v99, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v99

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_77b
    .catch Ljava/lang/Throwable; {:try_start_76d .. :try_end_77b} :catch_ead

    :try_start_77b
    const-string v7, "country_detector"

    move-object/from16 v0, v99

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_782
    .catch Ljava/lang/Throwable; {:try_start_77b .. :try_end_782} :catch_12c2

    move-object/from16 v98, v99

    :goto_784
    :try_start_784
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "search"

    new-instance v9, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_795
    .catch Ljava/lang/Throwable; {:try_start_784 .. :try_end_795} :catch_eb9

    :goto_795
    :try_start_795
    const-string v7, "com.sec.feature.spell_manager_service"

    move-object/from16 v0, v157

    invoke-interface {v0, v7}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ec5

    const-string v7, "SystemServer"

    const-string v9, "Spell Manager Service starting..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "spell"

    new-instance v9, Landroid/server/spell/SpellManagerService;

    invoke-direct {v9, v5}, Landroid/server/spell/SpellManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7b0
    .catch Ljava/lang/Throwable; {:try_start_795 .. :try_end_7b0} :catch_ece

    :goto_7b0
    :try_start_7b0
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v11, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v11}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7c8
    .catch Ljava/lang/Throwable; {:try_start_7b0 .. :try_end_7c8} :catch_eeb

    :goto_7c8
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111002e

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_7ee

    :try_start_7d5
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v33, :cond_7ee

    new-instance v203, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v203

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7e5
    .catch Ljava/lang/Throwable; {:try_start_7d5 .. :try_end_7e5} :catch_ef7

    :try_start_7e5
    const-string v7, "wallpaper"

    move-object/from16 v0, v203

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7ec
    .catch Ljava/lang/Throwable; {:try_start_7e5 .. :try_end_7ec} :catch_12bd

    move-object/from16 v202, v203

    :cond_7ee
    :goto_7ee
    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_80d

    :try_start_7fc
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_80d
    .catch Ljava/lang/Throwable; {:try_start_7fc .. :try_end_80d} :catch_f03

    :cond_80d
    :goto_80d
    const-string v7, "ro.mds.enable"

    const-string v9, "false"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v137

    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Intel MDS Service ro.mds.enable = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v137

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "true"

    move-object/from16 v0, v137

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_86d

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v84

    :try_start_83d
    const-string v7, "SystemServer"

    const-string v9, "Intel Display Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v87, 0x0

    if-eqz v84, :cond_f0f

    const-string v7, "com.intel.multidisplay.DisplayObserver"

    move-object/from16 v0, v84

    invoke-virtual {v0, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v87

    :goto_850
    if-eqz v87, :cond_f24

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v7, v9

    move-object/from16 v0, v87

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v63

    if-eqz v63, :cond_86d

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    move-object/from16 v0, v63

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_86d
    .catch Ljava/lang/Throwable; {:try_start_83d .. :try_end_86d} :catch_f18

    :cond_86d
    :goto_86d
    :try_start_86d
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v108, Lcom/android/server/DockObserver;

    move-object/from16 v0, v108

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_87b
    .catch Ljava/lang/Throwable; {:try_start_86d .. :try_end_87b} :catch_f2d

    move-object/from16 v107, v108

    :goto_87d
    :try_start_87d
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v19

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_890
    .catch Ljava/lang/Throwable; {:try_start_87d .. :try_end_890} :catch_f39

    :goto_890
    :try_start_890
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v198, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v198

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_89e
    .catch Ljava/lang/Throwable; {:try_start_890 .. :try_end_89e} :catch_f45

    :try_start_89e
    const-string v7, "usb"

    move-object/from16 v0, v198

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8a5
    .catch Ljava/lang/Throwable; {:try_start_89e .. :try_end_8a5} :catch_12b8

    move-object/from16 v197, v198

    :goto_8a7
    :try_start_8a7
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v166, Lcom/android/server/SerialService;

    move-object/from16 v0, v166

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_8b5
    .catch Ljava/lang/Throwable; {:try_start_8a7 .. :try_end_8b5} :catch_f51

    :try_start_8b5
    const-string v7, "serial"

    move-object/from16 v0, v166

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8bc
    .catch Ljava/lang/Throwable; {:try_start_8b5 .. :try_end_8bc} :catch_12b3

    move-object/from16 v165, v166

    :goto_8be
    :try_start_8be
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v193, Lcom/android/server/TwilightService;

    move-object/from16 v0, v193

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_8cc
    .catch Ljava/lang/Throwable; {:try_start_8be .. :try_end_8cc} :catch_f5d

    move-object/from16 v192, v193

    :goto_8ce
    :try_start_8ce
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v196, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v196

    move-object/from16 v1, v192

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_8de
    .catch Ljava/lang/Throwable; {:try_start_8ce .. :try_end_8de} :catch_f69

    move-object/from16 v195, v196

    :goto_8e0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v9, "CscFeature_Common_EnableSUA"

    invoke-virtual {v7, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8fd

    :try_start_8ec
    const-string v7, "SystemServer"

    const-string v9, "KiesUsb Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "kiesusb"

    new-instance v9, Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {v9, v5}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8fd
    .catch Ljava/lang/Throwable; {:try_start_8ec .. :try_end_8fd} :catch_f75

    :cond_8fd
    :goto_8fd
    :try_start_8fd
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_90e
    .catch Ljava/lang/Throwable; {:try_start_8fd .. :try_end_90e} :catch_f81

    :goto_90e
    :try_start_90e
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v72, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v72

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_91c
    .catch Ljava/lang/Throwable; {:try_start_90e .. :try_end_91c} :catch_f8d

    :try_start_91c
    const-string v7, "appwidget"

    move-object/from16 v0, v72

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_923
    .catch Ljava/lang/Throwable; {:try_start_91c .. :try_end_923} :catch_12ae

    move-object/from16 v71, v72

    :goto_925
    :try_start_925
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v164, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v164

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_933
    .catch Ljava/lang/Throwable; {:try_start_925 .. :try_end_933} :catch_f99

    move-object/from16 v163, v164

    :goto_935
    :try_start_935
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_946
    .catch Ljava/lang/Throwable; {:try_start_935 .. :try_end_946} :catch_fa5

    :goto_946
    :try_start_946
    const-string v7, "SystemServer"

    const-string v9, "AtCmdFwd Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v75, Lcom/android/internal/atfwd/AtCmdFwdService;

    move-object/from16 v0, v75

    invoke-direct {v0, v5}, Lcom/android/internal/atfwd/AtCmdFwdService;-><init>(Landroid/content/Context;)V

    const-string v7, "AtCmdFwd"

    move-object/from16 v0, v75

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_95b
    .catch Ljava/lang/Throwable; {:try_start_946 .. :try_end_95b} :catch_fb1

    :goto_95b
    :try_start_95b
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v154

    if-eqz v154, :cond_96c

    const-string v7, "com.sec.feature.spen_usp"

    move-object/from16 v0, v154

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I
    :try_end_968
    .catch Ljava/lang/Throwable; {:try_start_95b .. :try_end_968} :catch_fd2

    move-result v7

    const/4 v9, 0x2

    if-eq v7, v9, :cond_fbd

    :cond_96c
    :goto_96c
    :try_start_96c
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_97d
    .catch Ljava/lang/Throwable; {:try_start_96c .. :try_end_97d} :catch_fde

    :goto_97d
    :try_start_97d
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v151, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v151

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_98b
    .catch Ljava/lang/Throwable; {:try_start_97d .. :try_end_98b} :catch_fea

    move-object/from16 v150, v151

    :goto_98d
    const-string v7, "ro.tvout.enable"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v190

    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Tvout Service ro.tvout.enable = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v190

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "false"

    move-object/from16 v0, v190

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9cf

    :try_start_9b7
    const-string v7, "SystemServer"

    const-string v9, "Starting Tvout Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v191, 0x0

    const-string v7, "com.android.server.TvoutService"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v191

    if-nez v191, :cond_ff6

    const-string v7, "SystemServer"

    const-string v9, "Tvout Service not exist"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9cf
    .catch Ljava/lang/Throwable; {:try_start_9b7 .. :try_end_9cf} :catch_1024

    :cond_9cf
    :goto_9cf
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v155

    const-string v7, "com.sec.feature.irda_service"

    move-object/from16 v0, v155

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9f2

    :try_start_9dd
    const-string v7, "SystemServer"

    const-string v9, "IRDA Service!! Enable the IRDA service!!"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v125, Landroid/app/IrdaService;

    move-object/from16 v0, v125

    invoke-direct {v0, v5}, Landroid/app/IrdaService;-><init>(Landroid/content/Context;)V

    const-string v7, "irda"

    move-object/from16 v0, v125

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9f2
    .catch Ljava/lang/Throwable; {:try_start_9dd .. :try_end_9f2} :catch_1030

    :cond_9f2
    :goto_9f2
    const-string v7, "com.sec.feature.minimode"

    move-object/from16 v0, v155

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ab7

    :try_start_9fc
    const-string v7, "SystemServer"

    const-string v9, "MiniModeAppManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v139, "/data/dalvik-cache/system@framework@minimode.jar@classes.dex"

    const-string v141, "/data/dalvik-cache/minimode.dex"

    sget-object v7, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, v139

    invoke-interface {v7, v0}, Llibcore/io/Os;->stat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v174

    if-eqz v174, :cond_a7e

    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v139

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v141

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v9}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_a7e

    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v141

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " is copied from "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v139

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v140, Ljava/io/File;

    invoke-direct/range {v140 .. v141}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v174

    iget-wide v11, v0, Llibcore/io/StructStat;->st_mtime:J

    move-object/from16 v0, v140

    invoke-virtual {v0, v11, v12}, Ljava/io/File;->setLastModified(J)Z

    move-result v7

    if-eqz v7, :cond_a7e

    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lastModfied time of "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v141

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " is changed to "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v174

    iget-wide v11, v0, Llibcore/io/StructStat;->st_mtime:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a7e
    new-instance v83, Ldalvik/system/DexClassLoader;

    const-string v7, "/system/framework/minimode.jar"

    const-string v9, "/data/dalvik-cache/"

    const/4 v11, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    move-object/from16 v0, v83

    invoke-direct {v0, v7, v9, v11, v12}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v7, "com.sec.minimode.manager.MiniModeAppManagerService"

    move-object/from16 v0, v83

    invoke-virtual {v0, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v64

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v7, v9

    move-object/from16 v0, v64

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v65

    const-string v9, "mini_mode_app_manager"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v7, v11

    move-object/from16 v0, v65

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v9, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ab7
    .catch Ljava/lang/Throwable; {:try_start_9fc .. :try_end_ab7} :catch_103c

    :cond_ab7
    :goto_ab7
    const-string v7, "com.sec.feature.barcode_emulator"

    move-object/from16 v0, v155

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ad6

    :try_start_ac1
    const-string v7, "SystemServer"

    const-string v9, "BarBeamService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v76, Landroid/app/BarBeamService;

    move-object/from16 v0, v76

    invoke-direct {v0, v5}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    const-string v7, "barbeam"

    move-object/from16 v0, v76

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ad6
    .catch Ljava/lang/Throwable; {:try_start_ac1 .. :try_end_ad6} :catch_1048

    :cond_ad6
    :goto_ad6
    const-string v7, "com.sec.feature.ultrasonic_service"

    move-object/from16 v0, v155

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_af1

    :try_start_ae0
    const-string v7, "SystemServer"

    const-string v9, "Ultrasonic receiver Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "ultrasonic"

    new-instance v9, Lcom/android/server/UltrasonicService;

    invoke-direct {v9, v5}, Lcom/android/server/UltrasonicService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_af1
    .catch Ljava/lang/Throwable; {:try_start_ae0 .. :try_end_af1} :catch_1054

    :cond_af1
    :goto_af1
    :try_start_af1
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v89, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v89

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_aff
    .catch Ljava/lang/Throwable; {:try_start_af1 .. :try_end_aff} :catch_1060

    :try_start_aff
    const-string v7, "commontime_management"

    move-object/from16 v0, v89

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b06
    .catch Ljava/lang/Throwable; {:try_start_aff .. :try_end_b06} :catch_12a9

    move-object/from16 v88, v89

    :goto_b08
    :try_start_b08
    const-string v7, "SystemServer"

    const-string v9, "Motion Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "motion_recognition"

    new-instance v9, Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {v9, v5}, Landroid/hardware/motion/MotionRecognitionService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b19
    .catch Ljava/lang/Throwable; {:try_start_b08 .. :try_end_b19} :catch_106c

    :goto_b19
    :try_start_b19
    const-string v7, "SystemServer"

    const-string v9, "VoIPInterfaceManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "voip"

    new-instance v9, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v9, v5}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b2a
    .catch Ljava/lang/Throwable; {:try_start_b19 .. :try_end_b2a} :catch_1078

    :goto_b2a
    :try_start_b2a
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v83

    const-string v7, "com.sec.android.smartface.SmartFaceManager"

    const/4 v9, 0x1

    move-object/from16 v0, v83

    invoke-static {v7, v9, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v85

    const-string v7, "SMARTFACE_SERVICE"

    move-object/from16 v0, v85

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v116

    const-string v7, "com.sec.android.smartface.SmartFaceService"

    const/4 v9, 0x1

    move-object/from16 v0, v83

    invoke-static {v7, v9, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v86

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v7, v9

    move-object/from16 v0, v86

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v94

    const/4 v7, 0x0

    move-object/from16 v0, v116

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    move-object/from16 v0, v94

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/IBinder;

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "SmartFaceService loaded!"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b77
    .catch Ljava/lang/Exception; {:try_start_b2a .. :try_end_b77} :catch_1082

    :goto_b77
    :try_start_b77
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_b83
    .catch Ljava/lang/Throwable; {:try_start_b77 .. :try_end_b83} :catch_108e

    :goto_b83
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110047

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_ba9

    :try_start_b90
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v110, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v110

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_ba0
    .catch Ljava/lang/Throwable; {:try_start_b90 .. :try_end_ba0} :catch_109a

    :try_start_ba0
    const-string v7, "dreams"

    move-object/from16 v0, v110

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ba7
    .catch Ljava/lang/Throwable; {:try_start_ba0 .. :try_end_ba7} :catch_12a4

    move-object/from16 v109, v110

    :cond_ba9
    :goto_ba9
    :try_start_ba9
    const-string v7, "SystemServer"

    const-string v9, "Transcloud Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v170, 0x0

    const/4 v7, 0x1

    new-array v0, v7, [Landroid/content/pm/Signature;

    move-object/from16 v66, v0

    const/4 v7, 0x0

    new-instance v9, Landroid/content/pm/Signature;

    const-string v11, "3082028d308201f6a003020102020451d6e699300d06092a864886f70d0101050500308189310b3009060355040613024b523111300f060355040813084779656f6e676769310e300c060355040713055375776f6e311c301a060355040a131353616d73756e6720456c656374726f6e696373311e301c060355040b13154d6f62696c6520436f6d6d756e69636174696f6e733119301706035504030c10522644205465616d202d204b6f7265613020170d3133303730353135333033335a180f33303132313130353135333033335a308189310b3009060355040613024b523111300f060355040813084779656f6e676769310e300c060355040713055375776f6e311c301a060355040a131353616d73756e6720456c656374726f6e696373311e301c060355040b13154d6f62696c6520436f6d6d756e69636174696f6e733119301706035504030c10522644205465616d202d204b6f72656130819f300d06092a864886f70d010101050003818d0030818902818100a6e89d098ec79db8b54f962d66f1dace845df86bd14dbe05d544340f7f664ed07b8ea12f1647f2c5c1123bd09def349ffcf627a118d2ba6aaefc98521483e6d27f13487b7a675f6357a82da65da9e057808057617a1c74813954d8863267a3cad97455b19373c9ca48c48044f4e610e7750c24bd63601117e76e7344183c72d70203010001300d06092a864886f70d01010505000381810081743a7e1b1b844668dd5f1432e0b2556229e42a96acfdd656cabeffcb3071b7fe2826d615ec9334ea384c9ccf80f2336c39c751fbead8094b0b7da3bac48762f359f23c92e7c9a78e9fc790850aceb8318db48b53e1214ff0ed6b0b94a137622ced7d21190a6696cd4655900673fa7ff1e5214f06f68ca63be0b5d6ca99d74f"

    invoke-direct {v9, v11}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v9, v66, v7
    :try_end_bc1
    .catch Ljava/lang/Throwable; {:try_start_ba9 .. :try_end_bc1} :catch_1201

    :try_start_bc1
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "com.samsung.android.service.transcloud"

    const/16 v11, 0x40

    invoke-virtual {v7, v9, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v156

    move-object/from16 v0, v156

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v171, v0

    if-eqz v171, :cond_10b4

    move-object/from16 v74, v171

    move-object/from16 v0, v74

    array-length v0, v0

    move/from16 v128, v0

    const/16 v119, 0x0

    :goto_bde
    move/from16 v0, v119

    move/from16 v1, v128

    if-ge v0, v1, :cond_10b4

    aget-object v169, v74, v119

    const/16 v118, 0x0

    :goto_be8
    move-object/from16 v0, v66

    array-length v7, v0

    move/from16 v0, v118

    if-ge v0, v7, :cond_bfb

    aget-object v7, v66, v118

    move-object/from16 v0, v169

    invoke-virtual {v7, v0}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_bf6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_bc1 .. :try_end_bf6} :catch_10aa
    .catch Ljava/lang/Throwable; {:try_start_bc1 .. :try_end_bf6} :catch_1201

    move-result v7

    if-eqz v7, :cond_10a6

    const/16 v170, 0x1

    :cond_bfb
    add-int/lit8 v119, v119, 0x1

    goto :goto_bde

    :cond_bfe
    :try_start_bfe
    new-instance v178, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v178

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_c05
    .catch Ljava/lang/RuntimeException; {:try_start_bfe .. :try_end_c05} :catch_c62

    :try_start_c05
    const-string v7, "telephony.registry"

    move-object/from16 v0, v178

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_1416

    const-string v7, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v147, Lcom/android/server/MSimTelephonyRegistry;

    move-object/from16 v0, v147

    invoke-direct {v0, v5}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_c23
    .catch Ljava/lang/RuntimeException; {:try_start_c05 .. :try_end_c23} :catch_134c

    :try_start_c23
    const-string v7, "telephony.msim.registry"

    move-object/from16 v0, v147

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c2a
    .catch Ljava/lang/RuntimeException; {:try_start_c23 .. :try_end_c2a} :catch_135b

    move-object/from16 v177, v178

    goto/16 :goto_196

    :cond_c2e
    :try_start_c2e
    const-string v7, "1"

    move-object/from16 v0, v100

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1fa

    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    goto/16 :goto_1fa

    :catch_c43
    move-exception v111

    :goto_c44
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure starting Container Service"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {v111 .. v111}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c60
    .catch Ljava/lang/RuntimeException; {:try_start_c2e .. :try_end_c60} :catch_c62

    goto/16 :goto_218

    :catch_c62
    move-exception v111

    move-object/from16 v19, v122

    move-object/from16 v15, v69

    move-object/from16 v8, v77

    move-object/from16 v6, v129

    move-object/from16 v123, v124

    :goto_c6d
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v111

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_487

    :catch_c7f
    move-exception v111

    :goto_c80
    :try_start_c80
    const-string v7, "starting TimaService"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23f

    :catch_c8b
    move-exception v111

    const-string v7, "starting TimaObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24f

    :cond_c97
    const/4 v7, 0x0

    goto/16 :goto_259

    :catch_c9a
    move-exception v111

    :goto_c9b
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v111

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b1

    :catch_ca6
    move-exception v111

    const-string v7, "SystemServer"

    const-string v9, "Failure starting KT UCA Service"

    move-object/from16 v0, v111

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cb0
    .catch Ljava/lang/RuntimeException; {:try_start_c80 .. :try_end_cb0} :catch_c62

    goto/16 :goto_2cc

    :cond_cb2
    const/4 v7, 0x0

    goto/16 :goto_2d9

    :catch_cb5
    move-exception v111

    :try_start_cb6
    const-string v7, "SystemServer"

    const-string v9, "Failure starting DirEncryptService"

    move-object/from16 v0, v111

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cbf
    .catch Ljava/lang/RuntimeException; {:try_start_cb6 .. :try_end_cbf} :catch_13a8

    const/16 v101, 0x0

    goto/16 :goto_2f1

    :catch_cc3
    move-exception v111

    :try_start_cc4
    const-string v7, "SystemServer"

    const-string v9, "ssrm.jar not found"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ccb
    .catch Ljava/lang/RuntimeException; {:try_start_cc4 .. :try_end_ccb} :catch_ccd

    goto/16 :goto_3b4

    :catch_ccd
    move-exception v111

    move-object/from16 v19, v122

    move-object/from16 v15, v69

    move-object/from16 v199, v200

    move-object/from16 v126, v127

    move-object/from16 v123, v124

    goto :goto_c6d

    :cond_cd9
    const/16 v22, 0x0

    goto/16 :goto_431

    :cond_cdd
    const/16 v23, 0x0

    goto/16 :goto_435

    :cond_ce1
    const/4 v7, 0x1

    move/from16 v0, v114

    if-ne v0, v7, :cond_cf8

    :try_start_ce6
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_481

    :catch_cef
    move-exception v111

    move-object/from16 v199, v200

    move-object/from16 v126, v127

    move-object/from16 v123, v124

    goto/16 :goto_c6d

    :cond_cf8
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "android.hardware.bluetooth"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d0d

    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_481

    :cond_d0d
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v79, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v79

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_d1b
    .catch Ljava/lang/RuntimeException; {:try_start_ce6 .. :try_end_d1b} :catch_cef

    :try_start_d1b
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v79

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Secure Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "bluetooth_secure_mode_manager"

    new-instance v9, Landroid/app/BluetoothSecureManagerService;

    invoke-direct {v9, v5}, Landroid/app/BluetoothSecureManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d33
    .catch Ljava/lang/RuntimeException; {:try_start_d1b .. :try_end_d33} :catch_13f4

    move-object/from16 v78, v79

    goto/16 :goto_481

    :catch_d37
    move-exception v111

    :goto_d38
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4bf

    :catch_d43
    move-exception v111

    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d0

    :catch_d4f
    move-exception v111

    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d3

    :catch_d5b
    move-exception v111

    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d6

    :catch_d67
    move-exception v111

    const-string v7, "making Containerservice preSystemReady ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4ee

    :catch_d73
    move-exception v111

    :goto_d74
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_518

    :catch_d7f
    move-exception v111

    const-string v7, "starting DirEncryption service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_52b

    :catch_d8b
    move-exception v111

    :goto_d8c
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_542

    :catch_d97
    move-exception v111

    :goto_d98
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_559

    :catch_da3
    move-exception v111

    :goto_da4
    const-string v7, "SystemServer"

    const-string v9, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v111

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_57e

    :catch_daf
    move-exception v111

    :goto_db0
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Harmony EAS service"

    move-object/from16 v0, v111

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_59c

    :catch_dbb
    move-exception v111

    :goto_dbc
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5b5

    :catch_dc7
    move-exception v111

    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5c6

    :catch_dd3
    move-exception v111

    const-string v7, "Failure starting ClipboardEx Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5d7

    :catch_ddf
    move-exception v111

    const-string v7, "Failure starting SmartclipMetadata Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5f9

    :catch_deb
    move-exception v111

    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_60b

    :catch_df7
    move-exception v111

    :goto_df8
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_622

    :catch_e03
    move-exception v111

    :goto_e04
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_63b

    :catch_e0f
    move-exception v111

    move-object/from16 v25, v148

    :goto_e12
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_656

    :catch_e1d
    move-exception v111

    :goto_e1e
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_66d

    :catch_e29
    move-exception v111

    :goto_e2a
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_684

    :catch_e35
    move-exception v111

    :goto_e36
    const-string v7, "starting MSAP Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_69b

    :catch_e41
    move-exception v111

    :goto_e42
    const-string v7, "starting Wi-Fi Display Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6b2

    :catch_e4d
    move-exception v111

    :goto_e4e
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6e3

    :catch_e59
    move-exception v111

    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6f5

    :catch_e65
    move-exception v111

    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_706

    :catch_e71
    move-exception v111

    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_720

    :catch_e7d
    move-exception v111

    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_725

    :catch_e89
    move-exception v111

    :goto_e8a
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_745

    :catch_e95
    move-exception v111

    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_756

    :catch_ea1
    move-exception v111

    :goto_ea2
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_76d

    :catch_ead
    move-exception v111

    :goto_eae
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_784

    :catch_eb9
    move-exception v111

    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_795

    :cond_ec5
    :try_start_ec5
    const-string v7, "SystemServer"

    const-string v9, "Spell Manager Service disabled"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ecc
    .catch Ljava/lang/Throwable; {:try_start_ec5 .. :try_end_ecc} :catch_ece

    goto/16 :goto_7b0

    :catch_ece
    move-exception v111

    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "starting Spell Service failed: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v111

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7b0

    :catch_eeb
    move-exception v111

    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7c8

    :catch_ef7
    move-exception v111

    :goto_ef8
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7ee

    :catch_f03
    move-exception v111

    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_80d

    :cond_f0f
    :try_start_f0f
    const-string v7, "SystemServer"

    const-string v9, "Intel Display Observer..classLoader is null"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f16
    .catch Ljava/lang/Throwable; {:try_start_f0f .. :try_end_f16} :catch_f18

    goto/16 :goto_850

    :catch_f18
    move-exception v111

    const-string v7, "starting Intel DisplayObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_86d

    :cond_f24
    :try_start_f24
    const-string v7, "SystemServer"

    const-string v9, "Intel Display Observer.. clazz is null"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f2b
    .catch Ljava/lang/Throwable; {:try_start_f24 .. :try_end_f2b} :catch_f18

    goto/16 :goto_86d

    :catch_f2d
    move-exception v111

    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_87d

    :catch_f39
    move-exception v111

    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_890

    :catch_f45
    move-exception v111

    :goto_f46
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8a7

    :catch_f51
    move-exception v111

    :goto_f52
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v111

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8be

    :catch_f5d
    move-exception v111

    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8ce

    :catch_f69
    move-exception v111

    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8e0

    :catch_f75
    move-exception v111

    const-string v7, "Failue staring KiesUsbObserver Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8fd

    :catch_f81
    move-exception v111

    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v111

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_90e

    :catch_f8d
    move-exception v111

    :goto_f8e
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_925

    :catch_f99
    move-exception v111

    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_935

    :catch_fa5
    move-exception v111

    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_946

    :catch_fb1
    move-exception v111

    const-string v7, "starting AtCmdFwd Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_95b

    :cond_fbd
    :try_start_fbd
    const-string v7, "SystemServer"

    const-string v9, "Spen USP Level 2"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "spengestureservice"

    new-instance v9, Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v0, v211

    invoke-direct {v9, v5, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_fd0
    .catch Ljava/lang/Throwable; {:try_start_fbd .. :try_end_fd0} :catch_fd2

    goto/16 :goto_96c

    :catch_fd2
    move-exception v111

    const-string v7, "starting SpenGestureManagerService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_96c

    :catch_fde
    move-exception v111

    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_97d

    :catch_fea
    move-exception v111

    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_98d

    :cond_ff6
    :try_start_ff6
    const-string v7, "SystemServer"

    const-string v9, "Tvout Service exist"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/Class;

    move-object/from16 v73, v0

    const/4 v7, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v73, v7

    move-object/from16 v0, v191

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v93

    const-string v9, "tvoutservice"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v7, v11

    move-object/from16 v0, v93

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v9, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1022
    .catch Ljava/lang/Throwable; {:try_start_ff6 .. :try_end_1022} :catch_1024

    goto/16 :goto_9cf

    :catch_1024
    move-exception v111

    const-string v7, "SystemServer"

    const-string v9, "Failure starting Tvout Service"

    move-object/from16 v0, v111

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9cf

    :catch_1030
    move-exception v111

    const-string v7, "SystemServer"

    const-string v9, "Failure starting IRDA Service"

    move-object/from16 v0, v111

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9f2

    :catch_103c
    move-exception v111

    const-string v7, "SystemServer"

    const-string v9, "Failure starting MiniModeAppManager Service"

    move-object/from16 v0, v111

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_ab7

    :catch_1048
    move-exception v111

    const-string v7, "SystemServer"

    const-string v9, "Failure starting BarBeam Service"

    move-object/from16 v0, v111

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_ad6

    :catch_1054
    move-exception v111

    const-string v7, "starting Ultrasonic Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_af1

    :catch_1060
    move-exception v111

    :goto_1061
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b08

    :catch_106c
    move-exception v111

    const-string v7, "SystemServer"

    const-string v9, "Failure starting Motion Recognition Service"

    move-object/from16 v0, v111

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b19

    :catch_1078
    move-exception v111

    const-string v7, "SystemServer"

    const-string v9, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b2a

    :catch_1082
    move-exception v111

    const-string v7, "Fail to start SmartFaceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b77

    :catch_108e
    move-exception v111

    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b83

    :catch_109a
    move-exception v111

    :goto_109b
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ba9

    :cond_10a6
    add-int/lit8 v118, v118, 0x1

    goto/16 :goto_be8

    :catch_10aa
    move-exception v111

    :try_start_10ab
    const-string v7, "SystemServer"

    const-string v9, "Can\'t find transcloud package"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v170, 0x0

    :cond_10b4
    const-string v7, "eng"

    sget-object v9, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10c0

    if-eqz v170, :cond_11f8

    :cond_10c0
    const-string v7, "com.samsung.android.service.transcloud"

    const/4 v9, 0x3

    invoke-virtual {v5, v7, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const-string v9, "com.samsung.android.service.transcloud.system.TranscloudManagerService"

    invoke-virtual {v7, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v136

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    const-class v11, Landroid/os/Handler;

    aput-object v11, v7, v9

    move-object/from16 v0, v136

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    const/4 v11, 0x1

    aput-object v21, v9, v11

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object/from16 v187, v0

    const-string v7, "transcloud"

    move-object/from16 v0, v187

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10fd
    .catch Ljava/lang/Throwable; {:try_start_10ab .. :try_end_10fd} :catch_1201

    :goto_10fd
    const-string v7, "SystemServer"

    const-string v9, "SEC_PRODUCT_FEATURE_ABSOLUTE_ENABLE=FALSE - true"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1104
    const-string v7, "SystemServer"

    const-string v9, "Absolute Persistence Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "ABTPersistenceService"

    new-instance v9, Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {v9, v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1115
    .catch Ljava/lang/Throwable; {:try_start_1104 .. :try_end_1115} :catch_1220

    :goto_1115
    invoke-virtual/range {v211 .. v211}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v47

    if-eqz v47, :cond_122c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    :goto_112c
    :try_start_112c
    invoke-virtual/range {v199 .. v199}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_112f
    .catch Ljava/lang/Throwable; {:try_start_112c .. :try_end_112f} :catch_1235

    :goto_112f
    :try_start_112f
    invoke-virtual/range {v132 .. v132}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_1132
    .catch Ljava/lang/Throwable; {:try_start_112f .. :try_end_1132} :catch_1241

    :goto_1132
    if-eqz v104, :cond_1137

    :try_start_1134
    invoke-virtual/range {v104 .. v104}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_1137
    .catch Ljava/lang/Throwable; {:try_start_1134 .. :try_end_1137} :catch_124d

    :cond_1137
    :goto_1137
    if-eqz v112, :cond_1143

    invoke-virtual/range {v112 .. v112}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    const-string v7, "SystemServer"

    const-string v9, "enterprisePolicy systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1143
    if-eqz v152, :cond_1148

    :try_start_1145
    invoke-virtual/range {v152 .. v152}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_1148
    .catch Ljava/lang/Throwable; {:try_start_1145 .. :try_end_1148} :catch_1259

    :cond_1148
    :goto_1148
    :try_start_1148
    invoke-virtual/range {v211 .. v211}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_114b
    .catch Ljava/lang/Throwable; {:try_start_1148 .. :try_end_114b} :catch_1265

    :goto_114b
    if-eqz v47, :cond_1154

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    :cond_1154
    invoke-virtual/range {v211 .. v211}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v90

    new-instance v138, Landroid/util/DisplayMetrics;

    invoke-direct/range {v138 .. v138}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v201

    check-cast v201, Landroid/view/WindowManager;

    invoke-interface/range {v201 .. v201}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v138

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v90

    move-object/from16 v1, v138

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :try_start_1179
    move-object/from16 v0, v192

    move-object/from16 v1, v109

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_1180
    .catch Ljava/lang/Throwable; {:try_start_1179 .. :try_end_1180} :catch_1271

    :goto_1180
    :try_start_1180
    invoke-virtual {v6}, Lcom/android/server/LightsService;->systemReady()V
    :try_end_1183
    .catch Ljava/lang/Throwable; {:try_start_1180 .. :try_end_1183} :catch_127d

    :goto_1183
    :try_start_1183
    invoke-interface/range {v157 .. v157}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_1186
    .catch Ljava/lang/Throwable; {:try_start_1183 .. :try_end_1186} :catch_1289

    :goto_1186
    :try_start_1186
    move/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_118d
    .catch Ljava/lang/Throwable; {:try_start_1186 .. :try_end_118d} :catch_1295

    :goto_118d
    move-object/from16 v34, v5

    move-object/from16 v35, v142

    move-object/from16 v36, v8

    move-object/from16 v37, v30

    move-object/from16 v38, v29

    move-object/from16 v39, v25

    move-object/from16 v40, v91

    move-object/from16 v41, v107

    move-object/from16 v42, v197

    move-object/from16 v43, v192

    move-object/from16 v44, v195

    move-object/from16 v46, v71

    move-object/from16 v48, v202

    move-object/from16 v49, v120

    move-object/from16 v45, v163

    move-object/from16 v51, v130

    move-object/from16 v52, v98

    move-object/from16 v53, v150

    move-object/from16 v54, v88

    move-object/from16 v55, v188

    move-object/from16 v50, v175

    move-object/from16 v56, v109

    move-object/from16 v57, v187

    move-object/from16 v58, v19

    move-object/from16 v60, v177

    move-object/from16 v61, v146

    move-object/from16 v62, v179

    move-object/from16 v59, v95

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$3;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v62}, Lcom/android/server/ServerThread$3;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;Lcom/android/server/input/InputManagerService;Lcom/sec/knox/container/EnterpriseContainerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/MSimTelephonyRegistry;Lcom/android/server/TelephonyRegistry;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_11e2

    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11e2
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    const-string v7, "SystemServer"

    const-string v9, "!@End SystemServer Thread"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Looper;->loop()V

    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11f8
    :try_start_11f8
    const-string v7, "SystemServer"

    const-string v9, "Failure starting TranscloudService - signature miss match"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11ff
    .catch Ljava/lang/Throwable; {:try_start_11f8 .. :try_end_11ff} :catch_1201

    goto/16 :goto_10fd

    :catch_1201
    move-exception v111

    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure starting TranscloudService "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v111 .. v111}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10fd

    :catch_1220
    move-exception v111

    const-string v7, "SystemServer"

    const-string v9, "Failure starting Absolute Persistence Service"

    move-object/from16 v0, v111

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1115

    :cond_122c
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_112c

    :catch_1235
    move-exception v111

    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_112f

    :catch_1241
    move-exception v111

    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1132

    :catch_124d
    move-exception v111

    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1137

    :catch_1259
    move-exception v111

    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1148

    :catch_1265
    move-exception v111

    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_114b

    :catch_1271
    move-exception v111

    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1180

    :catch_127d
    move-exception v111

    const-string v7, "making Lights Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1183

    :catch_1289
    move-exception v111

    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1186

    :catch_1295
    move-exception v111

    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_118d

    :catch_12a1
    move-exception v7

    goto/16 :goto_26e

    :catch_12a4
    move-exception v111

    move-object/from16 v109, v110

    goto/16 :goto_109b

    :catch_12a9
    move-exception v111

    move-object/from16 v88, v89

    goto/16 :goto_1061

    :catch_12ae
    move-exception v111

    move-object/from16 v71, v72

    goto/16 :goto_f8e

    :catch_12b3
    move-exception v111

    move-object/from16 v165, v166

    goto/16 :goto_f52

    :catch_12b8
    move-exception v111

    move-object/from16 v197, v198

    goto/16 :goto_f46

    :catch_12bd
    move-exception v111

    move-object/from16 v202, v203

    goto/16 :goto_ef8

    :catch_12c2
    move-exception v111

    move-object/from16 v98, v99

    goto/16 :goto_eae

    :catch_12c7
    move-exception v111

    move-object/from16 v130, v131

    goto/16 :goto_ea2

    :catch_12cc
    move-exception v111

    move-object/from16 v152, v153

    goto/16 :goto_e8a

    :catch_12d1
    move-exception v111

    move-object/from16 v91, v92

    goto/16 :goto_e4e

    :catch_12d6
    move-exception v111

    move-object/from16 v204, v205

    goto/16 :goto_e42

    :catch_12db
    move-exception v111

    move-object/from16 v144, v145

    goto/16 :goto_e36

    :catch_12e0
    move-exception v111

    move-object/from16 v206, v207

    goto/16 :goto_e2a

    :catch_12e5
    move-exception v111

    move-object/from16 v209, v210

    goto/16 :goto_e1e

    :catch_12ea
    move-exception v111

    goto/16 :goto_e12

    :catch_12ed
    move-exception v111

    move-object/from16 v29, v149

    goto/16 :goto_e04

    :catch_12f2
    move-exception v111

    move-object/from16 v188, v189

    goto/16 :goto_df8

    :catch_12f7
    move-exception v111

    move-object/from16 v175, v176

    goto/16 :goto_dbc

    :catch_12fc
    move-exception v111

    move-object/from16 v134, v135

    goto/16 :goto_db0

    :catch_1301
    move-exception v111

    move-object/from16 v112, v113

    goto/16 :goto_da4

    :catch_1306
    move-exception v111

    move-object/from16 v104, v105

    goto/16 :goto_d98

    :catch_130b
    move-exception v111

    move-object/from16 v132, v133

    goto/16 :goto_d8c

    :catch_1310
    move-exception v111

    move-object/from16 v142, v143

    goto/16 :goto_d74

    :catch_1315
    move-exception v7

    goto/16 :goto_4e9

    :catch_1318
    move-exception v111

    move-object/from16 v120, v121

    goto/16 :goto_d38

    :catch_131d
    move-exception v111

    move-object/from16 v19, v122

    move-object/from16 v15, v69

    move-object/from16 v8, v77

    move-object/from16 v10, v106

    move-object/from16 v4, v158

    move-object/from16 v6, v129

    goto/16 :goto_c6d

    :catch_132c
    move-exception v111

    move-object/from16 v19, v122

    move-object/from16 v15, v69

    move-object/from16 v8, v77

    move-object/from16 v10, v106

    move-object/from16 v4, v158

    move-object/from16 v6, v129

    move-object/from16 v123, v124

    goto/16 :goto_c6d

    :catch_133d
    move-exception v111

    move-object/from16 v19, v122

    move-object/from16 v15, v69

    move-object/from16 v8, v77

    move-object/from16 v10, v106

    move-object/from16 v6, v129

    move-object/from16 v123, v124

    goto/16 :goto_c6d

    :catch_134c
    move-exception v111

    move-object/from16 v177, v178

    move-object/from16 v19, v122

    move-object/from16 v15, v69

    move-object/from16 v8, v77

    move-object/from16 v6, v129

    move-object/from16 v123, v124

    goto/16 :goto_c6d

    :catch_135b
    move-exception v111

    move-object/from16 v146, v147

    move-object/from16 v177, v178

    move-object/from16 v19, v122

    move-object/from16 v15, v69

    move-object/from16 v8, v77

    move-object/from16 v6, v129

    move-object/from16 v123, v124

    goto/16 :goto_c6d

    :catch_136c
    move-exception v111

    move-object/from16 v146, v147

    move-object/from16 v19, v122

    move-object/from16 v15, v69

    move-object/from16 v8, v77

    move-object/from16 v6, v129

    move-object/from16 v123, v124

    goto/16 :goto_c6d

    :catch_137b
    move-exception v111

    move-object/from16 v95, v96

    move-object/from16 v19, v122

    move-object/from16 v15, v69

    move-object/from16 v8, v77

    move-object/from16 v6, v129

    move-object/from16 v123, v124

    goto/16 :goto_c6d

    :catch_138a
    move-exception v111

    move-object/from16 v185, v186

    move-object/from16 v19, v122

    move-object/from16 v15, v69

    move-object/from16 v8, v77

    move-object/from16 v6, v129

    move-object/from16 v123, v124

    goto/16 :goto_c6d

    :catch_1399
    move-exception v111

    move-object/from16 v19, v122

    move-object/from16 v15, v69

    move-object/from16 v8, v77

    move-object/from16 v6, v129

    move-object/from16 v67, v68

    move-object/from16 v123, v124

    goto/16 :goto_c6d

    :catch_13a8
    move-exception v111

    move-object/from16 v101, v102

    move-object/from16 v19, v122

    move-object/from16 v15, v69

    move-object/from16 v8, v77

    move-object/from16 v6, v129

    move-object/from16 v123, v124

    goto/16 :goto_c6d

    :catch_13b7
    move-exception v111

    move-object/from16 v19, v122

    move-object/from16 v15, v69

    move-object/from16 v8, v77

    move-object/from16 v123, v124

    goto/16 :goto_c6d

    :catch_13c2
    move-exception v111

    move-object/from16 v19, v122

    move-object/from16 v15, v69

    move-object/from16 v8, v77

    move-object/from16 v126, v127

    move-object/from16 v123, v124

    goto/16 :goto_c6d

    :catch_13cf
    move-exception v111

    move-object/from16 v19, v122

    move-object/from16 v180, v181

    move-object/from16 v15, v69

    move-object/from16 v8, v77

    move-object/from16 v126, v127

    move-object/from16 v123, v124

    goto/16 :goto_c6d

    :catch_13de
    move-exception v111

    move-object/from16 v19, v122

    move-object/from16 v15, v69

    move-object/from16 v126, v127

    move-object/from16 v123, v124

    goto/16 :goto_c6d

    :catch_13e9
    move-exception v111

    move-object/from16 v19, v122

    move-object/from16 v199, v200

    move-object/from16 v126, v127

    move-object/from16 v123, v124

    goto/16 :goto_c6d

    :catch_13f4
    move-exception v111

    move-object/from16 v78, v79

    move-object/from16 v199, v200

    move-object/from16 v126, v127

    move-object/from16 v123, v124

    goto/16 :goto_c6d

    :catch_13ff
    move-exception v111

    move-object/from16 v67, v68

    goto/16 :goto_c9b

    :catch_1404
    move-exception v111

    move-object/from16 v185, v186

    goto/16 :goto_c80

    :catch_1409
    move-exception v111

    move-object/from16 v95, v96

    goto/16 :goto_c44

    :cond_140e
    move-object/from16 v25, v148

    goto/16 :goto_10fd

    :cond_1412
    move-object/from16 v146, v147

    goto/16 :goto_1b4

    :cond_1416
    move-object/from16 v147, v146

    move-object/from16 v177, v178

    goto/16 :goto_196
.end method
