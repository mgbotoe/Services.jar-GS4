.class Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;
.super Ljava/lang/Thread;
.source "EnterpriseVpnPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LooperThread"
.end annotation


# instance fields
.field final mAnyconnectMessenger:Landroid/os/Messenger;

.field public mHandler:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;

.field final synthetic this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread$1;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;->mAnyconnectMessenger:Landroid/os/Messenger;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LooperThread : run : Run getting called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;->mHandler:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
