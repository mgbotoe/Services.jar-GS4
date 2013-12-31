.class public Lcom/android/server/enterprise/browser/BrowserPolicy;
.super Landroid/app/enterprise/IBrowserPolicy$Stub;
.source "BrowserPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BrowserPolicy"


# instance fields
.field private mCache:[Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Landroid/app/enterprise/IBrowserPolicy$Stub;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    iput-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:[Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v0, 0x0

    :goto_17
    const/4 v1, 0x1

    if-gt v0, v1, :cond_29

    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:[Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    new-instance v2, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-direct {v2, p0, v0}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;-><init>(Lcom/android/server/enterprise/browser/BrowserPolicy;I)V

    aput-object v2, v1, v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->loadProxySettings(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_29
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/browser/BrowserPolicy;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private enforceBrowserPermission(I)I
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_BROWSER_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->enforceContainerPermission(I)I

    move-result v0

    return v0
.end method

.method private enforceBrowserProxyPermission(I)I
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.mdm.permission.BROWSER_PROXY"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->enforceContainerPermission(I)I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public clearHttpProxy(I)Z
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserProxyPermission(I)I

    move-result v1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:[Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    aget-object v2, v2, p1

    #getter for: Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I
    invoke-static {v2}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->access$100(Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;)I

    move-result v2

    if-ne v1, v2, :cond_20

    iget-object v2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "BROWSER_PROXY"

    invoke-virtual {v2, v3, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdmin(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:[Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->clear()V

    :cond_20
    return v0
.end method

.method public getBrowserSettingStatus(I)Z
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatusEx(II)Z

    move-result v2

    return v2
.end method

.method public getBrowserSettingStatusEx(II)Z
    .registers 12

    const/16 v8, 0x8

    const/4 v2, 0x1

    if-ne p2, v8, :cond_6

    const/4 v2, 0x0

    :cond_6
    :try_start_6
    iget-object v5, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "BROWSER"

    const-string v7, "browserSettings"

    invoke-virtual {v5, p1, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_36

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_1a

    if-eq p2, v8, :cond_37

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/2addr v5, p2

    if-eq p2, v5, :cond_37

    const/4 v2, 0x0

    :cond_36
    :goto_36
    return v2

    :cond_37
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3a} :catch_40

    move-result v5

    and-int/2addr v5, p2

    if-ne p2, v5, :cond_1a

    const/4 v2, 0x1

    goto :goto_36

    :catch_40
    move-exception v0

    const-string v5, "BrowserPolicy"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36
.end method

.method public getHttpProxy(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:[Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    aget-object v0, v0, p1

    #getter for: Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mProxySetting:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->access$200(Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method loadProxySettings(I)V
    .registers 13

    const/4 v8, 0x0

    const/4 v7, 0x2

    new-array v2, v7, [Ljava/lang/String;

    const-string v7, "adminUid"

    aput-object v7, v2, v8

    const/4 v7, 0x1

    const-string v8, "proxyServer"

    aput-object v8, v2, v7

    :try_start_d
    iget-object v7, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "BROWSER_PROXY"

    invoke-virtual {v7, p1, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(ILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v7, "adminUid"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v7, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:[Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    aget-object v7, v7, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v8

    const-string v9, "proxyServer"

    invoke-virtual {v3, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->setProxy(ILjava/lang/String;Z)V

    :goto_41
    return-void

    :cond_42
    iget-object v7, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:[Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->clear()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_49} :catch_4a

    goto :goto_41

    :catch_4a
    move-exception v4

    const-string v7, "BrowserPolicy"

    const-string v8, "Exception in loadProxySettings"

    invoke-static {v7, v8, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_41
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:[Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    aget-object v0, v0, v1

    #getter for: Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I
    invoke-static {v0}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->access$100(Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;)I

    move-result v0

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:[Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->clear()V

    :cond_12
    return-void
.end method

.method public onContainerCreation(II)V
    .registers 3

    return-void
.end method

.method public onContainerRemoved(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:[Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->clear()V

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 3

    return-void
.end method

.method public setBrowserSettingStatus(IZI)Z
    .registers 15

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(I)I

    move-result v1

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_9
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "BROWSER"

    const-string v3, "browserSettings"

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(IILjava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_9 .. :try_end_12} :catch_42
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_4a

    move-result v5

    :goto_13
    const/4 v0, 0x1

    if-ne v0, p2, :cond_46

    or-int/2addr v5, p3

    :goto_17
    :try_start_17
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "BROWSER"

    const-string v4, "browserSettings"

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(IILjava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    const-string v0, "com.android.browser"

    invoke-static {p1, v0}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    const-string v0, "com.sec.android.app.sbrowser"

    invoke-static {p1, v0}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_3e} :catch_4a

    :goto_3e
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :catch_42
    move-exception v7

    const/16 v5, 0x17

    goto :goto_13

    :cond_46
    xor-int/lit8 v0, p3, -0x1

    and-int/2addr v5, v0

    goto :goto_17

    :catch_4a
    move-exception v7

    const-string v0, "BrowserPolicy"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e
.end method

.method public setHttpProxy(ILjava/lang/String;)Z
    .registers 9

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserProxyPermission(I)I

    move-result v3

    const/4 v2, 0x0

    if-nez p2, :cond_9

    :cond_8
    :goto_8
    return v4

    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "proxyServer"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:[Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    aget-object v4, v4, p1

    #getter for: Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I
    invoke-static {v4}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->access$100(Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_32

    iget-object v4, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:[Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    aget-object v4, v4, p1

    #getter for: Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I
    invoke-static {v4}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->access$100(Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;)I

    move-result v4

    if-ne v3, v4, :cond_45

    :cond_32
    iget-object v4, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "BROWSER_PROXY"

    invoke-virtual {v4, v3, p1, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v4, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:[Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    aget-object v4, v4, p1

    invoke-virtual {v4, v3, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->setProxy(ILjava/lang/String;)V

    :cond_43
    :goto_43
    move v4, v2

    goto :goto_8

    :cond_45
    const/4 v2, 0x0

    goto :goto_43
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method
