.class public Lcom/android/server/enterprise/general/MiscPolicy;
.super Landroid/app/enterprise/IMiscPolicy$Stub;
.source "MiscPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/general/MiscPolicy$1;,
        Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;,
        Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;
    }
.end annotation


# static fields
.field private static final FONT_NOTSUPPORT_PACKAGE:Ljava/lang/String; = "com.monotype.android.font.droidserifitalic"

.field private static final FONT_PACKAGE:Ljava/lang/String; = "com.monotype.android.font."

.field private static final SBROWSER_BOOKMARKS_URI:Landroid/net/Uri; = null

.field private static final SBROWSER_PROJECTION:[Ljava/lang/String; = null

.field private static final SBROWSER_PROJECTION_ID_INDEX:I = 0x0

.field private static final SETTINGS_APP_PKGNAME:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "MiscPolicy"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mFontSizes:[F

.field private mSIMInfo:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

.field private mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "content://com.sec.android.app.sbrowser.operatorbookmarks/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/general/MiscPolicy;->SBROWSER_BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "favicon"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "editable"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/enterprise/general/MiscPolicy;->SBROWSER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/enterprise/IMiscPolicy$Stub;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;-><init>(Lcom/android/server/enterprise/general/MiscPolicy;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSIMInfo:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    return-void
.end method

.method private GetSystemFontChanger()Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    if-nez v0, :cond_c

    new-instance v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;-><init>(Lcom/android/server/enterprise/general/MiscPolicy;Lcom/android/server/enterprise/general/MiscPolicy$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addBookmark(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 22

    const/4 v13, 0x0

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v9, 0x0

    sget-object v1, Lcom/android/server/enterprise/general/MiscPolicy;->SBROWSER_BOOKMARKS_URI:Landroid/net/Uri;

    :try_start_1b
    const-string v15, "title"

    move-object/from16 v0, p2

    invoke-virtual {v11, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "url"

    move-object/from16 v0, p1

    invoke-virtual {v11, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "editable"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v3, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    if-eqz v12, :cond_5f

    const-string v15, "MiscPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "result "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_1b .. :try_end_58} :catchall_1b7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_58} :catch_63
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_58} :catch_183

    const/4 v15, 0x1

    if-eqz v6, :cond_5e

    :goto_5b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5e
    :goto_5e
    return v15

    :cond_5f
    const/4 v15, 0x0

    if-eqz v6, :cond_5e

    goto :goto_5b

    :catch_63
    move-exception v8

    :try_start_64
    const-string v15, "MiscPolicy"

    const-string v16, "Sbrowser provider error - url unknown"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v15, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v3, v0, v1, v15}, Lcom/android/server/enterprise/general/MiscPolicy;->getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_85

    const-string v15, "MiscPolicy"

    const-string v16, "No provider found!!!"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    if-eqz v6, :cond_5e

    goto :goto_5b

    :cond_85
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_101

    const/4 v15, 0x4

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    if-nez v15, :cond_101

    const-string v15, "created"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v15, "title"

    move-object/from16 v0, p2

    invoke-virtual {v11, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "bookmark"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v15, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v15, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_cf

    const-string v15, "thumbnail"

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/general/MiscPolicy;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v15, "touch_icon"

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/general/MiscPolicy;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_cf
    const-string v15, "MiscPolicy"

    const-string v16, "Updating bookmark into database "

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "_id = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v1, v11, v15, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_f8
    .catchall {:try_start_64 .. :try_end_f8} :catchall_1b7
    .catch Ljava/lang/IllegalStateException; {:try_start_64 .. :try_end_f8} :catch_183

    :goto_f8
    const/4 v13, 0x1

    if-eqz v6, :cond_fe

    :goto_fb
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_fe
    move v15, v13

    goto/16 :goto_5e

    :cond_101
    :try_start_101
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v10, 0x0

    :goto_106
    if-ge v10, v2, :cond_118

    invoke-interface {v6, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v15, 0x5

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1a5

    :cond_118
    const-string v15, "title"

    move-object/from16 v0, p2

    invoke-virtual {v11, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "url"

    move-object/from16 v0, p1

    invoke-virtual {v11, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "created"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v15, "bookmark"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v15, "date"

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v15, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v15, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15e

    const-string v15, "thumbnail"

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/general/MiscPolicy;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_15e
    const/4 v14, 0x0

    if-lez v2, :cond_166

    const/4 v15, 0x2

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    :cond_166
    if-nez v2, :cond_1a9

    if-nez v9, :cond_1a9

    const-string v15, "visits"

    add-int/lit8 v16, v14, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_177
    const-string v15, "MiscPolicy"

    const-string v16, "Inserting bookmark into database "

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_181
    .catchall {:try_start_101 .. :try_end_181} :catchall_1b7
    .catch Ljava/lang/IllegalStateException; {:try_start_101 .. :try_end_181} :catch_183

    goto/16 :goto_f8

    :catch_183
    move-exception v7

    :try_start_184
    const-string v15, "MiscPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "addBookmark"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a0
    .catchall {:try_start_184 .. :try_end_1a0} :catchall_1b7

    const/4 v13, 0x0

    if-eqz v6, :cond_fe

    goto/16 :goto_fb

    :cond_1a5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_106

    :cond_1a9
    :try_start_1a9
    const-string v15, "visits"

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1b6
    .catchall {:try_start_1a9 .. :try_end_1b6} :catchall_1b7
    .catch Ljava/lang/IllegalStateException; {:try_start_1a9 .. :try_end_1b6} :catch_183

    goto :goto_177

    :catchall_1b7
    move-exception v15

    if-eqz v6, :cond_1bd

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1bd
    throw v15
.end method

.method private static final addOrUrlEquals(Ljava/lang/StringBuilder;)V
    .registers 2

    const-string v0, " OR url = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static bitmapToBytes(Landroid/graphics/Bitmap;)[B
    .registers 4

    if-nez p0, :cond_4

    const/4 v1, 0x0

    :goto_3
    return-object v1

    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_3
.end method

.method private enforceSecurityPermission()I
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private floatToIndex(F)I
    .registers 9

    const/4 v2, -0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    const/4 v5, 0x0

    aget v1, v4, v5

    const/4 v0, 0x1

    :goto_8
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    array-length v4, v4

    if-ge v0, v4, :cond_22

    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    aget v3, v4, v0

    sub-float v4, v3, v1

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    add-float/2addr v4, v1

    cmpg-float v4, p1, v4

    if-gez v4, :cond_1e

    add-int/lit8 v4, v0, -0x1

    :goto_1d
    return v4

    :cond_1e
    move v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_22
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    array-length v4, v4

    add-int/lit8 v2, v4, -0x1

    const-string v4, "MiscPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "floatToIndex(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    goto :goto_1d
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private static final getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v6, p1

    const-string v0, "http://"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    const/4 v0, 0x7

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :cond_10
    :goto_10
    const-string v0, "www."

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :cond_1d
    const/4 v8, 0x0

    if-eqz v7, :cond_73

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, "url = "

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/android/server/enterprise/general/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_56
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_63
    const-string v0, "https://"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    goto :goto_10

    :cond_73
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, "url = "

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v6}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/android/server/enterprise/general/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/android/server/enterprise/general/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/android/server/enterprise/general/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_56
.end method

.method private isAdminLockScreenStringSet()I
    .registers 8

    const/4 v6, 0x1

    const/4 v4, 0x2

    :try_start_2
    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "adminUid"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "lockscreenstring"

    aput-object v5, v0, v4

    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "MISC"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v4, "lockscreenstring"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_1a

    const-string v4, "adminUid"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3f} :catch_41

    move-result v4

    :goto_40
    return v4

    :catch_41
    move-exception v4

    :cond_42
    const/4 v4, -0x1

    goto :goto_40
.end method

.method private isRingToneEntryExist(Ljava/lang/String;Landroid/net/Uri;)J
    .registers 13

    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "MiscPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRingToneEntryExist : whereClause :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_59

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_59

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_82
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_58} :catch_78

    move-result-wide v8

    :cond_59
    if-eqz v7, :cond_5f

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :goto_5e
    const/4 v7, 0x0

    :cond_5f
    const-string v0, "MiscPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRingToneEntryExist : return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v8

    :catch_78
    move-exception v6

    :try_start_79
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_82

    if-eqz v7, :cond_5f

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_5e

    :catchall_82
    move-exception v0

    if-eqz v7, :cond_89

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_89
    throw v0
.end method

.method private readFile(Ljava/lang/String;)[B
    .registers 15

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_a0

    :try_start_8
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_9d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_a2

    if-eqz v5, :cond_83

    :try_start_f
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v10, 0x7fffffff

    cmp-long v10, v6, v10

    if-lez v10, :cond_47

    new-instance v10, Ljava/io/IOException;

    const-string v11, "The file is too big"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_79
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_22} :catch_22

    :catch_22
    move-exception v1

    move-object v4, v5

    move-object v2, v3

    :goto_25
    :try_start_25
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_9b

    if-eqz v4, :cond_2e

    :try_start_2a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_90

    const/4 v4, 0x0

    :cond_2e
    :goto_2e
    const-string v10, "MiscPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "readFile returns "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_47
    long-to-int v10, v6

    :try_start_48
    new-array v0, v10, [B

    const/4 v9, 0x0

    const/4 v8, 0x0

    :goto_4c
    array-length v10, v0

    if-ge v9, v10, :cond_59

    array-length v10, v0

    sub-int/2addr v10, v9

    invoke-virtual {v5, v0, v9, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    if-ltz v8, :cond_59

    add-int/2addr v9, v8

    goto :goto_4c

    :cond_59
    array-length v10, v0

    if-ge v9, v10, :cond_83

    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The file was not completely read: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_79
    .catchall {:try_start_48 .. :try_end_79} :catchall_79
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_79} :catch_22

    :catchall_79
    move-exception v10

    move-object v4, v5

    move-object v2, v3

    :goto_7c
    if-eqz v4, :cond_82

    :try_start_7e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_8b

    const/4 v4, 0x0

    :cond_82
    :goto_82
    throw v10

    :cond_83
    if-eqz v5, :cond_99

    :try_start_85
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_88} :catch_95

    const/4 v4, 0x0

    :goto_89
    move-object v2, v3

    goto :goto_2e

    :catch_8b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_82

    :catch_90
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2e

    :catch_95
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_99
    move-object v4, v5

    goto :goto_89

    :catchall_9b
    move-exception v10

    goto :goto_7c

    :catchall_9d
    move-exception v10

    move-object v2, v3

    goto :goto_7c

    :catch_a0
    move-exception v1

    goto :goto_25

    :catch_a2
    move-exception v1

    move-object v2, v3

    goto :goto_25
.end method

.method private removeFromBookmarks(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 18

    const/4 v6, 0x0

    const/4 v11, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/general/MiscPolicy;->SBROWSER_BOOKMARKS_URI:Landroid/net/Uri;

    :try_start_a
    const-string v2, "url = ? AND title = ? "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_cc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_18} :catch_24
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_18} :catch_ab

    move-result v12

    if-lez v12, :cond_22

    const/4 v2, 0x1

    :goto_1c
    if-eqz v6, :cond_21

    :goto_1e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_21
    :goto_21
    return v2

    :cond_22
    const/4 v2, 0x0

    goto :goto_1c

    :catch_24
    move-exception v8

    :try_start_25
    const-string v2, "MiscPolicy"

    const-string v3, "Sbrowser provider error - url unknown"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v3, "url = ? AND title = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_4d

    const-string v2, "MiscPolicy"

    const-string v3, "No provider found!!!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz v6, :cond_21

    goto :goto_1e

    :cond_4d
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-nez v9, :cond_61

    const-string v2, "MiscPolicy"

    const-string v3, "Empty cursor - leaving removebookmark"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_25 .. :try_end_5a} :catchall_cc
    .catch Ljava/lang/IllegalStateException; {:try_start_25 .. :try_end_5a} :catch_ab

    if-eqz v6, :cond_5f

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5f
    move v2, v11

    goto :goto_21

    :cond_61
    const/4 v2, 0x0

    :try_start_62
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-nez v10, :cond_86

    const-string v2, "MiscPolicy"

    const-string v3, "Deleting bookmark"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v13, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_62 .. :try_end_7e} :catchall_cc
    .catch Ljava/lang/IllegalStateException; {:try_start_62 .. :try_end_7e} :catch_ab

    :goto_7e
    const/4 v11, 0x1

    if-eqz v6, :cond_84

    :goto_81
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_84
    move v2, v11

    goto :goto_21

    :cond_86
    :try_start_86
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "bookmark"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_95
    .catchall {:try_start_86 .. :try_end_95} :catchall_cc
    .catch Ljava/lang/IllegalStateException; {:try_start_86 .. :try_end_95} :catch_ab

    :try_start_95
    const-string v2, "MiscPolicy"

    const-string v3, "Updating database - remove bookmark"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v13, v14, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_95 .. :try_end_a1} :catchall_cc
    .catch Ljava/lang/IllegalStateException; {:try_start_95 .. :try_end_a1} :catch_a2

    goto :goto_7e

    :catch_a2
    move-exception v7

    :try_start_a3
    const-string v2, "removeFromBookmarks"

    const-string v3, "no database!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_aa
    .catchall {:try_start_a3 .. :try_end_aa} :catchall_cc
    .catch Ljava/lang/IllegalStateException; {:try_start_a3 .. :try_end_aa} :catch_ab

    goto :goto_7e

    :catch_ab
    move-exception v7

    :try_start_ac
    const-string v2, "MiscPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeFromBookmarks"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c8
    .catchall {:try_start_ac .. :try_end_c8} :catchall_cc

    const/4 v11, 0x0

    if-eqz v6, :cond_84

    goto :goto_81

    :catchall_cc
    move-exception v2

    if-eqz v6, :cond_d2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_d2
    throw v2
.end method

.method private retrieveSystemFontSizes()V
    .registers 10

    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    if-eqz v6, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v5, 0x0

    :try_start_6
    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v7, "com.android.settings"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_22

    const-string v6, "MiscPolicy"

    const-string v7, "retrieveSystemFontSizes(): Setting Context is null"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_18} :catch_19

    goto :goto_4

    :catch_19
    move-exception v1

    const-string v6, "MiscPolicy"

    const-string v7, "retrieveSystemFontSizes() fail: "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_22
    :try_start_22
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "entryvalues_font_size"

    const-string v7, "array"

    const-string v8, "com.android.settings"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4b

    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "retrieveSystemFontSizes() resourceID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4b
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v6, v2

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    const/4 v3, 0x0

    :goto_55
    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    array-length v6, v6

    if-ge v3, v6, :cond_4

    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    aget-object v7, v2, v3

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aput v7, v6, v3
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_64} :catch_19

    add-int/lit8 v3, v3, 0x1

    goto :goto_55
.end method

.method private updateDatabase(Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    const/4 v12, 0x1

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    :try_start_e
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v7}, Lcom/android/server/enterprise/general/MiscPolicy;->isRingToneEntryExist(Ljava/lang/String;Landroid/net/Uri;)J

    move-result-wide v4

    const-string v8, "MiscPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ringtone id :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, -0x1

    cmp-long v8, v8, v4

    if-eqz v8, :cond_5b

    const-string v8, "MiscPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ringtone entry exist deleting it :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v7, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_5b
    const-string v8, "MiscPolicy"

    const-string v9, "Ringtone creating new one"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "_data"

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "title"

    const-string v9, "IT Admin tone"

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_size"

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "mime_type"

    const-string v9, "audio/*"

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "artist"

    const-string v9, "artist"

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "is_ringtone"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v8, "is_notification"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v8, "is_alarm"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v8, "is_music"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v8, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v7, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_c3} :catch_d3

    move-result-object v7

    :goto_c4
    if-eqz v7, :cond_d2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v8, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-static {v8, v12, v7}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_d2
    return-void

    :catch_d3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c4
.end method


# virtual methods
.method public addClipboardData(Landroid/content/ClipData;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public addClipboardTextData(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public addWebBookmarkBitmap(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 5

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceSecurityPermission()I

    if-eqz p1, :cond_7

    if-nez p2, :cond_9

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/enterprise/general/MiscPolicy;->addBookmark(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    goto :goto_8
.end method

.method public addWebBookmarkByteBuffer(Landroid/net/Uri;Ljava/lang/String;[B)Z
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceSecurityPermission()I

    const/4 v0, 0x0

    if-eqz p3, :cond_f

    array-length v2, p3

    if-lez v2, :cond_f

    array-length v2, p3

    invoke-static {p3, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_f
    if-eqz p1, :cond_13

    if-nez p2, :cond_14

    :cond_13
    :goto_13
    return v1

    :cond_14
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->addBookmark(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v1

    goto :goto_13
.end method

.method public changeLockScreenString(Ljava/lang/String;)Z
    .registers 13

    const/16 v8, 0x100

    const/4 v10, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceSecurityPermission()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->isAdminLockScreenStringSet()I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_18

    if-eq v1, v0, :cond_18

    :goto_17
    return v6

    :cond_18
    if-eqz p1, :cond_20

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-gez v7, :cond_23

    :cond_20
    const/4 v3, 0x1

    const-string p1, ""

    :cond_23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v8, :cond_47

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v7, "MiscPolicy"

    const-string v8, "changeLockScreenString():lock screen text is truncated "

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    if-nez v3, :cond_a5

    const-string v7, "MiscPolicy"

    const-string v8, "changeLockScreenString(): apply restriction"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "MISC"

    const-string v9, "lockscreenstring"

    invoke-virtual {v7, v0, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7d

    iget-object v7, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_screen_owner_info_enabled"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_screen_owner_info"

    invoke-static {v7, v8, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v7, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "my_profile_enabled"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_7d
    :goto_7d
    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeLockScreenString():ret:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v2

    goto/16 :goto_17

    :cond_a5
    const-string v7, "MiscPolicy"

    const-string v8, "changeLockScreenString(): revoke restriction"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "MISC"

    const-string v9, "lockscreenstring"

    invoke-virtual {v7, v0, v8, v9, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_owner_info"

    invoke-static {v6, v7, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_7d
.end method

.method public clearClipboardData()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public deleteWebBookmark(Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceSecurityPermission()I

    if-nez p1, :cond_7

    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->removeFromBookmarks(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_6
.end method

.method public getClipboardData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ClipData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getClipboardTextData()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentLockScreenString()Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->isAdminLockScreenStringSet()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1b

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_owner_info"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1b
    return-object v1
.end method

.method public getLastSimChangeInfo()Landroid/app/enterprise/SimChangeInfo;
    .registers 7

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceSecurityPermission()I

    :try_start_3
    new-instance v1, Landroid/app/enterprise/SimChangeInfo;

    invoke-direct {v1}, Landroid/app/enterprise/SimChangeInfo;-><init>()V

    const-string v3, "SimChangeTime"

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_14

    const-string v2, "-1"

    :cond_14
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Landroid/app/enterprise/SimChangeInfo;->changeTime:J

    new-instance v3, Landroid/app/enterprise/SimInfo;

    invoke-direct {v3}, Landroid/app/enterprise/SimInfo;-><init>()V

    iput-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    iget-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v4, "PreviousSimCountryIso"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/enterprise/SimInfo;->countryIso:Ljava/lang/String;

    iget-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v4, "PreviousSimOperatorName"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/enterprise/SimInfo;->operatorName:Ljava/lang/String;

    iget-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v4, "PreviousSimOperator"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/enterprise/SimInfo;->operator:Ljava/lang/String;

    iget-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v4, "PreviousSimPhoneNumber"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/enterprise/SimInfo;->phoneNumber:Ljava/lang/String;

    iget-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v4, "PreviousSimSerialNumber"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/enterprise/SimInfo;->serialNumber:Ljava/lang/String;

    const-string v3, "SimChangeOperation"

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_69

    const-string v2, "-1"

    :cond_69
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/enterprise/SimChangeInfo;->changeOperation:I

    new-instance v3, Landroid/app/enterprise/SimInfo;

    invoke-direct {v3}, Landroid/app/enterprise/SimInfo;-><init>()V

    iput-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    iget-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v4, "CurrentSimCountryIso"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/enterprise/SimInfo;->countryIso:Ljava/lang/String;

    iget-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v4, "CurrentSimOperatorName"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/enterprise/SimInfo;->operatorName:Ljava/lang/String;

    iget-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v4, "CurrentSimOperator"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/enterprise/SimInfo;->operator:Ljava/lang/String;

    iget-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v4, "CurrentSimPhoneNumber"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/enterprise/SimInfo;->phoneNumber:Ljava/lang/String;

    iget-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v4, "CurrentSimSerialNumber"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/enterprise/SimInfo;->serialNumber:Ljava/lang/String;
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b2} :catch_b3

    :goto_b2
    return-object v1

    :catch_b3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Landroid/app/enterprise/SimChangeInfo;

    invoke-direct {v1}, Landroid/app/enterprise/SimChangeInfo;-><init>()V

    goto :goto_b2
.end method

.method public getSystemActiveFont()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->GetSystemFontChanger()Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getSystemActiveFont()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemActiveFontSize()F
    .registers 8

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    const/4 v4, 0x0

    iput v4, v0, Landroid/content/res/Configuration;->fontScale:F

    :try_start_8
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->retrieveSystemFontSizes()V

    iget v4, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/general/MiscPolicy;->floatToIndex(F)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "font_size"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_36

    const/4 v4, 0x4

    if-ne v2, v4, :cond_36

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    aget v4, v4, v3

    iput v4, v0, Landroid/content/res/Configuration;->fontScale:F

    :cond_36
    const-string v4, "MiscPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSystemActiveFontSize(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_50} :catch_53

    :goto_50
    iget v4, v0, Landroid/content/res/Configuration;->fontScale:F

    return v4

    :catch_53
    move-exception v1

    const-string v4, "MiscPolicy"

    const-string v5, "getSystemActiveFontSize(): Unable to read font size"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50
.end method

.method public getSystemFontSizes()[F
    .registers 2

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->retrieveSystemFontSizes()V

    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    return-object v0
.end method

.method public getSystemFonts()[Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->GetSystemFontChanger()Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getSystemFonts()[Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .registers 5

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->isAdminLockScreenStringSet()I

    move-result v0

    if-ne v0, p1, :cond_13

    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_owner_info"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_13
    return-void
.end method

.method public setRingerBytes([BLjava/lang/String;)V
    .registers 12

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v5

    const-string v6, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v5, v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_11

    :try_start_c
    array-length v5, p1

    if-lez v5, :cond_11

    if-nez p2, :cond_1e

    :cond_11
    const-string v5, "MiscPolicy"

    const-string v6, "setRingerBytes: Invalid parameter(s)"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_76
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_52

    if-eqz v2, :cond_1d

    :try_start_1a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_97

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    :try_start_1e
    const-string v4, "/data/system/custom.ogg"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2e
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_76
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_33} :catch_52

    :try_start_33
    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1ff

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->updateDatabase(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_33 .. :try_end_4b} :catchall_c8
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_4b} :catch_cb

    if-eqz v3, :cond_50

    :try_start_4d
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_ae

    :cond_50
    :goto_50
    move-object v2, v3

    goto :goto_1d

    :catch_52
    move-exception v0

    :goto_53
    :try_start_53
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_76

    if-eqz v2, :cond_1d

    :try_start_58
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_1d

    :catch_5c
    move-exception v0

    const-string v5, "MiscPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setRingerBytes EX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_72
    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :catchall_76
    move-exception v5

    :goto_77
    if-eqz v2, :cond_7c

    :try_start_79
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    :cond_7c
    :goto_7c
    throw v5

    :catch_7d
    move-exception v0

    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setRingerBytes EX: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7c

    :catch_97
    move-exception v0

    const-string v5, "MiscPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setRingerBytes EX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_72

    :catch_ae
    move-exception v0

    const-string v5, "MiscPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setRingerBytes EX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50

    :catchall_c8
    move-exception v5

    move-object v2, v3

    goto :goto_77

    :catch_cb
    move-exception v0

    move-object v2, v3

    goto :goto_53
.end method

.method public setRingerFilePath(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    if-eqz p1, :cond_d

    if-nez p2, :cond_15

    :cond_d
    const-string v1, "MiscPolicy"

    const-string v2, "setRingerFilePath param null"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_14
    return-void

    :cond_15
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_2d

    const-string v1, "MiscPolicy"

    const-string v2, "setRingerFilePath file read successfully: "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->setRingerBytes([BLjava/lang/String;)V

    :goto_25
    const-string v1, "MiscPolicy"

    const-string v2, "setRingerFilePath : ringtone return "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_2d
    const-string v1, "MiscPolicy"

    const-string v2, "setRingerFilePath file reading failed "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25
.end method

.method public setSystemActiveFont(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceSecurityPermission()I

    if-eqz p2, :cond_7

    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->GetSystemFontChanger()Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->setSystemActiveFont(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_6
.end method

.method public setSystemActiveFontSize(F)Z
    .registers 14

    const/4 v8, 0x0

    const/4 v11, 0x4

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceSecurityPermission()I

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->retrieveSystemFontSizes()V

    iget-object v9, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    if-nez v9, :cond_e

    :goto_d
    return v8

    :cond_e
    iget-object v9, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "font_size"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->floatToIndex(F)I

    move-result v4

    if-ne v1, v4, :cond_29

    const-string v8, "MiscPolicy"

    const-string v9, "setSystemActiveFontSize(): same font size"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v5

    goto :goto_d

    :cond_29
    iget-object v9, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "font_size"

    invoke-static {v9, v10, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    if-ge v1, v11, :cond_a4

    if-ne v4, v11, :cond_a4

    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "large_font"

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4e
    :goto_4e
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iget-object v8, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    aget v8, v8, v4

    iput v8, v0, Landroid/content/res/Configuration;->fontScale:F

    iget-object v8, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    aget v8, v8, v4

    const/high16 v9, 0x3fc0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_88

    iget-object v8, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    add-int/lit8 v9, v4, -0x1

    aget v8, v8, v9

    iput v8, v0, Landroid/content/res/Configuration;->fontScale:F

    const-string v8, "MiscPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setSystemActiveFontSize : Extra large font. fontScale changed to : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_88
    :try_start_88
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-interface {v8, v0}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    iget-object v8, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "font_size"

    invoke-static {v8, v9, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_a1} :catch_ba

    :goto_a1
    move v8, v5

    goto/16 :goto_d

    :cond_a4
    if-ne v1, v11, :cond_4e

    if-ge v4, v11, :cond_4e

    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "large_font"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_4e

    :catch_ba
    move-exception v2

    const-string v8, "MiscPolicy"

    const-string v9, "setSystemActiveFontSize(): Unable to set font size"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_a1
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method
