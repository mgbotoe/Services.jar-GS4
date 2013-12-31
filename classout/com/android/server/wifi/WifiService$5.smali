.class Lcom/android/server/wifi/WifiService$5;
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

    iput-object p1, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    iget-object v6, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_generalinfo_nwinfo"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v6

    if-eqz v6, :cond_2f

    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "String Matched General Info List"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/misc/wifi/generalinfo_nw.conf"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/server/wifi/WifiService;->access$1002(Ljava/io/File;)Ljava/io/File;

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1000()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_6b

    :try_start_43
    new-instance v4, Ljava/io/File;

    const-string v6, "/data/misc/wifi"

    const-string v7, "generalinfo_nw.conf"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_71

    :try_start_4c
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "chmod 664 /data/misc/wifi/generalinfo_nw.conf"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_58
    .catchall {:try_start_4c .. :try_end_58} :catchall_71
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_58} :catch_6c

    :goto_58
    :try_start_58
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v3, v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_71
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5e} :catch_78

    :try_start_5e
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_a8
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_65} :catch_ab

    move-object v2, v3

    :goto_66
    if-eqz v2, :cond_6b

    :try_start_68
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_9f

    :cond_6b
    :goto_6b
    return-void

    :catch_6c
    move-exception v0

    :try_start_6d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_71

    goto :goto_58

    :catchall_71
    move-exception v6

    :goto_72
    if-eqz v2, :cond_77

    :try_start_74
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_96

    :cond_77
    :goto_77
    throw v6

    :catch_78
    move-exception v1

    :goto_79
    :try_start_79
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "generalinfofilepath create file failed "

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
    .catchall {:try_start_79 .. :try_end_95} :catchall_71

    goto :goto_66

    :catch_96
    move-exception v0

    const-string v7, "WifiService"

    const-string v8, "Failed to generalFW.close."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    :catch_9f
    move-exception v0

    const-string v6, "WifiService"

    const-string v7, "Failed to generalFW.close."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    :catchall_a8
    move-exception v6

    move-object v2, v3

    goto :goto_72

    :catch_ab
    move-exception v1

    move-object v2, v3

    goto :goto_79
.end method
