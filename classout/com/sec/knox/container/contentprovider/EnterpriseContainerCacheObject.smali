.class public Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
.super Ljava/lang/Object;
.source "EnterpriseContainerCacheObject.java"

# interfaces
.implements Lcom/sec/knox/container/EnterpriseContainerConstants;


# instance fields
.field private admin:I

.field private containerId:I

.field private containerLockOnScreenLock:Z

.field private containerStatus:I

.field private containerType:I

.field private failedPasswordAttempts:I

.field private lockType:I

.field private mEmail:Ljava/lang/String;

.field private mFirmwareVersion:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mSecurityIcon:Landroid/graphics/Bitmap;

.field private mSecurityText:Ljava/lang/String;

.field private maximumTimeToLock:J

.field private maximumTimeToUnmount:J

.field private passwordExpirationDate:J

.field private passwordExpirationTimeout:J

.field private passwordHasExpired:Z

.field private passwordStateInfo:Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

.field private passwordStatus:I

.field private pkgsInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private verifyPwdOnlyOnModeChange:Z


# direct methods
.method public constructor <init>()V
    .registers 7

    const/4 v5, -0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v5, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerId:I

    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mPassword:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mEmail:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mSecurityText:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mSecurityIcon:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mFirmwareVersion:Ljava/lang/String;

    const/16 v0, 0x5a

    iput v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerStatus:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordStatus:I

    iput v5, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->admin:I

    iput-wide v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordExpirationDate:J

    iput-wide v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordExpirationTimeout:J

    iput-boolean v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordHasExpired:Z

    iput v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->failedPasswordAttempts:I

    iput-wide v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->maximumTimeToLock:J

    iput v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->lockType:I

    iput v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerType:I

    iput-boolean v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerLockOnScreenLock:Z

    iput-boolean v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->verifyPwdOnlyOnModeChange:Z

    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->pkgsInfo:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordStateInfo:Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

    iput-wide v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->maximumTimeToUnmount:J

    return-void
.end method


# virtual methods
.method public getAdmin()I
    .registers 2

    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->admin:I

    return v0
.end method

.method public getContainerId()I
    .registers 2

    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerId:I

    return v0
.end method

.method public getContainerLockOnScreenLock()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerLockOnScreenLock:Z

    return v0
.end method

.method public getContainerPackagesInfo()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->pkgsInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method public getContainerStatus()I
    .registers 2

    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerStatus:I

    return v0
.end method

.method public getContainerType()I
    .registers 2

    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerType:I

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getFailedPasswordAttempts()I
    .registers 2

    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->failedPasswordAttempts:I

    return v0
.end method

.method public getFirmwareVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mFirmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getLockType()I
    .registers 2

    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->lockType:I

    return v0
.end method

.method public getMaximumTimeToLock()J
    .registers 3

    iget-wide v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->maximumTimeToLock:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPasswordEnabledContainerLockTimeout()J
    .registers 3

    iget-wide v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->maximumTimeToUnmount:J

    return-wide v0
.end method

.method public getPasswordExpirationDate()J
    .registers 3

    iget-wide v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordExpirationDate:J

    return-wide v0
.end method

.method public getPasswordExpirationTimeout()J
    .registers 3

    iget-wide v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordExpirationTimeout:J

    return-wide v0
.end method

.method public getPasswordHasExpired()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordHasExpired:Z

    return v0
.end method

.method public getPasswordStateInfo()Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;
    .registers 2

    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordStateInfo:Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

    return-object v0
.end method

.method public getPasswordStatus()I
    .registers 2

    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordStatus:I

    return v0
.end method

.method public getSecurityIcon()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mSecurityIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSecurityText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mSecurityText:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyPwdOnlyOnChangeMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->verifyPwdOnlyOnModeChange:Z

    return v0
.end method

.method public setAdmin(I)V
    .registers 2

    iput p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->admin:I

    return-void
.end method

.method public setContainerId(I)V
    .registers 2

    iput p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerId:I

    return-void
.end method

.method public setContainerLockOnScreenLock(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerLockOnScreenLock:Z

    return-void
.end method

.method public setContainerPackagesInfo(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->pkgsInfo:Ljava/util/HashMap;

    return-void
.end method

.method public setContainerStatus(I)V
    .registers 2

    iput p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerStatus:I

    return-void
.end method

.method public setContainerType(I)V
    .registers 2

    iput p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerType:I

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mEmail:Ljava/lang/String;

    return-void
.end method

.method public setFailedPasswordAttempts(I)V
    .registers 2

    iput p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->failedPasswordAttempts:I

    return-void
.end method

.method public setFirmwareVersion(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mFirmwareVersion:Ljava/lang/String;

    return-void
.end method

.method public setLockType(I)V
    .registers 2

    iput p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->lockType:I

    return-void
.end method

.method public setMaximumTimeToLock(J)V
    .registers 3

    iput-wide p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->maximumTimeToLock:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mName:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mPassword:Ljava/lang/String;

    return-void
.end method

.method public setPasswordEnabledContainerLockTimeout(J)V
    .registers 3

    iput-wide p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->maximumTimeToUnmount:J

    return-void
.end method

.method public setPasswordExpirationDate(J)V
    .registers 3

    iput-wide p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordExpirationDate:J

    return-void
.end method

.method public setPasswordExpirationTimeout(J)V
    .registers 3

    iput-wide p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordExpirationTimeout:J

    return-void
.end method

.method public setPasswordHasExpired(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordHasExpired:Z

    return-void
.end method

.method public setPasswordStateInfo(Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordStateInfo:Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

    return-void
.end method

.method public setPasswordStatus(I)V
    .registers 2

    iput p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordStatus:I

    return-void
.end method

.method public setSecurityIcon(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mSecurityIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setSecurityText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mSecurityText:Ljava/lang/String;

    return-void
.end method

.method public setVerifyPwdOnlyOnChangeMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->verifyPwdOnlyOnModeChange:Z

    return-void
.end method
