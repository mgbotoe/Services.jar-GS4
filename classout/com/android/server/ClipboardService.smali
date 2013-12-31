.class public Lcom/android/server/ClipboardService;
.super Landroid/content/IClipboard$Stub;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ClipboardService$PerUserClipboard;,
        Lcom/android/server/ClipboardService$ListenerInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardService"

.field private static final is3LMAllowed:Z


# instance fields
.field private edm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mAm:Landroid/app/IActivityManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mClipboards:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/ClipboardService$PerUserClipboard;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerID:I

.field private final mContext:Landroid/content/Context;

.field private final mPermissionOwner:Landroid/os/IBinder;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Landroid/content/IClipboard$Stub;-><init>()V

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    const-string v3, "enterprise_policy"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v3, p0, Lcom/android/server/ClipboardService;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v3, p0, Lcom/android/server/ClipboardService;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_20

    iget-object v3, p0, Lcom/android/server/ClipboardService;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ClipboardService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    :cond_20
    iput-object p1, p0, Lcom/android/server/ClipboardService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const-string v3, "appops"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x0

    :try_start_39
    iget-object v3, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    const-string v4, "clipboard"

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_40} :catch_5b

    move-result-object v1

    :goto_41
    iput-object v1, p0, Lcom/android/server/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/ClipboardService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/ClipboardService$1;

    invoke-direct {v4, p0}, Lcom/android/server/ClipboardService$1;-><init>(Lcom/android/server/ClipboardService;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    return-void

    :catch_5b
    move-exception v0

    const-string v3, "clipboard"

    const-string v4, "AM dead"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_41
.end method

.method static synthetic access$000(Lcom/android/server/ClipboardService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ClipboardService;->removeClipboard(I)V

    return-void
.end method

.method private final addActiveOwnerLocked(ILjava/lang/String;)V
    .registers 14

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v8, 0x0

    :try_start_d
    invoke-interface {v6, p2, v8, v7}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-nez v5, :cond_79

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_a6
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2c} :catch_2c

    :catch_2c
    move-exception v8

    :cond_2d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    iget-object v8, p0, Lcom/android/server/ClipboardService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v8}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v8

    if-nez v8, :cond_b1

    iget-object v8, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_b0

    iget-object v8, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v8, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b0

    iget-object v8, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ClipData;

    invoke-virtual {v8}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_61
    if-ge v2, v0, :cond_ab

    iget-object v8, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ClipData;

    invoke-virtual {v8, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-direct {p0, v8, p2}, Lcom/android/server/ClipboardService;->grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    :cond_79
    :try_start_79
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v8

    if-nez v8, :cond_2d

    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Calling uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not own package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_a6
    .catchall {:try_start_79 .. :try_end_a6} :catchall_a6
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_a6} :catch_2c

    :catchall_a6
    move-exception v8

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    :cond_ab
    iget-object v8, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v8, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_b0
    :goto_b0
    return-void

    :cond_b1
    iget-object v8, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v8, :cond_b0

    iget-object v8, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v8, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b0

    iget-object v8, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v8}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_c4
    if-ge v2, v0, :cond_d2

    iget-object v8, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v8, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-direct {p0, v8, p2}, Lcom/android/server/ClipboardService;->grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c4

    :cond_d2
    iget-object v8, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v8, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b0
.end method

.method private final checkDataOwnerLocked(Landroid/content/ClipData;I)V
    .registers 6

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/ClipboardService;->checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method private final checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V
    .registers 5

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    :cond_20
    return-void
.end method

.method private final checkUriOwnerLocked(Landroid/net/Uri;I)V
    .registers 8

    const-string v2, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :goto_c
    return-void

    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_11
    iget-object v2, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, p2, v3, p1, v4}, Landroid/app/IActivityManager;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;I)I
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1c
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_18} :catch_21

    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c

    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catch_21
    move-exception v2

    goto :goto_18
.end method

.method private final clearActiveOwnersLocked()V
    .registers 8

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    iget-object v5, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    iget-object v5, p0, Lcom/android/server/ClipboardService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v5}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v5

    if-nez v5, :cond_4b

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iget-object v5, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_22

    :cond_21
    return-void

    :cond_22
    iget-object v5, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ClipData;

    invoke-virtual {v5}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_33
    if-ge v2, v0, :cond_21

    iget-object v5, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ClipData;

    invoke-virtual {v5, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_4b
    iget v5, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v5, :cond_9a

    iget-object v5, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v5, :cond_6c

    iget-object v5, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    if-eqz v5, :cond_21

    iget-object v5, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-virtual {v5}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_5e
    if-ge v2, v0, :cond_21

    iget-object v5, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-virtual {v5, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    :cond_6c
    iget-object v5, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v5}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_73
    if-ge v2, v0, :cond_81

    iget-object v5, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v5, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_73

    :cond_81
    iget-object v5, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    if-eqz v5, :cond_21

    iget-object v5, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-virtual {v5}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    const/4 v2, 0x0

    :goto_8c
    if-ge v2, v3, :cond_21

    iget-object v5, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-virtual {v5, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8c

    :cond_9a
    iget-object v5, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    if-eqz v5, :cond_21

    iget-object v5, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-virtual {v5}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_a5
    if-ge v2, v0, :cond_21

    iget-object v5, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-virtual {v5, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a5
.end method

.method private getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;
    .registers 2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ClipboardService;->getClipboard(I)Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    return-object v0
.end method

.method private getClipboard(I)Lcom/android/server/ClipboardService$PerUserClipboard;
    .registers 5

    iget-object v2, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ClipboardService$PerUserClipboard;

    if-nez v0, :cond_17

    new-instance v0, Lcom/android/server/ClipboardService$PerUserClipboard;

    invoke-direct {v0, p0, p1}, Lcom/android/server/ClipboardService$PerUserClipboard;-><init>(Lcom/android/server/ClipboardService;I)V

    iget-object v1, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_17
    monitor-exit v2

    return-object v0

    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private final grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->grantUriLocked(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->grantUriLocked(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method private final grantUriLocked(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 11

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_4
    iget-object v0, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/server/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/4 v5, 0x1

    move-object v3, p2

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;I)V
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_1b

    :goto_12
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catch_1b
    move-exception v0

    goto :goto_12
.end method

.method private removeClipboard(I)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private final revokeItemLocked(Landroid/content/ClipData$Item;)V
    .registers 4

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ClipboardService;->revokeUriLocked(Landroid/net/Uri;)V

    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ClipboardService;->revokeUriLocked(Landroid/net/Uri;)V

    :cond_20
    return-void
.end method

.method private final revokeUriLocked(Landroid/net/Uri;)V
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    iget-object v3, p0, Lcom/android/server/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v2, v3, p1, v4}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;I)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_15

    :goto_c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catch_15
    move-exception v2

    goto :goto_c
.end method


# virtual methods
.method public UpdateClipboardDB(I)V
    .registers 3

    iget v0, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-eq v0, p1, :cond_6

    iput p1, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    :cond_6
    return-void
.end method

.method public addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v0, :cond_19

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/ClipboardService$ListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, p0, v2, p2}, Lcom/android/server/ClipboardService$ListenerInfo;-><init>(Lcom/android/server/ClipboardService;ILjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    :goto_17
    monitor-exit p0

    return-void

    :cond_19
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/ClipboardService$ListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, p0, v2, p2}, Lcom/android/server/ClipboardService$ListenerInfo;-><init>(Lcom/android/server/ClipboardService;ILjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    goto :goto_17

    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public getPrimaryClip(Ljava/lang/String;)Landroid/content/ClipData;
    .registers 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/ClipboardService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit p0

    :goto_23
    return-object v0

    :cond_24
    iget-object v1, p0, Lcom/android/server/ClipboardService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :goto_35
    iget-object v1, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x1d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_57

    monitor-exit p0

    goto :goto_23

    :catchall_45
    move-exception v0

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_2 .. :try_end_47} :catchall_45

    throw v0

    :cond_48
    :try_start_48
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    goto :goto_35

    :cond_57
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/ClipboardService;->addActiveOwnerLocked(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ClipboardService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v0

    if-nez v0, :cond_7c

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    monitor-exit p0

    goto :goto_23

    :cond_7c
    iget v0, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v0, :cond_88

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    monitor-exit p0

    goto :goto_23

    :cond_88
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_48 .. :try_end_8f} :catchall_45

    goto :goto_23
.end method

.method public getPrimaryClipDescription(Ljava/lang/String;)Landroid/content/ClipDescription;
    .registers 8

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x1d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v4, v5, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_12

    monitor-exit p0

    :goto_11
    return-object v2

    :cond_12
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/ClipboardService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v3

    if-nez v3, :cond_2f

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    monitor-exit p0

    goto :goto_11

    :catchall_2c
    move-exception v2

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_2c

    throw v2

    :cond_2f
    :try_start_2f
    iget-object v3, p0, Lcom/android/server/ClipboardService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v3

    if-eqz v3, :cond_56

    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :goto_3c
    iget-object v3, p0, Lcom/android/server/ClipboardService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v3

    if-nez v3, :cond_6f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5d

    monitor-exit p0

    goto :goto_11

    :cond_56
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    goto :goto_3c

    :cond_5d
    iget-object v2, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipData;

    invoke-virtual {v2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    monitor-exit p0

    goto :goto_11

    :cond_6f
    iget v3, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v3, :cond_7f

    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v3, :cond_7d

    iget-object v2, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    :cond_7d
    monitor-exit p0

    goto :goto_11

    :cond_7f
    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    if-eqz v3, :cond_89

    iget-object v2, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-virtual {v2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    :cond_89
    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_2f .. :try_end_8a} :catchall_2c

    goto :goto_11
.end method

.method public hasClipboardText(Ljava/lang/String;)Z
    .registers 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v3, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v6, 0x1d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v3, v6, v7, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_14

    monitor-exit p0

    move v3, v4

    :goto_13
    return v3

    :cond_14
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/ClipboardService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v3

    if-nez v3, :cond_2f

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    monitor-exit p0

    move v3, v4

    goto :goto_13

    :cond_2f
    iget-object v3, p0, Lcom/android/server/ClipboardService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v3

    if-eqz v3, :cond_77

    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :goto_3c
    iget-object v3, p0, Lcom/android/server/ClipboardService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v3

    if-nez v3, :cond_83

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_80

    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipData;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_7e

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_7e

    move v3, v5

    :goto_72
    monitor-exit p0

    goto :goto_13

    :catchall_74
    move-exception v3

    monitor-exit p0
    :try_end_76
    .catchall {:try_start_3 .. :try_end_76} :catchall_74

    throw v3

    :cond_77
    const/4 v3, 0x0

    :try_start_78
    iput-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    goto :goto_3c

    :cond_7e
    move v3, v4

    goto :goto_72

    :cond_80
    monitor-exit p0

    move v3, v4

    goto :goto_13

    :cond_83
    iget v3, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v3, :cond_a4

    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v3, :cond_c1

    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_a2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_a2

    move v3, v5

    :goto_9f
    monitor-exit p0

    goto/16 :goto_13

    :cond_a2
    move v3, v4

    goto :goto_9f

    :cond_a4
    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    if-eqz v3, :cond_c1

    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_bf

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_bf

    move v3, v5

    :goto_bc
    monitor-exit p0

    goto/16 :goto_13

    :cond_bf
    move v3, v4

    goto :goto_bc

    :cond_c1
    monitor-exit p0
    :try_end_c2
    .catchall {:try_start_78 .. :try_end_c2} :catchall_74

    move v3, v4

    goto/16 :goto_13
.end method

.method public hasPrimaryClip(Ljava/lang/String;)Z
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/ClipboardService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v3

    if-nez v3, :cond_1d

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    iget-object v2, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    monitor-exit p0

    :goto_1c
    return v1

    :cond_1d
    iget-object v3, p0, Lcom/android/server/ClipboardService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :goto_2a
    iget-object v3, p0, Lcom/android/server/ClipboardService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v3

    if-nez v3, :cond_4f

    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_43

    move v1, v2

    :cond_43
    monitor-exit p0

    goto :goto_1c

    :catchall_45
    move-exception v1

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v1

    :cond_48
    const/4 v3, 0x0

    :try_start_49
    iput-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    goto :goto_2a

    :cond_4f
    iget-object v3, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x1d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v4, v5, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_5f

    monitor-exit p0

    goto :goto_1c

    :cond_5f
    iget v3, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v3, :cond_6e

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v3, :cond_6c

    move v1, v2

    :cond_6c
    monitor-exit p0

    goto :goto_1c

    :cond_6e
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    if-eqz v3, :cond_77

    move v1, v2

    :cond_77
    monitor-exit p0
    :try_end_78
    .catchall {:try_start_49 .. :try_end_78} :catchall_45

    goto :goto_1c
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IClipboard$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    :catch_5
    move-exception v0

    const-string v1, "clipboard"

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method public removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :goto_e
    monitor-exit p0

    return-void

    :cond_10
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_e

    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V
    .registers 11

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/ClipboardService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v5

    if-nez v5, :cond_1b

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    iget-object v5, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    monitor-exit p0

    :goto_1a
    return-void

    :cond_1b
    iget-object v5, p0, Lcom/android/server/ClipboardService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v5}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v5

    if-eqz v5, :cond_3b

    iget-object v5, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    :goto_28
    if-eqz p1, :cond_42

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    if-gtz v5, :cond_42

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "No items"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :catchall_38
    move-exception v5

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_38

    throw v5

    :cond_3b
    const/4 v5, 0x0

    :try_start_3c
    iput-object v5, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    goto :goto_28

    :cond_42
    iget-object v5, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v6, 0x1e

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v5, v6, v7, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_52

    monitor-exit p0

    goto :goto_1a

    :cond_52
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/ClipboardService;->checkDataOwnerLocked(Landroid/content/ClipData;I)V

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->clearActiveOwnersLocked()V

    iget-object v5, p0, Lcom/android/server/ClipboardService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v5}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v5

    if-nez v5, :cond_8b

    iget-object v5, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ClipData;

    if-eqz v4, :cond_89

    invoke-virtual {v4, p1}, Landroid/content/ClipData;->checkEquals(Landroid/content/ClipData;)Z

    move-result v5

    if-eqz v5, :cond_89

    iget-object v5, p0, Lcom/android/server/ClipboardService;->mContext:Landroid/content/Context;

    const v6, 0x10409f3

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_89
    monitor-exit p0

    goto :goto_1a

    :cond_8b
    iget v5, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v5, :cond_ae

    iput-object p1, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    iput-object p1, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    :goto_93
    iget v5, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v5, :cond_d5

    iget-object v5, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_9c
    .catchall {:try_start_3c .. :try_end_9c} :catchall_38

    move-result v3

    const/4 v2, 0x0

    :goto_9e
    if-ge v2, v3, :cond_b1

    :try_start_a0
    iget-object v5, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/content/IOnPrimaryClipChangedListener;

    invoke-interface {v5}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_ab
    .catchall {:try_start_a0 .. :try_end_ab} :catchall_38
    .catch Landroid/os/RemoteException; {:try_start_a0 .. :try_end_ab} :catch_f6

    :goto_ab
    add-int/lit8 v2, v2, 0x1

    goto :goto_9e

    :cond_ae
    :try_start_ae
    iput-object p1, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    goto :goto_93

    :cond_b1
    iget-object v5, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    iget-object v5, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_bb
    .catchall {:try_start_ae .. :try_end_bb} :catchall_38

    move-result v1

    const/4 v2, 0x0

    :goto_bd
    if-ge v2, v1, :cond_cd

    :try_start_bf
    iget-object v5, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/content/IOnPrimaryClipChangedListener;

    invoke-interface {v5}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_ca
    .catchall {:try_start_bf .. :try_end_ca} :catchall_38
    .catch Landroid/os/RemoteException; {:try_start_bf .. :try_end_ca} :catch_f4

    :goto_ca
    add-int/lit8 v2, v2, 0x1

    goto :goto_bd

    :cond_cd
    :try_start_cd
    iget-object v5, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_d2
    monitor-exit p0

    goto/16 :goto_1a

    :cond_d5
    iget-object v5, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_da
    .catchall {:try_start_cd .. :try_end_da} :catchall_38

    move-result v3

    const/4 v2, 0x0

    :goto_dc
    if-ge v2, v3, :cond_ec

    :try_start_de
    iget-object v5, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/content/IOnPrimaryClipChangedListener;

    invoke-interface {v5}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_e9
    .catchall {:try_start_de .. :try_end_e9} :catchall_38
    .catch Landroid/os/RemoteException; {:try_start_de .. :try_end_e9} :catch_f2

    :goto_e9
    add-int/lit8 v2, v2, 0x1

    goto :goto_dc

    :cond_ec
    :try_start_ec
    iget-object v5, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_f1
    .catchall {:try_start_ec .. :try_end_f1} :catchall_38

    goto :goto_d2

    :catch_f2
    move-exception v5

    goto :goto_e9

    :catch_f4
    move-exception v5

    goto :goto_ca

    :catch_f6
    move-exception v5

    goto :goto_ab
.end method
