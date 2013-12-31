.class public Lcom/android/server/enterprise/storage/EdmStorageProviderBase;
.super Ljava/lang/Object;
.source "EdmStorageProviderBase.java"


# static fields
.field protected static final mTAG:Ljava/lang/String; = "EdmStorageProvider"


# instance fields
.field public mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/storage/EdmStorageHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    :try_start_9
    iget-object v2, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v1

    const-string v2, "EdmStorageProvider"

    const-string v3, "Failed to OPEN/CREATE the database"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method public static getAdminLUIDWhereIn(I)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminLUIDWhereIn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAdminUidFromLUID(J)I
    .registers 3

    long-to-int v0, p0

    return v0
.end method

.method public static getContainerIdFromLUID(J)I
    .registers 4

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static translateToAdminLUID(II)J
    .registers 6

    int-to-long v0, p0

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->translateToAdminLUID(JJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public addAdmin(ILjava/lang/String;ZI)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->addAdmin(ILjava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public addContainer(II)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->addContainer(II)Z

    move-result v0

    return v0
.end method

.method public addorUpdateAdmin(ILjava/lang/String;ZI)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->addorUpdateAdmin(ILjava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public canRemoveAdmin(I)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_2
    const-string v3, "ADMIN_INFO"

    const-string v4, "canRemove"

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_b

    move-result v1

    :goto_a
    return v1

    :catch_b
    move-exception v0

    const-string v2, "EdmStorageProvider"

    const-string v3, "Admin not in database, something went wrong"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public executeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAdminLUID(II)J
    .registers 5

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminLUID(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAdminLUidList()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "SELECT adminUid FROM ADMIN WHERE adminUid!=0"

    iget-object v3, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2c

    :cond_11
    :goto_11
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_29
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2c
    return-object v1
.end method

.method public getAdminUidList()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "SELECT adminUid FROM ADMIN_INFO WHERE adminUid!=0"

    iget-object v3, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2c

    :cond_11
    :goto_11
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_29
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2c
    return-object v1
.end method

.method public getBlob(IILjava/lang/String;Ljava/lang/String;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/storage/SettingNotFoundException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-static {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p3, p4, v3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_19

    new-instance v2, Lcom/android/server/enterprise/storage/SettingNotFoundException;

    const-string v3, "Admin data is null"

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_19
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    :cond_24
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method public getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 8

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    :cond_14
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_17
    return-object v1
.end method

.method public getBlobByAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 14

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-static {p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v2

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getBlobByAdminAndField(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBlobList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v2, p2, p1, p3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->select(Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_25

    :cond_e
    :goto_e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_22
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_25
    return-object v1
.end method

.method public getBlobList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    aput-object p2, v0, v4

    iget-object v3, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v3, p1, v0, p3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_29

    :cond_1c
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1c

    :cond_29
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2c
    return-object v2
.end method

.method public getBoolean(IILjava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/storage/SettingNotFoundException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-static {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p3, p4, v5}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1b

    new-instance v2, Lcom/android/server/enterprise/storage/SettingNotFoundException;

    const-string v3, "Admin data is null"

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v2, :cond_2c

    move v1, v2

    :cond_28
    :goto_28
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :cond_2c
    move v1, v3

    goto :goto_28
.end method

.method public getBooleanList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v2, p2, p1, p3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->select(Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2f

    :cond_f
    :goto_f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v3, :cond_2a

    move v2, v3

    :goto_22
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_2a
    move v2, v4

    goto :goto_22

    :cond_2c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2f
    return-object v1
.end method

.method public getComponentNameForUid(I)Landroid/content/ComponentName;
    .registers 6

    const/4 v1, 0x0

    const-string v2, "ADMIN_INFO"

    const-string v3, "adminName"

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    const/4 v1, 0x0

    :goto_c
    return-object v1

    :cond_d
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_c
.end method

.method public getContainerIdList()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "SELECT containerID FROM CONTAINER WHERE containerID!=0"

    iget-object v3, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2c

    :cond_11
    :goto_11
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_29
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2c
    return-object v1
.end method

.method public getContainerIdList(I)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT containerID FROM CONTAINER WHERE adminUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3d

    :cond_22
    :goto_22
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_3a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3d
    return-object v1
.end method

.method public getContainerOwnerUid(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getContainerOwnerUid(I)I

    move-result v0

    return v0
.end method

.method public getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-static {p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getCursorByAdmin(Ljava/lang/String;J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getCursorByAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14

    if-nez p5, :cond_d

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-static {p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2, p6}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getCursorByAdmin(Ljava/lang/String;J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-static {p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v2

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getCursorByAdminAndField(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_c
.end method

.method public getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getGenericValue(ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->selectGenericTable(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_14
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_17
    return-object v1
.end method

.method public getInt(IILjava/lang/String;Ljava/lang/String;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/storage/SettingNotFoundException;
        }
    .end annotation

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-static {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p3, p4, v3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_19

    new-instance v2, Lcom/android/server/enterprise/storage/SettingNotFoundException;

    const-string v3, "Admin data is null"

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_19
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    :cond_24
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1
.end method

.method public getIntByAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 14

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-static {p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v2

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getIntByAdminAndField(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIntList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v2, p2, p1, p3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->select(Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_29

    :cond_e
    :goto_e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_26
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_29
    return-object v1
.end method

.method public getIntList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_29

    :cond_e
    :goto_e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_26
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_29
    return-object v1
.end method

.method public getLogicalAdminUidList()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    const-string v3, "ADMIN"

    const-string v4, "adminUid"

    const-string v5, ""

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2f

    :cond_14
    :goto_14
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_2c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2f
    return-object v1
.end method

.method public getLongList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v2, p2, p1, p3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->select(Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_29

    :cond_e
    :goto_e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_26
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_29
    return-object v1
.end method

.method public getLongList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_29

    :cond_e
    :goto_e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_26
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_29
    return-object v1
.end method

.method public getMinInt(ILjava/lang/String;Ljava/lang/String;)I
    .registers 10

    const/4 v3, -0x1

    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_17

    invoke-static {v1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_18

    move-result v3

    :cond_17
    :goto_17
    return v3

    :catch_18
    move-exception v0

    const-string v4, "EdmStorageProvider"

    const-string v5, "Failed on getMinInt"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method

.method public getPackageNameForUid(I)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    const/4 v3, -0x1

    const-string v4, "PlatformSoftwareVersion"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->selectGenericTable(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_17
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1a
    return-object v1
.end method

.method public getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-static {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p3, p4, v3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1f
    return-object v1
.end method

.method public getString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v2, p2, p3, p4, p5}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_14
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_17
    return-object v1
.end method

.method public getStringByAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-static {p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v2

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getStringByAdminAndField(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringList(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->select(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getStringList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v2, p2, p1, p3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->select(Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_25

    :cond_e
    :goto_e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_22
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_25
    return-object v1
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .registers 5

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getValues(IILjava/lang/String;[Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 8

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-static {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1, p4}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getValues(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getValuesList(ILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0, p2, p1, p3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getValuesList(Ljava/lang/String;I[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValuesList(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getValuesList(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValuesListBiggerThan(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getValuesListBiggerThan(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handleFirmwareUpgrade()V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    iget-object v2, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->doTablesCreationOrUpdate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    const-string v1, "EdmStorageProvider"

    const-string v2, "handleUpgrade EX:"

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->insertData(Ljava/lang/String;Landroid/content/ContentValues;)Z

    return-void
.end method

.method public insertValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)I
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->insertValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public isAdminActive(I)Z
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_1a

    const/4 v2, 0x1

    :cond_19
    return v2

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z
    .registers 10

    iget-object v1, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-static {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    if-eqz p5, :cond_16

    const/4 v0, 0x1

    :goto_d
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p3, v2, p4, v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->insertOrUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public putGenericValue(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->insertOrUpdateGenericTable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public putInt(IILjava/lang/String;Ljava/lang/String;I)Z
    .registers 9

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-static {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p3, v1, p4, v2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->insertOrUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public putLong(IILjava/lang/String;Ljava/lang/String;J)Z
    .registers 10

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-static {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p3, v1, p4, v2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->insertOrUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-static {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1, p4, p5}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->insertOrUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z
    .registers 8

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-static {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1, p4}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->putValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public putValuesForAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 14

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-static {p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v2

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->putValuesForAdminAndField(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->remove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeAdminFromDatabase(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->removeAdmin(I)Z

    move-result v0

    return v0
.end method

.method public removeByAdmin(Ljava/lang/String;II)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-static {p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->removeByAdmin(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public removeByAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z
    .registers 12

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-static {p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v2

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->removeByAdminAndField(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeByFields(Ljava/lang/String;ILjava/util/HashMap;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->removeByFields(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result v0

    return v0
.end method

.method public removeByFilterSmallerThan(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->removeByFilterSmallerThan(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public removeContainer(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->removeContainer(I)Z

    move-result v0

    return v0
.end method

.method public setPlatformVersion(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    const/4 v1, -0x1

    const-string v2, "PlatformSoftwareVersion"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->insertOrUpdateGenericTable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I

    move-result v0

    return v0
.end method

.method public updateContainerOwnerUid(II)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->updateContainerOwnerUid(II)Z

    move-result v0

    return v0
.end method
