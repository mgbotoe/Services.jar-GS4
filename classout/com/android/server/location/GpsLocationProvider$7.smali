.class Lcom/android/server/location/GpsLocationProvider$7;
.super Landroid/location/IGpsGeofenceHardware$Stub;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
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

    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$7;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/location/IGpsGeofenceHardware$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addCircularHardwareGeofence(IDDDIIII)Z
    .registers 13

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_add_geofence(IDDDIIII)Z
    invoke-static/range {p1 .. p11}, Lcom/android/server/location/GpsLocationProvider;->access$3900(IDDDIIII)Z

    move-result v0

    return v0
.end method

.method public isHardwareGeofenceSupported()Z
    .registers 2

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_is_geofence_supported()Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$3800()Z

    move-result v0

    return v0
.end method

.method public pauseHardwareGeofence(I)Z
    .registers 3

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_pause_geofence(I)Z
    invoke-static {p1}, Lcom/android/server/location/GpsLocationProvider;->access$4100(I)Z

    move-result v0

    return v0
.end method

.method public removeHardwareGeofence(I)Z
    .registers 3

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_remove_geofence(I)Z
    invoke-static {p1}, Lcom/android/server/location/GpsLocationProvider;->access$4000(I)Z

    move-result v0

    return v0
.end method

.method public resumeHardwareGeofence(II)Z
    .registers 4

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_resume_geofence(II)Z
    invoke-static {p1, p2}, Lcom/android/server/location/GpsLocationProvider;->access$4200(II)Z

    move-result v0

    return v0
.end method
