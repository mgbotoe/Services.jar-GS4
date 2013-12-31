.class public Lcom/android/server/enterprise/license/EnterpriseLicenseService;
.super Landroid/app/enterprise/license/IEnterpriseLicense$Stub;
.source "EnterpriseLicenseService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "EnterpriseLicenseService"

.field private static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private static mPMS:Landroid/content/pm/IPackageManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mELMKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKLMKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    .registers 5

    invoke-direct {p0}, Landroid/app/enterprise/license/IEnterpriseLicense$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sput-object p2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    return-void
.end method

.method private deleteELMInfo(Ljava/lang/String;)Z
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "pkgName"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "LICENSE"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_17

    const/4 v2, 0x1

    :goto_16
    return v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method private enforcePermission()V
    .registers 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.MDM_LICENSE_INTERNAL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPermissions(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    if-eq v5, v6, :cond_12

    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_12
    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_20

    :cond_1e
    const/4 v3, 0x0

    :cond_1f
    :goto_1f
    return-object v3

    :cond_20
    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_22
    sget-object v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "LICENSE"

    const-string v7, "pkgName"

    const-string v8, "rightsObject"

    invoke-virtual {v5, v6, v7, p0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/app/enterprise/license/RightsObject;

    move-object v4, v0

    if-eqz v4, :cond_1f

    invoke-virtual {v4}, Landroid/app/enterprise/license/RightsObject;->getPermissions()Ljava/util/List;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3d} :catch_3f

    move-result-object v3

    goto :goto_1f

    :catch_3f
    move-exception v2

    const-string v5, "EnterpriseLicenseService"

    const-string v6, "getPermissions() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method private getUidForPackageName(Ljava/lang/String;)I
    .registers 7

    const/4 v2, -0x1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_11

    :goto_10
    return v2

    :catch_11
    move-exception v0

    const-string v3, "EnterpriseLicenseService"

    const-string v4, "getUidForPackageName() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method private resetELMInfo(Ljava/lang/String;)Z
    .registers 7

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v0, 0x0

    const-string v3, "rightsObject"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "pkgName"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "LICENSE"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    return v3
.end method

.method public static updateAdminPermissions()V
    .registers 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    if-eq v6, v7, :cond_12

    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_12
    const/4 v6, 0x1

    :try_start_13
    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "pkgName"

    aput-object v7, v0, v6

    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "LICENSE"

    invoke-virtual {v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_6d

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6d

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_30
    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v6, "pkgName"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_30

    const-string v6, "EnterpriseLicenseService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAdminPermissions() :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v4}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_61} :catch_62

    goto :goto_30

    :catch_62
    move-exception v2

    const-string v6, "EnterpriseLicenseService"

    const-string v7, "updateAdminPermissions() failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6d
    return-void
.end method


# virtual methods
.method public declared-synchronized activateKnoxLicense(Ljava/lang/String;)V
    .registers 10

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_57

    move-result-wide v3

    :try_start_a
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    invoke-interface {v6, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/content/Intent;

    const-string v6, "edm.intent.action.knox_license.registration.internal"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "edm.intent.extra.knox_license.data.pkgname"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.sec.MDM_LICENSE_INTERNAL"

    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_5a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_26} :catch_2b

    :try_start_26
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_57

    :goto_29
    monitor-exit p0

    return-void

    :catch_2b
    move-exception v0

    :try_start_2c
    const-string v6, "EnterpriseLicenseService"

    const-string v7, "activateKnoxLicense() failed."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_5a

    :try_start_36
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v1, Landroid/content/Intent;

    const-string v6, "edm.intent.action.knox_license.status"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "edm.intent.extra.knox_license.status"

    const-string v7, "fail"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "edm.intent.extra.knox_license.errorcode"

    const/16 v7, 0x12d

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_56
    .catchall {:try_start_36 .. :try_end_56} :catchall_57

    goto :goto_29

    :catchall_57
    move-exception v6

    monitor-exit p0

    throw v6

    :catchall_5a
    move-exception v6

    :try_start_5b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_57
.end method

.method public declared-synchronized activateLicense(Ljava/lang/String;)V
    .registers 12

    monitor-enter p0

    const/4 v3, 0x0

    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_69

    move-result-wide v5

    :try_start_a
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    invoke-interface {v8, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/content/Intent;

    const-string v8, "edm.intent.action.license.registration.internal"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "edm.intent.extra.license.data.pkgname"

    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "edm.intent.extra.license.data.pkgversion"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.sec.MDM_LICENSE_INTERNAL"

    invoke-virtual {v8, v2, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_a .. :try_end_38} :catchall_6c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_38} :catch_3d

    :try_start_38
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_69

    :goto_3b
    monitor-exit p0

    return-void

    :catch_3d
    move-exception v0

    :try_start_3e
    const-string v8, "EnterpriseLicenseService"

    const-string v9, "activateLicense() failed."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_6c

    :try_start_48
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v2, Landroid/content/Intent;

    const-string v8, "edm.intent.action.license.status"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "edm.intent.extra.license.status"

    const-string v9, "fail"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "edm.intent.extra.license.errorcode"

    const/16 v9, 0x12d

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_68
    .catchall {:try_start_48 .. :try_end_68} :catchall_69

    goto :goto_3b

    :catchall_69
    move-exception v8

    monitor-exit p0

    throw v8

    :catchall_6c
    move-exception v8

    :try_start_6d
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_69
.end method

.method public deleteApiCallData(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/Error;)Z
    .registers 11

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_10
    :goto_10
    return v2

    :cond_11
    :try_start_11
    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "LICENSE"

    const-string v5, "instanceId"

    const-string v6, "pkgName"

    invoke-virtual {v3, v4, v5, p2, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_30

    const-string v3, "EnterpriseLicenseService"

    const-string v4, "deleteApiCallData(): Record does not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_26} :catch_27

    goto :goto_10

    :catch_27
    move-exception v0

    const-string v3, "EnterpriseLicenseService"

    const-string v4, "deleteApiCallData() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_30
    :try_start_30
    invoke-static {v1}, Lcom/android/server/enterprise/license/LicenseLog;->deleteLog(Ljava/lang/String;)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_27

    move-result v2

    goto :goto_10
.end method

.method public deleteLicense(Ljava/lang/String;)Z
    .registers 12

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    if-eqz p1, :cond_15

    :try_start_b
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_48
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_2f

    move-result v6

    if-eqz v6, :cond_19

    :cond_15
    :goto_15
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_18
    return v5

    :cond_19
    :try_start_19
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "LICENSE"

    const-string v8, "instanceId"

    const-string v9, "pkgName"

    invoke-virtual {v6, v7, v8, p1, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3c

    const-string v6, "EnterpriseLicenseService"

    const-string v7, "deleteLicense(): Record does not exist"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_19 .. :try_end_2e} :catchall_48
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2e} :catch_2f

    goto :goto_15

    :catch_2f
    move-exception v0

    :try_start_30
    const-string v5, "EnterpriseLicenseService"

    const-string v6, "deleteLicense() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_48

    :cond_37
    :goto_37
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v2

    goto :goto_18

    :cond_3c
    :try_start_3c
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->deleteELMInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    sget-object v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v1}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_48
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_47} :catch_2f

    goto :goto_37

    :catchall_48
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public deleteLicenseByAdmin(Ljava/lang/String;)Z
    .registers 8

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-eqz p1, :cond_14

    :try_start_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_32
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_29

    move-result v4

    if-eqz v4, :cond_19

    :cond_14
    const/4 v4, 0x0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_18
    return v4

    :cond_19
    :try_start_19
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->deleteELMInfo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_32
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_24} :catch_29

    :cond_24
    :goto_24
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v1

    goto :goto_18

    :catch_29
    move-exception v0

    :try_start_2a
    const-string v4, "EnterpriseLicenseService"

    const-string v5, "deleteLicenseByAdmin() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_32

    goto :goto_24

    :catchall_32
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getAllLicenseInfo()[Landroid/app/enterprise/license/LicenseInfo;
    .registers 15

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x3

    :try_start_6
    new-array v0, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "pkgName"

    aput-object v13, v0, v12

    const/4 v12, 0x1

    const-string v13, "instanceId"

    aput-object v13, v0, v12

    const/4 v12, 0x2

    const-string v13, "pkgVersion"

    aput-object v13, v0, v12

    sget-object v12, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "LICENSE"

    invoke-virtual {v12, v13, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_7e

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7e

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_30} :catch_76

    :try_start_30
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_80

    move-result-object v4

    move-object v6, v5

    :goto_35
    :try_start_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v12, "pkgName"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "instanceId"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v12, "pkgVersion"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v5, Landroid/app/enterprise/license/LicenseInfo;

    invoke-direct {v5, v9, v3, v10}, Landroid/app/enterprise/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_58} :catch_83

    :try_start_58
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_80

    move-object v6, v5

    goto :goto_35

    :cond_5d
    if-eqz v8, :cond_87

    :try_start_5f
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_87

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Landroid/app/enterprise/license/LicenseInfo;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/app/enterprise/license/LicenseInfo;

    check-cast v12, [Landroid/app/enterprise/license/LicenseInfo;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_73} :catch_83

    move-object v5, v6

    move-object v7, v8

    :goto_75
    return-object v12

    :catch_76
    move-exception v2

    :goto_77
    const-string v12, "EnterpriseLicenseService"

    const-string v13, "getLicenseInfo() failed"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    :goto_7e
    const/4 v12, 0x0

    goto :goto_75

    :catch_80
    move-exception v2

    move-object v7, v8

    goto :goto_77

    :catch_83
    move-exception v2

    move-object v5, v6

    move-object v7, v8

    goto :goto_77

    :cond_87
    move-object v5, v6

    move-object v7, v8

    goto :goto_7e
.end method

.method public getApiCallData(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 9

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_10
    :goto_10
    return-object v2

    :cond_11
    :try_start_11
    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "LICENSE"

    const-string v5, "instanceId"

    const-string v6, "pkgName"

    invoke-virtual {v3, v4, v5, p1, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_30

    const-string v3, "EnterpriseLicenseService"

    const-string v4, "getApiCallData(): Record does not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_26} :catch_27

    goto :goto_10

    :catch_27
    move-exception v0

    const-string v3, "EnterpriseLicenseService"

    const-string v4, "getApiCallData() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_30
    :try_start_30
    invoke-static {v1}, Lcom/android/server/enterprise/license/LicenseLog;->getLog(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_27

    move-result-object v2

    goto :goto_10
.end method

.method public getApiCallDataByAdmin(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_LICENSE_LOG"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_14
    :goto_14
    return-object v1

    :cond_15
    :try_start_15
    invoke-static {p1}, Lcom/android/server/enterprise/license/LicenseLog;->getLog(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_1a

    move-result-object v1

    goto :goto_14

    :catch_1a
    move-exception v0

    const-string v2, "EnterpriseLicenseService"

    const-string v3, "getApiCallDataByAdmin() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method public getELMLicenseKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_f
    const/4 v2, 0x0

    :goto_10
    return-object v2

    :cond_11
    const/4 v2, 0x0

    :try_start_12
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_21} :catch_22

    goto :goto_10

    :catch_22
    move-exception v1

    const-string v3, "EnterpriseLicenseService"

    const-string v4, "getELMLicenseKey() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public getKLMLicenseKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_f
    const/4 v2, 0x0

    :goto_10
    return-object v2

    :cond_11
    const/4 v2, 0x0

    :try_start_12
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_21} :catch_22

    goto :goto_10

    :catch_22
    move-exception v1

    const-string v3, "EnterpriseLicenseService"

    const-string v4, "getKLMLicenseKey() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public getLicenseInfo(Ljava/lang/String;)Landroid/app/enterprise/license/LicenseInfo;
    .registers 15

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v6, 0x0

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_12

    :cond_10
    move-object v7, v6

    :goto_11
    return-object v7

    :cond_12
    const/4 v11, 0x3

    :try_start_13
    new-array v0, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "pkgName"

    aput-object v12, v0, v11

    const/4 v11, 0x1

    const-string v12, "instanceId"

    aput-object v12, v0, v11

    const/4 v11, 0x2

    const-string v12, "pkgVersion"

    aput-object v12, v0, v11

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "instanceId"

    invoke-virtual {v2, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "LICENSE"

    invoke-virtual {v11, v12, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_72

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_72

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_46
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_72

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v11, "instanceId"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_46

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_46

    const-string v11, "pkgName"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "pkgVersion"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v7, Landroid/app/enterprise/license/LicenseInfo;

    invoke-direct {v7, v8, v4, v9}, Landroid/app/enterprise/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_71} :catch_74

    move-object v6, v7

    :cond_72
    :goto_72
    move-object v7, v6

    goto :goto_11

    :catch_74
    move-exception v3

    const-string v11, "EnterpriseLicenseService"

    const-string v12, "getLicenseInfo() failed"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72
.end method

.method public getRightsObject(Ljava/lang/String;)Landroid/app/enterprise/license/RightsObject;
    .registers 11

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v3, 0x0

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_10
    move-object v4, v3

    :goto_11
    return-object v4

    :cond_12
    :try_start_12
    sget-object v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "LICENSE"

    const-string v7, "instanceId"

    const-string v8, "rightsObject"

    invoke-virtual {v5, v6, v7, p1, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/app/enterprise/license/RightsObject;

    move-object v3, v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_28} :catch_2a

    :cond_28
    :goto_28
    move-object v4, v3

    goto :goto_11

    :catch_2a
    move-exception v2

    const-string v5, "EnterpriseLicenseService"

    const-string v6, "getRightsObject() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method public log(Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Lcom/android/server/enterprise/license/LicenseLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public processKnoxLicenseResponse(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/Error;II)Z
    .registers 10

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    :try_start_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "edm.intent.action.knox_license.status"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "edm.intent.extra.knox_license.status"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "edm.intent.extra.knox_license.errorcode"

    invoke-virtual {p3}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "edm.intent.extra.knox_license.activaton_initiator"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "edm.intent.extra.knox_license.result_type"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2a} :catch_2c

    const/4 v2, 0x1

    :goto_2b
    return v2

    :catch_2c
    move-exception v0

    const-string v2, "EnterpriseLicenseService"

    const-string v3, "processKnoxLicenseResponse() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_2b
.end method

.method public declared-synchronized processLicenseActivationResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/RightsObject;Landroid/app/enterprise/license/Error;)Z
    .registers 21

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    if-nez p5, :cond_33

    const/4 v7, 0x1

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v6, Landroid/content/Intent;

    const-string v11, "edm.intent.action.license.status"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_11e

    const-string v11, "edm.intent.extra.license.status"

    move-object/from16 v0, p3

    invoke-virtual {v6, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v12

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_28
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_f5

    move v8, v7

    :goto_31
    monitor-exit p0

    return v8

    :cond_33
    :try_start_33
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "pkgName"

    invoke-virtual {v4, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v1

    const-string v11, "rightsObject"

    invoke-virtual {v3, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v11, "instanceId"

    move-object/from16 v0, p4

    invoke-virtual {v3, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "LICENSE"

    invoke-virtual {v11, v12, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2

    if-lez v2, :cond_b0

    sget-object v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "LICENSE"

    invoke-virtual {v11, v12, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v7

    :goto_64
    const-string v11, "EnterpriseLicenseService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "processLicenseActivationResponse(): ret = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_8a

    sget-object v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v11, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkServices()V
    :try_end_8a
    .catchall {:try_start_33 .. :try_end_8a} :catchall_f8
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_8a} :catch_c5

    :cond_8a
    :try_start_8a
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v6, Landroid/content/Intent;

    const-string v11, "edm.intent.action.license.status"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_14c

    const-string v11, "edm.intent.extra.license.status"

    move-object/from16 v0, p3

    invoke-virtual {v6, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v12

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_a6
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_ae
    .catchall {:try_start_8a .. :try_end_ae} :catchall_f5

    :goto_ae
    move v8, v7

    goto :goto_31

    :cond_b0
    :try_start_b0
    const-string v11, "pkgName"

    invoke-virtual {v3, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "pkgVersion"

    move-object/from16 v0, p2

    invoke-virtual {v3, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "LICENSE"

    invoke-virtual {v11, v12, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_c3
    .catchall {:try_start_b0 .. :try_end_c3} :catchall_f8
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_c3} :catch_c5

    move-result v7

    goto :goto_64

    :catch_c5
    move-exception v5

    :try_start_c6
    const-string v11, "EnterpriseLicenseService"

    const-string v12, "processLicenseActivationResponse() failed"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d0
    .catchall {:try_start_c6 .. :try_end_d0} :catchall_f8

    :try_start_d0
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v6, Landroid/content/Intent;

    const-string v11, "edm.intent.action.license.status"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_13d

    const-string v11, "edm.intent.extra.license.status"

    move-object/from16 v0, p3

    invoke-virtual {v6, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v12

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_ec
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_f4
    .catchall {:try_start_d0 .. :try_end_f4} :catchall_f5

    goto :goto_ae

    :catchall_f5
    move-exception v11

    monitor-exit p0

    throw v11

    :catchall_f8
    move-exception v11

    :try_start_f9
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v6, Landroid/content/Intent;

    const-string v12, "edm.intent.action.license.status"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_12e

    const-string v12, "edm.intent.extra.license.status"

    move-object/from16 v0, p3

    invoke-virtual {v6, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v13

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_115
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v12, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    throw v11

    :cond_11e
    const-string v11, "edm.intent.extra.license.status"

    const-string v12, "fail"

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "edm.intent.extra.license.errorcode"

    const/16 v12, 0x12d

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_28

    :cond_12e
    const-string v12, "edm.intent.extra.license.status"

    const-string v13, "fail"

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "edm.intent.extra.license.errorcode"

    const/16 v13, 0x12d

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_115

    :cond_13d
    const-string v11, "edm.intent.extra.license.status"

    const-string v12, "fail"

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "edm.intent.extra.license.errorcode"

    const/16 v12, 0x12d

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_ec

    :cond_14c
    const-string v11, "edm.intent.extra.license.status"

    const-string v12, "fail"

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "edm.intent.extra.license.errorcode"

    const/16 v12, 0x12d

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_15a
    .catchall {:try_start_f9 .. :try_end_15a} :catchall_f5

    goto/16 :goto_a6
.end method

.method public processLicenseValidationResult(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/RightsObject;Landroid/app/enterprise/license/Error;)Z
    .registers 20

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    if-nez p3, :cond_32

    const/4 v7, 0x1

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v5, Landroid/content/Intent;

    const-string v11, "edm.intent.action.license.status"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_127

    const-string v11, "edm.intent.extra.license.status"

    move-object/from16 v0, p1

    invoke-virtual {v5, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_28
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v8, v7

    :goto_31
    return v8

    :cond_32
    :try_start_32
    sget-object v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "LICENSE"

    const-string v13, "instanceId"

    const-string v14, "pkgName"

    move-object/from16 v0, p2

    invoke-virtual {v11, v12, v13, v0, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6f

    const-string v11, "EnterpriseLicenseService"

    const-string v12, "processLicenseValidationResult(): Record does not exist"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_32 .. :try_end_49} :catchall_101
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_49} :catch_d7

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v5, Landroid/content/Intent;

    const-string v11, "edm.intent.action.license.status"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_155

    const-string v11, "edm.intent.extra.license.status"

    move-object/from16 v0, p1

    invoke-virtual {v5, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_65
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v8, v7

    goto :goto_31

    :cond_6f
    :try_start_6f
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v1

    const-string v11, "rightsObject"

    invoke-virtual {v2, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "instanceId"

    move-object/from16 v0, p2

    invoke-virtual {v3, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "LICENSE"

    invoke-virtual {v11, v12, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v7

    const-string v11, "EnterpriseLicenseService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "processLicenseValidationResult(): ret = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_b0

    sget-object v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v11, v6}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_b0
    .catchall {:try_start_6f .. :try_end_b0} :catchall_101
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_b0} :catch_d7

    :cond_b0
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v5, Landroid/content/Intent;

    const-string v11, "edm.intent.action.license.status"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_165

    const-string v11, "edm.intent.extra.license.status"

    move-object/from16 v0, p1

    invoke-virtual {v5, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_cc
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    :goto_d1
    invoke-virtual {v11, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v8, v7

    goto/16 :goto_31

    :catch_d7
    move-exception v4

    :try_start_d8
    const-string v11, "EnterpriseLicenseService"

    const-string v12, "processLicenseValidationResult() failed"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_df
    .catchall {:try_start_d8 .. :try_end_df} :catchall_101

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v5, Landroid/content/Intent;

    const-string v11, "edm.intent.action.license.status"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_146

    const-string v11, "edm.intent.extra.license.status"

    move-object/from16 v0, p1

    invoke-virtual {v5, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_fb
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    goto :goto_d1

    :catchall_101
    move-exception v11

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v5, Landroid/content/Intent;

    const-string v12, "edm.intent.action.license.status"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_137

    const-string v12, "edm.intent.extra.license.status"

    move-object/from16 v0, p1

    invoke-virtual {v5, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v13

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_11e
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v12, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    throw v11

    :cond_127
    const-string v11, "edm.intent.extra.license.status"

    const-string v12, "fail"

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "edm.intent.extra.license.errorcode"

    const/16 v12, 0x12d

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_28

    :cond_137
    const-string v12, "edm.intent.extra.license.status"

    const-string v13, "fail"

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "edm.intent.extra.license.errorcode"

    const/16 v13, 0x12d

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_11e

    :cond_146
    const-string v11, "edm.intent.extra.license.status"

    const-string v12, "fail"

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "edm.intent.extra.license.errorcode"

    const/16 v12, 0x12d

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_fb

    :cond_155
    const-string v11, "edm.intent.extra.license.status"

    const-string v12, "fail"

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "edm.intent.extra.license.errorcode"

    const/16 v12, 0x12d

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_65

    :cond_165
    const-string v11, "edm.intent.extra.license.status"

    const-string v12, "fail"

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "edm.intent.extra.license.errorcode"

    const/16 v12, 0x12d

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_cc
.end method

.method public resetLicense(Ljava/lang/String;)Z
    .registers 12

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    if-eqz p1, :cond_15

    :try_start_b
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_48
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_2f

    move-result v6

    if-eqz v6, :cond_19

    :cond_15
    :goto_15
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_18
    return v5

    :cond_19
    :try_start_19
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "LICENSE"

    const-string v8, "instanceId"

    const-string v9, "pkgName"

    invoke-virtual {v6, v7, v8, p1, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3c

    const-string v6, "EnterpriseLicenseService"

    const-string v7, "resetLicense(): Record does not exist"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_19 .. :try_end_2e} :catchall_48
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2e} :catch_2f

    goto :goto_15

    :catch_2f
    move-exception v0

    :try_start_30
    const-string v5, "EnterpriseLicenseService"

    const-string v6, "resetLicense() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_48

    :cond_37
    :goto_37
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v2

    goto :goto_18

    :cond_3c
    :try_start_3c
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->resetELMInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    sget-object v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v1}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_48
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_47} :catch_2f

    goto :goto_37

    :catchall_48
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public resetLicenseByAdmin(Ljava/lang/String;)Z
    .registers 8

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-eqz p1, :cond_14

    :try_start_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_32
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_29

    move-result v4

    if-eqz v4, :cond_19

    :cond_14
    const/4 v4, 0x0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_18
    return v4

    :cond_19
    :try_start_19
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->resetELMInfo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_32
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_24} :catch_29

    :cond_24
    :goto_24
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v1

    goto :goto_18

    :catch_29
    move-exception v0

    :try_start_2a
    const-string v4, "EnterpriseLicenseService"

    const-string v5, "resetLicenseByAdmin() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_32

    goto :goto_24

    :catchall_32
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public systemReady()V
    .registers 1

    invoke-static {}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->updateAdminPermissions()V

    return-void
.end method
