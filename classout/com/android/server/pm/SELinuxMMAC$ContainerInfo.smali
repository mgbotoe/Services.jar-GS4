.class Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/SELinuxMMAC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContainerInfo"
.end annotation


# instance fields
.field level:I

.field seInfo:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/SELinuxMMAC$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;-><init>()V

    return-void
.end method
