.class Lcom/android/server/wifi/WifiService$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wifi/WifiService$4;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    iget-object v6, p0, Lcom/android/server/wifi/WifiService$4;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_defaultap_profile"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v6

    if-eqz v6, :cond_2e

    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "String AP List"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/misc/wifi/default_ap.conf"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/server/wifi/WifiService;->access$1002(Ljava/io/File;)Ljava/io/File;

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1000()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_69

    :try_start_42
    new-instance v4, Ljava/io/File;

    const-string v6, "/data/misc/wifi"

    const-string v7, "default_ap.conf"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_4b} :catch_6f
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4b} :catch_99

    :try_start_4b
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "chmod 664 /data/misc/wifi/default_ap.conf"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_57} :catch_6a
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_57} :catch_6f

    :goto_57
    const/4 v2, 0x0

    :try_start_58
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v3, v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_a2
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5e} :catch_78

    :try_start_5e
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_a7
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_65} :catch_aa

    :try_start_65
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    move-object v2, v3

    :cond_69
    :goto_69
    return-void

    :catch_6a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6e
    .catch Ljava/io/FileNotFoundException; {:try_start_65 .. :try_end_6e} :catch_6f
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6e} :catch_99

    goto :goto_57

    :catch_6f
    move-exception v0

    const-string v6, "WifiService"

    const-string v7, "WiFi Profile File Create Not Found "

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    :catch_78
    move-exception v1

    :goto_79
    :try_start_79
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "profilefilepath create file failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catchall {:try_start_79 .. :try_end_95} :catchall_a2

    :try_start_95
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_98
    .catch Ljava/io/FileNotFoundException; {:try_start_95 .. :try_end_98} :catch_6f
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_99

    goto :goto_69

    :catch_99
    move-exception v0

    const-string v6, "WifiService"

    const-string v7, "WiFi Profile IOException"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    :catchall_a2
    move-exception v6

    :goto_a3
    :try_start_a3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v6
    :try_end_a7
    .catch Ljava/io/FileNotFoundException; {:try_start_a3 .. :try_end_a7} :catch_6f
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a7} :catch_99

    :catchall_a7
    move-exception v6

    move-object v2, v3

    goto :goto_a3

    :catch_aa
    move-exception v1

    move-object v2, v3

    goto :goto_79
.end method
