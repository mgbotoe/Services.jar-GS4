.class public Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;
.super Landroid/app/enterprise/IApplicationPermissionControlPolicy$Stub;
.source "ApplicationPermissionControlPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final ALLPACKAGES:Ljava/lang/String; = "*"

.field private static final PKGNAME_PERMISSION_ALLIST:Ljava/lang/String; = "Alllist"

.field private static final PKGNAME_PERMISSION_BLACKLIST:Ljava/lang/String; = "Blacklist"

.field private static final PKGNAME_PERMISSION_WHITELIST:Ljava/lang/String; = "Whitelist"

.field private static final TAG:Ljava/lang/String; = "ApplicationPermissionControlPolicy"

.field private static mAppPermissionControl:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Landroid/app/enterprise/IApplicationPermissionControlPolicy$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mContext:Landroid/content/Context;

    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/IPackageManager;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method

.method private declared-synchronized clearBWList(ILjava/lang/String;)V
    .registers 29

    monitor-enter p0

    if-lez p1, :cond_f

    :try_start_3
    sget-object v23, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    if-eqz v23, :cond_f

    sget-object v23, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_c7

    move-result v23

    if-eqz v23, :cond_11

    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    sget-object v23, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    sget-object v23, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map;

    if-eqz v17, :cond_f

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_f

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_3e
    :goto_3e
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_138

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map;

    const-string v24, "Blacklist"

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map;

    const-string v24, "Whitelist"

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    const/4 v15, 0x0

    const-string v23, "Blacklist"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_83

    const-string v23, "Alllist"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d3

    :cond_83
    if-eqz v5, :cond_3e

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_3e

    const-string v23, "*"

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_ca

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getEffectiveAllPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    :cond_9b
    :goto_9b
    invoke-interface {v9, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_3e

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Set;

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->clear()V
    :try_end_c5
    .catchall {:try_start_11 .. :try_end_c5} :catchall_c7

    goto/16 :goto_3e

    :catchall_c7
    move-exception v23

    monitor-exit p0

    throw v23

    :cond_ca
    :try_start_ca
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v15, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_9b

    :cond_d3
    if-eqz v6, :cond_3e

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_3e

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_e6

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    goto/16 :goto_3e

    :cond_e6
    const-string v23, "*"

    move-object/from16 v0, v23

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10a

    const-string v23, "*"

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_101

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getEffectiveAllPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    goto :goto_9b

    :cond_101
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v15, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_9b

    :cond_10a
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const-string v23, "*"

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11e

    invoke-interface {v15, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_9b

    :cond_11e
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_122
    :goto_122
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_9b

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v5, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_122

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_122

    :cond_138
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_157

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string v24, "APPLICATION_PERMISSIONCONTROL"

    const-string v25, "ListType"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, p1

    move-object/from16 v3, v25

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_f

    :cond_157
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_15f
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1cd

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v23, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_175
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_15f

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-eq v0, v1, :cond_175

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1, v13}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getEffectiveBlacklist(ILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_175

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_175

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1a3
    :goto_1a3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_175

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1a3

    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1a3

    :cond_1cd
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_1ec

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string v24, "APPLICATION_PERMISSIONCONTROL"

    const-string v25, "ListType"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, p1

    move-object/from16 v3, v25

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_f

    :cond_1ec
    const/16 v20, 0x0

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1f6
    :goto_1f6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_24b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;
    :try_end_202
    .catchall {:try_start_ca .. :try_end_202} :catchall_c7

    :try_start_202
    const-string v23, "Whitelist"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_232

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/IPackageManager;

    move-object/from16 v24, v0

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v12, v1}, Landroid/content/pm/IPackageManager;->revokePermissionEDM(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    :try_end_221
    .catchall {:try_start_202 .. :try_end_221} :catchall_c7
    .catch Landroid/os/RemoteException; {:try_start_202 .. :try_end_221} :catch_247

    move-result-object v20

    :goto_222
    if-eqz v20, :cond_1f6

    :try_start_224
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_1f6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->killApplications(Ljava/util/List;)V
    :try_end_231
    .catchall {:try_start_224 .. :try_end_231} :catchall_c7

    goto :goto_1f6

    :cond_232
    :try_start_232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/IPackageManager;

    move-object/from16 v24, v0

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v12, v1}, Landroid/content/pm/IPackageManager;->rollbackPermission(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    :try_end_245
    .catchall {:try_start_232 .. :try_end_245} :catchall_c7
    .catch Landroid/os/RemoteException; {:try_start_232 .. :try_end_245} :catch_247

    move-result-object v20

    goto :goto_222

    :catch_247
    move-exception v7

    const/16 v20, 0x0

    goto :goto_222

    :cond_24b
    :try_start_24b
    const-string v23, "Alllist"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_262

    sget-object v23, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    :cond_262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string v24, "APPLICATION_PERMISSIONCONTROL"

    const-string v25, "ListType"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, p1

    move-object/from16 v3, v25

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_279
    .catchall {:try_start_24b .. :try_end_279} :catchall_c7

    goto/16 :goto_f
.end method

.method private declared-synchronized createAdminMap(ILjava/lang/String;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    :cond_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private enforceAppPermisionControlPermission()I
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_APP_PERMISSION_MGMT"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getAppPermissionControlBL(ILjava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_1a

    :goto_19
    return-object p3

    :cond_1a
    const-string v9, "Whitelist"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    const-string v10, "*"

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2c

    move-object p3, v2

    goto :goto_19

    :cond_2c
    const-string v9, "*"

    invoke-interface {p3, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6c

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getEffectiveAllPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_46

    const-string v9, "ApplicationPermissionControlPolicy"

    const-string v10, "getEffectiveAllPackages: returns null"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    goto :goto_19

    :cond_46
    const-string v9, "Blacklist"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_52
    :goto_52
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_81

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_52

    invoke-interface {v2, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-interface {v2, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_52

    :cond_6c
    const-string v9, "Blacklist"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    const-string v10, "*"

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7e

    move-object p3, v2

    goto :goto_19

    :cond_7e
    invoke-interface {v2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_81
    if-eqz v2, :cond_89

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8b

    :cond_89
    move-object p3, v2

    goto :goto_19

    :cond_8b
    const-string v9, "Whitelist"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_97
    :goto_97
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_97

    invoke-interface {v2, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-interface {v2, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_97

    :cond_b1
    if-eqz p4, :cond_b6

    :cond_b3
    move-object p3, v2

    goto/16 :goto_19

    :cond_b6
    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_c0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, p1, :cond_c0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9, p2}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getEffectiveBlacklist(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_c0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e6
    :goto_e6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e6

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-interface {v2, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_e6
.end method

.method private getAppPermissionControlWL(ILjava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v12, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-nez v6, :cond_1c

    :cond_1b
    :goto_1b
    return-object v4

    :cond_1c
    const-string v12, "Blacklist"

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1b

    const-string v12, "*"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7f

    const-string v12, "Blacklist"

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    const-string v13, "*"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_73

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getEffectiveAllPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_4d
    const-string v12, "Whitelist"

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_59
    :goto_59
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_59

    invoke-interface {v4, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v12

    invoke-interface {v4, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_59

    :cond_73
    const-string v12, "Blacklist"

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v4, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4d

    :cond_7f
    const-string v12, "Blacklist"

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    const-string v13, "*"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f8

    const-string v12, "Whitelist"

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    const-string v13, "*"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f8

    move-object/from16 v0, p3

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_a4
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1b

    if-eqz p4, :cond_1b

    sget-object v12, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_b6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eq v12, p1, :cond_b6

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p2

    invoke-direct {p0, v12, v0}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getEffectiveBlacklist(ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_b6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_b6

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_de
    :goto_de
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_de

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v12

    invoke-interface {v4, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_de

    :cond_f8
    const-string v12, "Whitelist"

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    const-string v13, "*"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10d

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto/16 :goto_1b

    :cond_10d
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_111
    :goto_111
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v12, "Blacklist"

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_111

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_111
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEffectiveAllPackages(Ljava/lang/String;)Ljava/util/List;
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

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_70

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    if-eqz v4, :cond_1b

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_1b

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v6, :cond_1b

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_1b

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_57

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_57

    const-string v6, "ApplicationPermissionControlPolicy"

    const-string v7, "Can\'t apply policy to EDM Admin: "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :cond_57
    const/4 v3, 0x0

    :goto_58
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_1b

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    :cond_70
    return-object v1
.end method

.method private getEffectiveBlacklist(ILjava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_1c

    move-object v6, v7

    :goto_1b
    return-object v6

    :cond_1c
    const-string v6, "Blacklist"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const-string v6, "Whitelist"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    if-eqz v0, :cond_34

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_36

    :cond_34
    move-object v6, v7

    goto :goto_1b

    :cond_36
    if-eqz v5, :cond_46

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4b

    const-string v6, "*"

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4b

    :cond_46
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v6, v1

    goto :goto_1b

    :cond_4b
    const-string v6, "*"

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    move-object v6, v7

    goto :goto_1b

    :cond_55
    const-string v6, "*"

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6f

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getEffectiveAllPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_72

    const-string v6, "ApplicationPermissionControlPolicy"

    const-string v8, "getEffectiveBlacklist: returns null"

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    goto :goto_1b

    :cond_6f
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_72
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_96

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7c
    :goto_7c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_96

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_7c

    :cond_96
    move-object v6, v1

    goto :goto_1b
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getPackagesFromPermissionBlackWhiteList(Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppPermissionControlInfo;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_2
    sget-object v10, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    if-eqz v10, :cond_e

    sget-object v10, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_94

    move-result v10

    if-eqz v10, :cond_10

    :cond_e
    :goto_e
    monitor-exit p0

    return-object v3

    :cond_10
    :try_start_10
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getPermissionList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_e

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v10, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2b
    :goto_2b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    new-instance v0, Landroid/app/enterprise/AppPermissionControlInfo;

    invoke-direct {v0}, Landroid/app/enterprise/AppPermissionControlInfo;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/app/enterprise/AppPermissionControlInfo;->adminPackageName:Ljava/lang/String;

    iget-object v10, v0, Landroid/app/enterprise/AppPermissionControlInfo;->adminPackageName:Ljava/lang/String;

    if-eqz v10, :cond_2b

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/app/enterprise/AppPermissionControlInfo;->entries:Ljava/util/List;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v0, Landroid/app/enterprise/AppPermissionControlInfo;->mapEntries:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_58
    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_97

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v10, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    if-eqz v7, :cond_58

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_58

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_58

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_58

    new-instance v10, Ljava/util/TreeSet;

    invoke-direct {v10}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v6, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v6, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_93
    .catchall {:try_start_10 .. :try_end_93} :catchall_94

    goto :goto_58

    :catchall_94
    move-exception v10

    monitor-exit p0

    throw v10

    :cond_97
    :try_start_97
    iget-object v10, v0, Landroid/app/enterprise/AppPermissionControlInfo;->mapEntries:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2b

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_a3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_a6
    .catchall {:try_start_97 .. :try_end_a6} :catchall_94

    move-result v10

    if-eqz v10, :cond_e

    const/4 v3, 0x0

    goto/16 :goto_e
.end method

.method private declared-synchronized getPermissionList()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_42

    goto :goto_2c

    :catchall_42
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_45
    monitor-exit p0

    return-object v1
.end method

.method private declared-synchronized handleAdminAdded(I)V
    .registers 16

    monitor-enter p0

    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v12, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    if-eqz v12, :cond_12

    sget-object v12, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1b

    :cond_12
    const-string v12, "ApplicationPermissionControlPolicy"

    const-string v13, "mAppPermissionControl is null. handleAdminAdded not needed"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_3c

    :cond_19
    :goto_19
    monitor-exit p0

    return-void

    :cond_1b
    :try_start_1b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getPackageNameForUid(I)Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_3c

    move-result-object v1

    const/4 v8, 0x0

    :try_start_20
    iget-object v12, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/16 v13, 0x1000

    invoke-virtual {v12, v1, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_3c
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2b} :catch_3f

    move-result-object v8

    if-eqz v1, :cond_34

    if-eqz v8, :cond_34

    :try_start_30
    iget-object v12, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v12, :cond_4b

    :cond_34
    const-string v12, "ApplicationPermissionControlPolicy"

    const-string v13, "illegal input found. can\'t do handleAdminAdded operation"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_3c

    goto :goto_19

    :catchall_3c
    move-exception v12

    monitor-exit p0

    throw v12

    :catch_3f
    move-exception v2

    :try_start_40
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v12, "ApplicationPermissionControlPolicy"

    const-string v13, "handleAdminAdded failed"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_4b
    iget-object v12, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_55
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v12, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6b
    :goto_6b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_55

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    sget-object v12, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    invoke-interface {v12, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    if-eqz v7, :cond_6b

    const-string v12, "Blacklist"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a5

    const-string v12, "Blacklist"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    const-string v13, "*"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6b

    :cond_a5
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    :cond_a9
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_19

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_bb
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_c7
    .catchall {:try_start_40 .. :try_end_c7} :catchall_3c

    :try_start_c7
    iget-object v12, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v12, v5, v9}, Landroid/content/pm/IPackageManager;->rollbackPermission(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    :try_end_cc
    .catchall {:try_start_c7 .. :try_end_cc} :catchall_3c
    .catch Landroid/os/RemoteException; {:try_start_c7 .. :try_end_cc} :catch_cd

    goto :goto_bb

    :catch_cd
    move-exception v2

    :try_start_ce
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_d1
    .catchall {:try_start_ce .. :try_end_d1} :catchall_3c

    goto :goto_bb
.end method

.method private handleAdminRemoval(I)V
    .registers 3

    const-string v0, "Alllist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->clearBWList(ILjava/lang/String;)V

    return-void
.end method

.method private killApplications(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_16

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_2a

    :cond_16
    const-string v7, "ApplicationPermissionControlPolicy"

    const-string v8, "killApplications failed"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    :cond_1d
    :goto_1d
    return-void

    :catch_1e
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v7, "ApplicationPermissionControlPolicy"

    const-string v8, "killApplications failed"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_2a
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    if-nez v1, :cond_38

    const-string v7, "ApplicationPermissionControlPolicy"

    const-string v8, "IActivityManager is null"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_38
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3c
    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {p1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    :try_start_50
    const-string v7, "ApplicationPermissionControlPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pkgName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "is going to be killed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-interface {v1, v7, v8}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_77} :catch_78

    goto :goto_3c

    :catch_78
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string v7, "ApplicationPermissionControlPolicy"

    const-string v8, "killApplicationProcess failed"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method private reinforceApplicationPermissionControl()V
    .registers 15

    const/4 v6, 0x0

    const-string v12, "ApplicationPermissionControlPolicy"

    const-string v13, "reinforceApplicationPermissionControl"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getPermissionList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_14

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    sget-object v12, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_28
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget-object v12, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    :cond_43
    :goto_43
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_63

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {p0, v12, v7}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getEffectiveBlacklist(ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_43

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_43

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_43

    :cond_63
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_28

    invoke-interface {v8, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    :cond_6d
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_14

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :try_start_92
    iget-object v12, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v12, v5, v9}, Landroid/content/pm/IPackageManager;->revokePermissionEDM(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_97} :catch_98

    goto :goto_7b

    :catch_98
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7b

    :cond_9d
    const-string v12, "ApplicationPermissionControlPolicy"

    const-string v13, "reinforceApplicationPermissionControl done"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14
.end method

.method private declared-synchronized updateAppPermissionControlBW(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->createAdminMap(ILjava/lang/String;)V

    if-eqz p4, :cond_40

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_40

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Whitelist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Blacklist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    const/4 v8, 0x0

    const-string v1, "Blacklist"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-direct/range {p0 .. p4}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getAppPermissionControlBL(ILjava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v8

    :goto_4f
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_53
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->updateAppPermissionControlBWState(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p4, :cond_9a

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "ListType"

    move-object/from16 v0, p5

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "permission"

    invoke-virtual {v7, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "Object"

    invoke-virtual {v7, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "APPLICATION_PERMISSIONCONTROL"

    invoke-virtual {v1, v2, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_91
    .catchall {:try_start_1 .. :try_end_91} :catchall_92

    goto :goto_53

    :catchall_92
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_95
    :try_start_95
    invoke-direct/range {p0 .. p4}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getAppPermissionControlWL(ILjava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v8

    goto :goto_4f

    :cond_9a
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v1, "adminUid"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "permission"

    invoke-virtual {v9, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ListType"

    move-object/from16 v0, p5

    invoke-virtual {v9, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Object"

    invoke-virtual {v9, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "APPLICATION_PERMISSIONCONTROL"

    invoke-virtual {v1, v2, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I
    :try_end_c0
    .catchall {:try_start_95 .. :try_end_c0} :catchall_92

    goto :goto_53

    :cond_c1
    monitor-exit p0

    return-object v8
.end method

.method private updateAppPermissionControlBWState(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 9

    if-eqz p4, :cond_58

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3c

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Whitelist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Blacklist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_57
    :goto_57
    return-void

    :cond_58
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_57

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_57
.end method

.method private declared-synchronized validateRequest(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    monitor-enter p0

    :try_start_2
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    if-nez v6, :cond_9

    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->loadApplicationPermissionControlList()V

    :cond_9
    if-eqz p3, :cond_11

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_31

    move-result v6

    if-eqz v6, :cond_14

    :cond_11
    move-object v5, v7

    :cond_12
    :goto_12
    monitor-exit p0

    return-object v5

    :cond_14
    :try_start_14
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_14 .. :try_end_30} :catchall_31

    goto :goto_1d

    :catchall_31
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_34
    :try_start_34
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3e
    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_4a
    .catchall {:try_start_34 .. :try_end_4a} :catchall_31

    :try_start_4a
    const-string v6, "*"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3e

    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_3e

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_7f

    const-string v6, "ApplicationPermissionControlPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t apply policy to system app: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v7

    goto :goto_12

    :cond_7f
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3e

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3e

    const-string v6, "ApplicationPermissionControlPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t apply policy to EDM Admin: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ab
    .catchall {:try_start_4a .. :try_end_ab} :catchall_31
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4a .. :try_end_ab} :catch_ae

    move-object v5, v7

    goto/16 :goto_12

    :catch_ae
    move-exception v2

    :try_start_af
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_3e

    :cond_b3
    if-nez p4, :cond_140

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_eb

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_eb

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_ee

    :cond_eb
    move-object v5, v7

    goto/16 :goto_12

    :cond_ee
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_140

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f2

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    const-string v8, "*"

    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f2

    const/4 v5, 0x0

    move-object v5, v7

    goto/16 :goto_12

    :cond_140
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_12

    const-string v6, "*"

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    if-eqz p4, :cond_12

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_12

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_12

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_12

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    const-string v7, "*"

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/List;->clear()V
    :try_end_1aa
    .catchall {:try_start_af .. :try_end_1aa} :catchall_31

    goto/16 :goto_12
.end method


# virtual methods
.method public addPackagesToPermissionBlackList(Ljava/lang/String;Ljava/util/List;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->enforceAppPermisionControlPermission()I

    move-result v1

    if-eqz p1, :cond_11

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_11
    move v4, v8

    :goto_12
    return v4

    :cond_13
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v5, "Blacklist"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->validateRequest(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2b

    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "illegal input found. can\'t do the operation"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v8

    goto :goto_12

    :cond_2b
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "illegal input found. can\'t do the operation"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_39
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    const-string v5, "Blacklist"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->updateAppPermissionControlBW(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_50

    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "updateAppPermissionControlBW failed."

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v8

    goto :goto_12

    :cond_50
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "updateAppPermissionControlBW returned empty list."

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_5e
    :try_start_5e
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, v7}, Landroid/content/pm/IPackageManager;->revokePermissionEDM(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_63} :catch_96

    move-result-object v11

    :goto_64
    if-eqz v11, :cond_a5

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a5

    invoke-direct {p0, v11}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->killApplications(Ljava/util/List;)V

    const-string v0, "*"

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    const/4 v8, 0x1

    :cond_78
    :goto_78
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v0, "ApplicationPermissionControlPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPackagesToPermissionBlackList: return:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v8

    goto/16 :goto_12

    :catch_96
    move-exception v6

    const/4 v11, 0x0

    goto :goto_64

    :cond_99
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_78

    const/4 v8, 0x1

    goto :goto_78

    :cond_a5
    const/4 v8, 0x1

    goto :goto_78
.end method

.method public addPackagesToPermissionWhiteList(Ljava/lang/String;Ljava/util/List;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->enforceAppPermisionControlPermission()I

    move-result v1

    if-eqz p1, :cond_11

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_11
    move v4, v8

    :goto_12
    return v4

    :cond_13
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v5, "Whitelist"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->validateRequest(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2b

    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "illegal input found. can\'t do the operation"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v8

    goto :goto_12

    :cond_2b
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "illegal input found. can\'t do the operation"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_39
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    const-string v5, "Whitelist"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->updateAppPermissionControlBW(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_50

    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "updateAppPermissionControlBW failed."

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v8

    goto :goto_12

    :cond_50
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "updateAppPermissionControlBW returned empty list."

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_5e
    :try_start_5e
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, v7}, Landroid/content/pm/IPackageManager;->rollbackPermission(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_63} :catch_6f

    move-result-object v11

    :goto_64
    if-nez v11, :cond_72

    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "updateAppPermissionControlBW null uPkgNameList failed."

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v8

    goto :goto_12

    :catch_6f
    move-exception v6

    const/4 v11, 0x0

    goto :goto_64

    :cond_72
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ae

    invoke-direct {p0, v11}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->killApplications(Ljava/util/List;)V

    const-string v0, "*"

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    const/4 v8, 0x1

    :cond_84
    :goto_84
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v0, "ApplicationPermissionControlPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPackagesToPermissionWhiteList: return:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v8

    goto/16 :goto_12

    :cond_a2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_84

    const/4 v8, 0x1

    goto :goto_84

    :cond_ae
    const/4 v8, 0x1

    goto :goto_84
.end method

.method public clearPackagesFromPermissionBlackList()Z
    .registers 6

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->enforceAppPermisionControlPermission()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const-string v4, "Blacklist"

    invoke-direct {p0, v0, v4}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->clearBWList(ILjava/lang/String;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1
.end method

.method public clearPackagesFromPermissionWhiteList()Z
    .registers 6

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->enforceAppPermisionControlPermission()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const-string v4, "Whitelist"

    invoke-direct {p0, v0, v4}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->clearBWList(ILjava/lang/String;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1
.end method

.method public getApplicationGrantedPermissions(Ljava/lang/String;)Ljava/util/List;
    .registers 7
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

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->enforceAppPermisionControlPermission()I

    if-nez p1, :cond_7

    const/4 v1, 0x0

    :goto_6
    return-object v1

    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v1, 0x0

    :try_start_c
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, p1}, Landroid/content/pm/IPackageManager;->getGrantedPermissions(Ljava/lang/String;)Ljava/util/List;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_16

    move-result-object v1

    :goto_12
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    :catch_16
    move-exception v0

    const/4 v1, 0x0

    goto :goto_12
.end method

.method public getPackagesFromPermissionBlackList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppPermissionControlInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v1, "getAppPermissionAllBlackLists:"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Blacklist"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getPackagesFromPermissionBlackWhiteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromPermissionWhiteList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppPermissionControlInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v1, "getPackagesFromPermissionWhiteList:"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Whitelist"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getPackagesFromPermissionBlackWhiteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPermissionBlockedList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    monitor-enter p0

    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_f

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_a4

    move-result v8

    if-eqz v8, :cond_12

    :cond_f
    move-object v1, v7

    :cond_10
    :goto_10
    monitor-exit p0

    return-object v1

    :cond_12
    :try_start_12
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    if-nez v8, :cond_1f

    const-string v8, "ApplicationPermissionControlPolicy"

    const-string v9, "mAppPermissionControl is null"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    goto :goto_10

    :cond_1f
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_29

    move-object v1, v7

    goto :goto_10

    :cond_29
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2d
    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v7, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v0, 0x1

    :cond_44
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const/4 v0, 0x1

    sget-object v7, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_44

    const-string v7, "Blacklist"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7f

    const-string v7, "Blacklist"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    const-string v8, "*"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_44

    :cond_7f
    const-string v7, "Whitelist"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_44

    const-string v7, "Whitelist"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    const-string v8, "*"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_44

    const/4 v0, 0x0

    :cond_9e
    if-nez v0, :cond_2d

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a3
    .catchall {:try_start_12 .. :try_end_a3} :catchall_a4

    goto :goto_2d

    :catchall_a4
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public declared-synchronized loadApplicationPermissionControlList()V
    .registers 13

    monitor-enter p0

    :try_start_1
    sget-object v10, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_9b

    if-eqz v10, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    sput-object v10, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x3

    new-array v2, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "permission"

    aput-object v11, v2, v10

    const/4 v10, 0x1

    const-string v11, "Object"

    aput-object v11, v2, v10

    const/4 v10, 0x2

    const-string v11, "ListType"

    aput-object v11, v2, v10

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2a
    :goto_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "APPLICATION_PERMISSIONCONTROL"

    invoke-virtual {v10, v11, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_a1

    :goto_49
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_9e

    const-string v10, "Object"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v10, "permission"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v10, "ListType"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-nez v6, :cond_8e

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v10, "Whitelist"

    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v6, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "Blacklist"

    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v6, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8e
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    invoke-interface {v10, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9a
    .catchall {:try_start_7 .. :try_end_9a} :catchall_9b

    goto :goto_49

    :catchall_9b
    move-exception v10

    monitor-exit p0

    throw v10

    :cond_9e
    :try_start_9e
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_a1
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2a

    sget-object v10, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2a

    :cond_b2
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->reinforceApplicationPermissionControl()V
    :try_end_b5
    .catchall {:try_start_9e .. :try_end_b5} :catchall_9b

    goto/16 :goto_5
.end method

.method public onAdminAdded(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->handleAdminAdded(I)V

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->handleAdminRemoval(I)V

    return-void
.end method

.method public removePackagesFromPermissionBlackList(Ljava/lang/String;Ljava/util/List;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->enforceAppPermisionControlPermission()I

    move-result v1

    const/4 v8, 0x0

    if-eqz p1, :cond_11

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_11
    move v0, v8

    :goto_12
    return v0

    :cond_13
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v5, "Blacklist"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->validateRequest(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2b

    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "illegal input found. can\'t do the operation"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    goto :goto_12

    :cond_2b
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "illegal input found. can\'t do the operation"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_12

    :cond_3a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    const-string v5, "Blacklist"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->updateAppPermissionControlBW(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_51

    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "updateAppPermissionControlBW failed."

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    goto :goto_12

    :cond_51
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ab

    :try_start_57
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, v7}, Landroid/content/pm/IPackageManager;->rollbackPermission(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5c} :catch_68

    move-result-object v11

    :goto_5d
    if-nez v11, :cond_6b

    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "illegal input found. can\'t do the operation"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    goto :goto_12

    :catch_68
    move-exception v6

    const/4 v11, 0x0

    goto :goto_5d

    :cond_6b
    if-eqz v11, :cond_76

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    invoke-direct {p0, v11}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->killApplications(Ljava/util/List;)V

    :cond_76
    const-string v0, "*"

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    const/4 v8, 0x1

    :cond_7f
    :goto_7f
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v0, "ApplicationPermissionControlPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removePackagesFromPermissionBlackList: return:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    goto/16 :goto_12

    :cond_9d
    if-eqz v11, :cond_7f

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_7f

    const/4 v8, 0x1

    goto :goto_7f

    :cond_ab
    const/4 v8, 0x1

    goto :goto_7f
.end method

.method public removePackagesFromPermissionWhiteList(Ljava/lang/String;Ljava/util/List;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v12, 0x1

    const/4 v4, 0x0

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->enforceAppPermisionControlPermission()I

    move-result v1

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    if-eqz p1, :cond_16

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    move v0, v8

    :goto_17
    return v0

    :cond_18
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v5, "Whitelist"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->validateRequest(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_30

    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "illegal input found. can\'t do the operation"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    goto :goto_17

    :cond_30
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "illegal input found. can\'t do the operation"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v12

    goto :goto_17

    :cond_3f
    const-string v5, "Whitelist"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->updateAppPermissionControlBW(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_52

    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "updateAppPermissionControlBW failed."

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    goto :goto_17

    :cond_52
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_61

    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "updateAppPermissionControlBW returned empty list."

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v12

    goto :goto_17

    :cond_61
    :try_start_61
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, v7}, Landroid/content/pm/IPackageManager;->revokePermissionEDM(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_66} :catch_72

    move-result-object v11

    :goto_67
    if-nez v11, :cond_75

    const-string v0, "ApplicationPermissionControlPolicy"

    const-string v2, "updateAppPermissionControlBW uPkgNameList failed."

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    goto :goto_17

    :catch_72
    move-exception v6

    const/4 v11, 0x0

    goto :goto_67

    :cond_75
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b1

    invoke-direct {p0, v11}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->killApplications(Ljava/util/List;)V

    const-string v0, "*"

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    const/4 v8, 0x1

    :cond_87
    :goto_87
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v0, "ApplicationPermissionControlPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removePackagesFromPermissionWhiteList: return:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    goto/16 :goto_17

    :cond_a5
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_87

    const/4 v8, 0x1

    goto :goto_87

    :cond_b1
    const/4 v8, 0x1

    goto :goto_87
.end method

.method public systemReady()V
    .registers 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy$1;-><init>(Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
