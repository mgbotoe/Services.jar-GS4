.class public Lcom/android/server/wifi/WifiService$ApInfo;
.super Ljava/lang/Object;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApInfo"
.end annotation


# instance fields
.field private Eap:Ljava/lang/String;

.field private MCCMNC:Ljava/lang/String;

.field private NetworkName:Ljava/lang/String;

.field private Priority:Ljava/lang/String;

.field private SSID:Ljava/lang/String;

.field private securityType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->SSID:Ljava/lang/String;

    const-string v0, "NONE"

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->securityType:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Priority:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Eap:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->MCCMNC:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->NetworkName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/WifiService$ApInfo;->MCCMNC:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wifi/WifiService$ApInfo;->NetworkName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/WifiService$ApInfo;->SSID:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wifi/WifiService$ApInfo;->securityType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Priority:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Eap:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/WifiService$ApInfo;->SSID:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wifi/WifiService$ApInfo;->securityType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Priority:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Eap:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/wifi/WifiService$ApInfo;->NetworkName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEap()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Eap:Ljava/lang/String;

    return-object v0
.end method

.method public getMCCMNC()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->MCCMNC:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->NetworkName:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Priority:Ljava/lang/String;

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->SSID:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->securityType:Ljava/lang/String;

    return-object v0
.end method
