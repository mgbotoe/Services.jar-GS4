.class final Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;
.super Landroid/os/Handler;
.source "GeofenceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/geofencing/GeofenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GeofencingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    if-eqz p1, :cond_7

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_6c

    :cond_7
    :goto_7
    return-void

    :pswitch_8
    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    #calls: Lcom/android/server/enterprise/geofencing/GeofenceService;->loadGeofenceActiveList()V
    invoke-static {v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$000(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    #calls: Lcom/android/server/enterprise/geofencing/GeofenceService;->checkMonitoring()V
    invoke-static {v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$100(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    goto :goto_7

    :pswitch_13
    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    #calls: Lcom/android/server/enterprise/geofencing/GeofenceService;->checkMonitoring()V
    invoke-static {v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$100(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    goto :goto_7

    :pswitch_19
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    #calls: Lcom/android/server/enterprise/geofencing/GeofenceService;->isDeviceInsideGeofence(I)Ljava/util/List;
    invoke-static {v5, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$200(Lcom/android/server/enterprise/geofencing/GeofenceService;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    new-instance v2, Landroid/content/Intent;

    const-string v5, "edm.intent.action.device.inside"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v1, v5, [I

    const/4 v0, 0x0

    :goto_3d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_52

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_52
    const-string v5, "edm.intent.extra.geofence.id"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    #calls: Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$300(Lcom/android/server/enterprise/geofencing/GeofenceService;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    #getter for: Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$400(Lcom/android/server/enterprise/geofencing/GeofenceService;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "android.permission.sec.MDM_GEOFENCING"

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_19
        :pswitch_8
        :pswitch_13
    .end packed-switch
.end method
