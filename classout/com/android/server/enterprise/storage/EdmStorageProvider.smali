.class public Lcom/android/server/enterprise/storage/EdmStorageProvider;
.super Lcom/android/server/enterprise/storage/EdmStorageProviderBase;
.source "EdmStorageProvider.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getBlob(ILjava/lang/String;Ljava/lang/String;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/storage/SettingNotFoundException;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBlob(IILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBlobByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 13

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-super/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBlobByAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBlobList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-super {p0, v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBlobList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/storage/SettingNotFoundException;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-super {p0, v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getBooleanList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
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

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_36

    :cond_f
    :goto_f
    :try_start_f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_33

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v3, :cond_31

    move v2, v3

    :goto_24
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_2c

    goto :goto_f

    :catchall_2c
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_31
    move v2, v4

    goto :goto_24

    :cond_33
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_36
    return-object v1
.end method

.method public getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5

    const/4 v0, -0x1

    invoke-super {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getCursorByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-super/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursorByAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
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

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getGenericValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    invoke-super {p0, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInt(ILjava/lang/String;Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/storage/SettingNotFoundException;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 13

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-super/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntByAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-super {p0, v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getIntList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
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

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getLongList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-super {p0, v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getLongList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getLongList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
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

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getLongList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMinInt(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const/4 v0, -0x1

    invoke-super {p0, v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMinInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v1, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-super/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-super/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getStringByAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringList(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
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

    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-super/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getStringList(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-super {p0, v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getStringList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getValues(ILjava/lang/String;[Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 5

    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(IILjava/lang/String;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const/4 v0, -0x1

    invoke-super {p0, v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesList(ILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

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

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

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

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListBiggerThan(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public insertValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)I
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insertValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    .registers 11

    const/4 v2, -0x1

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-super/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, -0x1

    invoke-super {p0, v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValue(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    .registers 11

    const/4 v2, -0x1

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-super/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public putLong(ILjava/lang/String;Ljava/lang/String;J)Z
    .registers 13

    const/4 v2, -0x1

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-super/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putLong(IILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const/4 v2, -0x1

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-super/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z
    .registers 5

    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 13

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-super/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValuesForAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->remove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeByAdmin(Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, -0x1

    invoke-super {p0, p1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeByAdmin(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-super/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeByAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->removeByFields(Ljava/lang/String;ILjava/util/HashMap;)I

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

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I

    move-result v0

    return v0
.end method
