.class Lcom/android/server/location/GpsLocationProvider$5;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsLocationProvider;->handleInjectNtpTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2900(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v7

    const-wide/32 v19, 0x5265c00

    cmp-long v2, v7, v19

    if-ltz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2900(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/NtpTrustedTime;->forceRefresh()Z

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2900(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v7

    const-wide/32 v19, 0x5265c00

    cmp-long v2, v7, v19

    if-gez v2, :cond_e9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2900(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/NtpTrustedTime;->getCachedNtpTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2900(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/NtpTrustedTime;->getCachedNtpTimeReference()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2900(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/NtpTrustedTime;->getCacheCertainty()J

    move-result-wide v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const-string v2, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NTP server returned: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") reference: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " certainty: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " system time offset: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v3, v17

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    long-to-int v7, v13

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_inject_time(JJI)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/location/GpsLocationProvider;->access$3000(Lcom/android/server/location/GpsLocationProvider;JJI)V

    const-wide/32 v15, 0x5265c00

    :goto_ab
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v9, 0x0

    #calls: Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V
    invoke-static {v2, v7, v8, v9}, Lcom/android/server/location/GpsLocationProvider;->access$3300(Lcom/android/server/location/GpsLocationProvider;IILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$3400(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v2

    if-eqz v2, :cond_cd

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$1100(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v2

    const/4 v7, 0x5

    move-wide v0, v15

    invoke-virtual {v2, v7, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_cd
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v2

    sget-object v7, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-eq v2, v7, :cond_e8

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v2

    sget-object v7, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CHC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-eq v2, v7, :cond_e8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$3500(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_e8
    return-void

    :cond_e9
    const-string v2, "GpsLocationProvider"

    const-string v7, "requestTime failed Use system time instead of NTP time"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$3100()J

    move-result-wide v8

    add-long v8, v8, v17

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$3200()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v12, v0

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_inject_time(JJI)V
    invoke-static/range {v7 .. v12}, Lcom/android/server/location/GpsLocationProvider;->access$3000(Lcom/android/server/location/GpsLocationProvider;JJI)V

    const-wide/32 v15, 0x5265c00

    goto :goto_ab
.end method
