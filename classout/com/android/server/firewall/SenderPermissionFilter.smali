.class Lcom/android/server/firewall/SenderPermissionFilter;
.super Ljava/lang/Object;
.source "SenderPermissionFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final FACTORY:Lcom/android/server/firewall/FilterFactory;


# instance fields
.field private final mPermission:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/server/firewall/SenderPermissionFilter$1;

    const-string v1, "sender-permission"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/SenderPermissionFilter$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/SenderPermissionFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/firewall/SenderPermissionFilter;->mPermission:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/firewall/SenderPermissionFilter$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/firewall/SenderPermissionFilter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/Intent;Landroid/content/pm/ApplicationInfo;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .registers 15

    iget-object v2, p0, Lcom/android/server/firewall/SenderPermissionFilter;->mPermission:Ljava/lang/String;

    iget v5, p7, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x1

    move-object v0, p1

    move-object v1, p2

    move v3, p5

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/firewall/IntentFirewall;->checkComponentPermission(Landroid/content/Intent;Ljava/lang/String;IIIZ)Z

    move-result v0

    return v0
.end method
