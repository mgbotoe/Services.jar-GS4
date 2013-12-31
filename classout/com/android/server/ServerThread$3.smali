.class Lcom/android/server/ServerThread$3;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ServerThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServerThread;

.field final synthetic val$appWidgetF:Lcom/android/server/AppWidgetService;

.field final synthetic val$batteryF:Lcom/android/server/BatteryService;

.field final synthetic val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

.field final synthetic val$connectivityF:Lcom/android/server/ConnectivityService;

.field final synthetic val$containerServiceF:Lcom/sec/knox/container/EnterpriseContainerService;

.field final synthetic val$contextF:Landroid/content/Context;

.field final synthetic val$countryDetectorF:Lcom/android/server/CountryDetectorService;

.field final synthetic val$dockF:Lcom/android/server/DockObserver;

.field final synthetic val$dreamyF:Lcom/android/server/dreams/DreamManagerService;

.field final synthetic val$headless:Z

.field final synthetic val$immF:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$inputManagerF:Lcom/android/server/input/InputManagerService;

.field final synthetic val$locationF:Lcom/android/server/LocationManagerService;

.field final synthetic val$mountServiceF:Lcom/android/server/MountService;

.field final synthetic val$msimTelephonyRegistryF:Lcom/android/server/MSimTelephonyRegistry;

.field final synthetic val$networkManagementF:Lcom/android/server/NetworkManagementService;

.field final synthetic val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

.field final synthetic val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

.field final synthetic val$recognitionF:Lcom/android/server/RecognitionManagerService;

.field final synthetic val$safeMode:Z

.field final synthetic val$statusBarF:Lcom/android/server/StatusBarManagerService;

.field final synthetic val$telephonyRegistry2F:Lcom/android/server/TelephonyRegistry;

.field final synthetic val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

.field final synthetic val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

.field final synthetic val$transcloudF:Landroid/os/IBinder;

.field final synthetic val$twilightF:Lcom/android/server/TwilightService;

.field final synthetic val$uiModeF:Lcom/android/server/UiModeManagerService;

.field final synthetic val$usbF:Lcom/android/server/usb/UsbService;

.field final synthetic val$wallpaperF:Lcom/android/server/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;Lcom/android/server/input/InputManagerService;Lcom/sec/knox/container/EnterpriseContainerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/MSimTelephonyRegistry;Lcom/android/server/TelephonyRegistry;)V
    .registers 33

    iput-object p1, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    iput-boolean p2, p0, Lcom/android/server/ServerThread$3;->val$headless:Z

    iput-object p3, p0, Lcom/android/server/ServerThread$3;->val$contextF:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/ServerThread$3;->val$mountServiceF:Lcom/android/server/MountService;

    iput-object p5, p0, Lcom/android/server/ServerThread$3;->val$batteryF:Lcom/android/server/BatteryService;

    iput-object p6, p0, Lcom/android/server/ServerThread$3;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    iput-object p7, p0, Lcom/android/server/ServerThread$3;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    iput-object p8, p0, Lcom/android/server/ServerThread$3;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-object p9, p0, Lcom/android/server/ServerThread$3;->val$connectivityF:Lcom/android/server/ConnectivityService;

    iput-object p10, p0, Lcom/android/server/ServerThread$3;->val$dockF:Lcom/android/server/DockObserver;

    iput-object p11, p0, Lcom/android/server/ServerThread$3;->val$usbF:Lcom/android/server/usb/UsbService;

    iput-object p12, p0, Lcom/android/server/ServerThread$3;->val$twilightF:Lcom/android/server/TwilightService;

    iput-object p13, p0, Lcom/android/server/ServerThread$3;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    iput-object p14, p0, Lcom/android/server/ServerThread$3;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/server/ServerThread$3;->val$safeMode:Z

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$immF:Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$statusBarF:Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$locationF:Lcom/android/server/LocationManagerService;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$dreamyF:Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$transcloudF:Landroid/os/IBinder;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$containerServiceF:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$msimTelephonyRegistryF:Lcom/android/server/MSimTelephonyRegistry;

    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/android/server/ServerThread$3;->val$telephonyRegistry2F:Lcom/android/server/TelephonyRegistry;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const-string v5, "SystemServer"

    const-string v6, "Making services ready"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_e} :catch_177

    :goto_e
    iget-boolean v5, p0, Lcom/android/server/ServerThread$3;->val$headless:Z

    if-nez v5, :cond_17

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$contextF:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/ServerThread;->startSystemUi(Landroid/content/Context;)V

    :cond_17
    iget-boolean v5, p0, Lcom/android/server/ServerThread$3;->val$headless:Z

    if-nez v5, :cond_20

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$contextF:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/ServerThread;->startFingerprintService(Landroid/content/Context;)V

    :cond_20
    :try_start_20
    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$mountServiceF:Lcom/android/server/MountService;

    if-eqz v5, :cond_29

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$mountServiceF:Lcom/android/server/MountService;

    invoke-virtual {v5}, Lcom/android/server/MountService;->systemReady()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_29} :catch_181

    :cond_29
    :goto_29
    :try_start_29
    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$batteryF:Lcom/android/server/BatteryService;

    if-eqz v5, :cond_32

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$batteryF:Lcom/android/server/BatteryService;

    invoke-virtual {v5}, Lcom/android/server/BatteryService;->systemReady()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_32} :catch_18b

    :cond_32
    :goto_32
    :try_start_32
    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    if-eqz v5, :cond_3b

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    invoke-virtual {v5}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_3b} :catch_195

    :cond_3b
    :goto_3b
    :try_start_3b
    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    if-eqz v5, :cond_44

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v5}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_44} :catch_19f

    :cond_44
    :goto_44
    :try_start_44
    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    if-eqz v5, :cond_4d

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_4d} :catch_1a9

    :cond_4d
    :goto_4d
    :try_start_4d
    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$connectivityF:Lcom/android/server/ConnectivityService;

    if-eqz v5, :cond_56

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$connectivityF:Lcom/android/server/ConnectivityService;

    invoke-virtual {v5}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_56} :catch_1b3

    :cond_56
    :goto_56
    :try_start_56
    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$dockF:Lcom/android/server/DockObserver;

    if-eqz v5, :cond_5f

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$dockF:Lcom/android/server/DockObserver;

    invoke-virtual {v5}, Lcom/android/server/DockObserver;->systemReady()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_5f} :catch_1bd

    :cond_5f
    :goto_5f
    :try_start_5f
    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$usbF:Lcom/android/server/usb/UsbService;

    if-eqz v5, :cond_68

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$usbF:Lcom/android/server/usb/UsbService;

    invoke-virtual {v5}, Lcom/android/server/usb/UsbService;->systemReady()V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_68} :catch_1c7

    :cond_68
    :goto_68
    :try_start_68
    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$twilightF:Lcom/android/server/TwilightService;

    if-eqz v5, :cond_71

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$twilightF:Lcom/android/server/TwilightService;

    invoke-virtual {v5}, Lcom/android/server/TwilightService;->systemReady()V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_71} :catch_1d1

    :cond_71
    :goto_71
    :try_start_71
    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    if-eqz v5, :cond_7a

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v5}, Lcom/android/server/UiModeManagerService;->systemReady()V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_7a} :catch_1db

    :cond_7a
    :goto_7a
    :try_start_7a
    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    if-eqz v5, :cond_83

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    invoke-virtual {v5}, Lcom/android/server/RecognitionManagerService;->systemReady()V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_83} :catch_1e5

    :cond_83
    :goto_83
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/Watchdog;->start()V

    :try_start_8a
    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    if-eqz v5, :cond_95

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    iget-boolean v6, p0, Lcom/android/server/ServerThread$3;->val$safeMode:Z

    invoke-virtual {v5, v6}, Lcom/android/server/AppWidgetService;->systemReady(Z)V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_95} :catch_1ef

    :cond_95
    :goto_95
    :try_start_95
    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    if-eqz v5, :cond_9e

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    invoke-virtual {v5}, Lcom/android/server/WallpaperManagerService;->systemReady()V
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_95 .. :try_end_9e} :catch_1f9

    :cond_9e
    :goto_9e
    :try_start_9e
    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$immF:Lcom/android/server/InputMethodManagerService;

    if-eqz v5, :cond_a9

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$immF:Lcom/android/server/InputMethodManagerService;

    iget-object v6, p0, Lcom/android/server/ServerThread$3;->val$statusBarF:Lcom/android/server/StatusBarManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/InputMethodManagerService;->systemReady(Lcom/android/server/StatusBarManagerService;)V
    :try_end_a9
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_a9} :catch_203

    :cond_a9
    :goto_a9
    :try_start_a9
    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$locationF:Lcom/android/server/LocationManagerService;

    if-eqz v5, :cond_b2

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$locationF:Lcom/android/server/LocationManagerService;

    invoke-virtual {v5}, Lcom/android/server/LocationManagerService;->systemReady()V
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_a9 .. :try_end_b2} :catch_20d

    :cond_b2
    :goto_b2
    :try_start_b2
    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    if-eqz v5, :cond_bb

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    invoke-virtual {v5}, Lcom/android/server/CountryDetectorService;->systemReady()V
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_b2 .. :try_end_bb} :catch_217

    :cond_bb
    :goto_bb
    :try_start_bb
    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    if-eqz v5, :cond_c4

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {v5}, Lcom/android/server/NetworkTimeUpdateService;->systemReady()V
    :try_end_c4
    .catch Ljava/lang/Throwable; {:try_start_bb .. :try_end_c4} :catch_221

    :cond_c4
    :goto_c4
    :try_start_c4
    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    if-eqz v5, :cond_cd

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    invoke-virtual {v5}, Lcom/android/server/CommonTimeManagementService;->systemReady()V
    :try_end_cd
    .catch Ljava/lang/Throwable; {:try_start_c4 .. :try_end_cd} :catch_22b

    :cond_cd
    :goto_cd
    :try_start_cd
    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    if-eqz v5, :cond_d6

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    invoke-virtual {v5}, Lcom/android/server/TextServicesManagerService;->systemReady()V
    :try_end_d6
    .catch Ljava/lang/Throwable; {:try_start_cd .. :try_end_d6} :catch_235

    :cond_d6
    :goto_d6
    :try_start_d6
    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$dreamyF:Lcom/android/server/dreams/DreamManagerService;

    if-eqz v5, :cond_df

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$dreamyF:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v5}, Lcom/android/server/dreams/DreamManagerService;->systemReady()V
    :try_end_df
    .catch Ljava/lang/Throwable; {:try_start_d6 .. :try_end_df} :catch_23f

    :cond_df
    :goto_df
    :try_start_df
    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$transcloudF:Landroid/os/IBinder;

    if-eqz v5, :cond_249

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$contextF:Landroid/content/Context;

    const-string v6, "com.samsung.android.service.transcloud"

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const-string v6, "com.samsung.android.service.transcloud.system.TranscloudManagerService"

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const-string v6, "com.samsung.android.service.transcloud.ITranscloudManager$Stub"

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v5, "SystemServer"

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SystemServer"

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "asInterface"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/ServerThread$3;->val$transcloudF:Landroid/os/IBinder;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "SystemServer"

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "systemReady"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_149
    .catch Ljava/lang/Throwable; {:try_start_df .. :try_end_149} :catch_252

    :goto_149
    :try_start_149
    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    if-eqz v5, :cond_152

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v5}, Lcom/android/server/input/InputManagerService;->systemReady()V
    :try_end_152
    .catch Ljava/lang/Throwable; {:try_start_149 .. :try_end_152} :catch_271

    :cond_152
    :goto_152
    :try_start_152
    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$containerServiceF:Lcom/sec/knox/container/EnterpriseContainerService;

    if-eqz v5, :cond_15b

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$containerServiceF:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-virtual {v5}, Lcom/sec/knox/container/EnterpriseContainerService;->systemReady()V
    :try_end_15b
    .catch Ljava/lang/Throwable; {:try_start_152 .. :try_end_15b} :catch_27b

    :cond_15b
    :goto_15b
    :try_start_15b
    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    if-eqz v5, :cond_164

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    invoke-virtual {v5}, Lcom/android/server/TelephonyRegistry;->systemReady()V
    :try_end_164
    .catch Ljava/lang/Throwable; {:try_start_15b .. :try_end_164} :catch_285

    :cond_164
    :goto_164
    :try_start_164
    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$msimTelephonyRegistryF:Lcom/android/server/MSimTelephonyRegistry;

    if-eqz v5, :cond_16d

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$msimTelephonyRegistryF:Lcom/android/server/MSimTelephonyRegistry;

    invoke-virtual {v5}, Lcom/android/server/MSimTelephonyRegistry;->systemReady()V
    :try_end_16d
    .catch Ljava/lang/Throwable; {:try_start_164 .. :try_end_16d} :catch_28f

    :cond_16d
    :goto_16d
    :try_start_16d
    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$telephonyRegistry2F:Lcom/android/server/TelephonyRegistry;

    if-eqz v5, :cond_176

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->val$telephonyRegistry2F:Lcom/android/server/TelephonyRegistry;

    invoke-virtual {v5}, Lcom/android/server/TelephonyRegistry;->systemReady()V
    :try_end_176
    .catch Ljava/lang/Throwable; {:try_start_16d .. :try_end_176} :catch_299

    :cond_176
    :goto_176
    return-void

    :catch_177
    move-exception v1

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "observing native crashes"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    :catch_181
    move-exception v1

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making Mount Service ready"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    :catch_18b
    move-exception v1

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making Battery Service ready"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    :catch_195
    move-exception v1

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making Network Managment Service ready"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    :catch_19f
    move-exception v1

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making Network Stats Service ready"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    :catch_1a9
    move-exception v1

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making Network Policy Service ready"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d

    :catch_1b3
    move-exception v1

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making Connectivity Service ready"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_56

    :catch_1bd
    move-exception v1

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making Dock Service ready"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5f

    :catch_1c7
    move-exception v1

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making USB Service ready"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_68

    :catch_1d1
    move-exception v1

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "makin Twilight Service ready"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_71

    :catch_1db
    move-exception v1

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making UI Mode Service ready"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7a

    :catch_1e5
    move-exception v1

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making Recognition Service ready"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_83

    :catch_1ef
    move-exception v1

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making App Widget Service ready"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_95

    :catch_1f9
    move-exception v1

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making Wallpaper Service ready"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9e

    :catch_203
    move-exception v1

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making Input Method Service ready"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a9

    :catch_20d
    move-exception v1

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making Location Service ready"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b2

    :catch_217
    move-exception v1

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making Country Detector Service ready"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_bb

    :catch_221
    move-exception v1

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making Network Time Service ready"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c4

    :catch_22b
    move-exception v1

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making Common time management service ready"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_cd

    :catch_235
    move-exception v1

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making Text Services Manager Service ready"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d6

    :catch_23f
    move-exception v1

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making DreamManagerService ready"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_df

    :cond_249
    :try_start_249
    const-string v5, "SystemServer"

    const-string v6, "Failure making transcloud service ready - transcloudF is null"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_250
    .catch Ljava/lang/Throwable; {:try_start_249 .. :try_end_250} :catch_252

    goto/16 :goto_149

    :catch_252
    move-exception v1

    const-string v5, "SystemServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure making transcloud service ready "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_149

    :catch_271
    move-exception v1

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making InputManagerService ready"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_152

    :catch_27b
    move-exception v1

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making Containerservice ready"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15b

    :catch_285
    move-exception v1

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making TelephonyRegistry ready"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_164

    :catch_28f
    move-exception v1

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making TelephonyRegistry ready"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16d

    :catch_299
    move-exception v1

    iget-object v5, p0, Lcom/android/server/ServerThread$3;->this$0:Lcom/android/server/ServerThread;

    const-string v6, "making TelephonyRegistry2 ready"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_176
.end method
