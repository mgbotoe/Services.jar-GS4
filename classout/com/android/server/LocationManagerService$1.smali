.class Lcom/android/server/LocationManagerService$1;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Landroid/app/AppOpsManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LocationManagerService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public opChanged(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    #calls: Lcom/android/server/LocationManagerService;->applyAllProviderRequirementsLocked()V
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)V

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v0
.end method
