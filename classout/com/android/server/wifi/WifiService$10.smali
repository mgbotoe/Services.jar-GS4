.class Lcom/android/server/wifi/WifiService$10;
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

    iput-object p1, p0, Lcom/android/server/wifi/WifiService$10;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 21

    const-string v1, "home_ap_mac"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiService$10;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v15}, Lcom/android/server/wifi/WifiService;->getWifiApEnabledState()I

    move-result v14

    const/16 v15, 0xc

    if-eq v14, v15, :cond_12

    const/16 v15, 0xd

    if-ne v14, v15, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiService$10;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v15}, Lcom/android/server/wifi/WifiService;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v15

    sget-object v16, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual/range {v15 .. v16}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiService$10;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "home_ap_mac"

    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_83

    const-string v15, " "

    invoke-virtual {v7, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x2

    const/4 v12, 0x0

    const/4 v8, 0x0

    :goto_4d
    array-length v15, v6

    if-ge v8, v15, :cond_62

    aget-object v15, v6, v8

    invoke-virtual {v15, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_5f

    const-string v15, ""

    aput-object v15, v6, v8

    :goto_5c
    add-int/lit8 v8, v8, 0x1

    goto :goto_4d

    :cond_5f
    add-int/lit8 v12, v12, 0x1

    goto :goto_5c

    :cond_62
    const/4 v15, 0x2

    if-ne v12, v15, :cond_6a

    const/4 v15, 0x0

    const-string v16, ""

    aput-object v16, v6, v15

    :cond_6a
    move-object v3, v6

    array-length v10, v3

    const/4 v9, 0x0

    :goto_6d
    if-ge v9, v10, :cond_83

    aget-object v11, v3, v9

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_80

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const/16 v16, 0x20

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_80
    add-int/lit8 v9, v9, 0x1

    goto :goto_6d

    :cond_83
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiService$10;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "home_ap_mac"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_12
.end method
