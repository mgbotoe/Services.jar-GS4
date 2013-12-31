.class Lcom/android/server/enterprise/email/SettingsUtils;
.super Ljava/lang/Object;
.source "SettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/SettingsUtils$PasswordIntentFieldName;
    }
.end annotation


# static fields
.field private static final ACCOUNTCB_CONTENT_URI:Landroid/net/Uri; = null

.field private static final ACCOUNTS_DB:Ljava/lang/String; = "/data/system/users/0/accounts.db"

.field private static final ACCOUNTS_DBNAME:Ljava/lang/String; = "accounts.db"

.field private static final ACCOUNT_CONTENT_URI:Landroid/net/Uri; = null

.field static final ACTION_EAS_INTENT:Ljava/lang/String; = "com.android.email.EXCHANGE_INTENT"

.field static final ACTION_EMAIL_ACCOUNT_DELETED:Ljava/lang/String; = "com.android.email.ACCOUNT_DELETED"

.field static final ACTION_EMAIL_CREATE_ACCOUNT_FROM_MDM:Ljava/lang/String; = "android.intent.action.sec.CREATE_ACCOUNT_FROM_MDM"

.field static final ACTION_EMAIL_DELETE_ACCOUNT_FROM_MDM:Ljava/lang/String; = "android.intent.action.sec.DELETE_ACCOUNT_FROM_MDM"

.field static final ACTION_EMAIL_DELETE_NOT_VALIDATED_ACCOUNT_FROM_MDM:Ljava/lang/String; = "android.intent.action.sec.DELETE_NOT_VALIDATED_ACCOUNT_FROM_MDM"

.field static final ACTION_EMAIL_DEVICEID_RESULT:Ljava/lang/String; = "android.intent.action.enterprise.GET_DEVICEID"

.field static final ACTION_EMAIL_ENABLE_MSG_COMPOSE:Ljava/lang/String; = "com.android.email.ENABLE_MESSAGECOMPOSE"

.field static final ACTION_EMAIL_GET_ACCOUNT_PASSWORDS_TO_MDM:Ljava/lang/String; = "android.intent.action.sec.GET_ACCOUNT_PASSWORDS_TO_MDM"

.field static final ACTION_EMAIL_GET_DEVICEID:Ljava/lang/String; = "com.android.email.GET_DEVICEID"

.field static final ACTION_EMAIL_INSTALL_CERT:Ljava/lang/String; = "com.android.email.INSTALL_CERTIFICATE"

.field static final ACTION_EMAIL_MDM_ACCOUNT_PASSWORDS_RESULT:Ljava/lang/String; = "android.intent.action.sec.MDM_ACCOUNT_PASSWORDS_RESULT"

.field static final ACTION_EMAIL_RENAME_CERTIFICATE:Ljava/lang/String; = "com.android.email.RENAME_CERTIFICATE"

.field static final ACTION_EMAIL_SIGNATURE_UPDATED:Ljava/lang/String; = "com.android.email.SIGNATURE_UPDATED"

.field static final ACTION_EMAIL_UPDATE_ACCOUNT_FROM_MDM:Ljava/lang/String; = "android.intent.action.sec.UPDATE_ACCOUNT_FROM_MDM"

.field static final ACTION_EMAIL_UPDATE_ACCOUNT_PASSWORDS_FROM_MDM:Ljava/lang/String; = "android.intent.action.sec.UPDATE_ACCOUNT_PASSWORDS_FROM_MDM"

.field public static final EAS_PKG_NAME:Ljava/lang/String; = "com.android.exchange"

.field public static final EMAIL_PKG_NAME:Ljava/lang/String; = "com.android.email"

.field static final EMAIL_PROVIDER_PERMISSION:Ljava/lang/String; = "com.android.email.permission.ACCESS_PROVIDER"

.field private static final HOST_AUTH_CONTENT_URI:Landroid/net/Uri; = null

.field static final MDM_EMAIL_PERMISSION:Ljava/lang/String; = "android.permission.sec.MDM_EMAIL"

.field private static final SYSTEM_DIR:Ljava/lang/String; = "/data/system/users/0/"

.field private static final TAG:Ljava/lang/String; = "SettingsUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.android.email.provider/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.email.provider/hostauth"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.email.provider/accountcb"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNTCB_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized addorUpdateAccount(ILcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)J
    .registers 24

    const-class v19, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v19

    const-wide/16 v13, -0x1

    const-wide/16 v15, -0x1

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    :try_start_b
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    move/from16 v0, p0

    invoke-static {v5, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v4, v5, v10, v0, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->insertAccountsTableRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v15

    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v17

    const-wide/16 v4, -0x1

    cmp-long v4, v4, v15

    if-eqz v4, :cond_67

    const/4 v4, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->insertHostAuthTableRow(Landroid/net/Uri;Lcom/android/server/enterprise/email/AccountMetaData;ZZLandroid/content/Context;)J

    move-result-wide v6

    const-wide/16 v4, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4f

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->insertHostAuthTableRow(Landroid/net/Uri;Lcom/android/server/enterprise/email/AccountMetaData;ZZLandroid/content/Context;)J

    move-result-wide v8

    :cond_4f
    const-wide/16 v4, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_67

    const-wide/16 v4, -0x1

    cmp-long v4, v4, v8

    if-eqz v4, :cond_67

    move/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    invoke-static/range {v4 .. v11}, Lcom/android/server/enterprise/email/SettingsUtils;->insertAccountTableRow(ILcom/android/server/enterprise/email/AccountMetaData;JJZLandroid/content/Context;)J

    move-result-wide v13

    :cond_67
    const-wide/16 v4, -0x1

    cmp-long v4, v4, v13

    if-nez v4, :cond_9e

    if-eqz p2, :cond_9c

    const-string v4, "SettingsUtils"

    const-string v5, "addorUpdateAccount : Starting redundant data cleanup... if any...!!!"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, -0x1

    cmp-long v4, v4, v15

    if-eqz v4, :cond_82

    move-wide v0, v15

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteAccountsTableRow(JLandroid/content/Context;)Z

    :cond_82
    const-wide/16 v4, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8f

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-static {v0, v6, v7, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteHostAuthTableRow(Landroid/net/Uri;JLandroid/content/Context;)Z

    :cond_8f
    const-wide/16 v4, -0x1

    cmp-long v4, v4, v8

    if-eqz v4, :cond_9c

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-static {v0, v8, v9, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteHostAuthTableRow(Landroid/net/Uri;JLandroid/content/Context;)Z
    :try_end_9c
    .catchall {:try_start_b .. :try_end_9c} :catchall_f2

    :cond_9c
    :goto_9c
    monitor-exit v19

    return-wide v13

    :cond_9e
    if-eqz p2, :cond_9c

    :try_start_a0
    new-instance v18, Landroid/content/Intent;

    const-string v4, "com.android.email.ENABLE_MESSAGECOMPOSE"

    move/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v12, Landroid/accounts/Account;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    move/from16 v0, p0

    invoke-static {v5, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v12, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".provider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v12, v4, v5}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    if-eqz v4, :cond_9c

    move/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v13, v14, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->setAsDefaultAccount(IJLandroid/content/Context;)Z
    :try_end_f1
    .catchall {:try_start_a0 .. :try_end_f1} :catchall_f2

    goto :goto_9c

    :catchall_f2
    move-exception v4

    monitor-exit v19

    throw v4
.end method

.method static declared-synchronized deleteAccount(IJLandroid/content/Context;)Z
    .registers 18

    const-class v13, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v13

    const/4 v12, 0x0

    const-wide/16 v3, 0x1

    cmp-long v3, v3, p1

    if-lez v3, :cond_14

    :try_start_a
    const-string v3, "SettingsUtils"

    const-string v4, "deleteAccount : accountId is invalid"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_7e

    const/4 v3, 0x0

    :goto_12
    monitor-exit v13

    return v3

    :cond_14
    const/4 v9, 0x0

    const/4 v11, 0x0

    :try_start_16
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_7e

    move-result-object v2

    const/4 v6, 0x0

    move-wide v3, p1

    move-object/from16 v5, p3

    move v7, p0

    :try_start_23
    invoke-static/range {v1 .. v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccount(Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZI)Lcom/android/server/enterprise/email/AccountMetaData;
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_7e
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_79

    move-result-object v9

    if-eqz v9, :cond_70

    :cond_29
    :try_start_29
    iget-object v3, v9, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    iget-boolean v4, v9, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    invoke-static {v4, p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountsDBRowId(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v3

    move-object/from16 v0, p3

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteAccountsTableRow(JLandroid/content/Context;)Z

    iget-wide v3, v9, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    move-object/from16 v0, p3

    invoke-static {v1, v3, v4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteHostAuthTableRow(Landroid/net/Uri;JLandroid/content/Context;)Z

    iget-wide v3, v9, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    move-object/from16 v0, p3

    invoke-static {v1, v3, v4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteHostAuthTableRow(Landroid/net/Uri;JLandroid/content/Context;)Z

    iget v3, v9, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    int-to-long v3, v3

    move-object/from16 v0, p3

    invoke-static {p0, v3, v4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteAccountTableRow(IJLandroid/content/Context;)Z
    :try_end_52
    .catchall {:try_start_29 .. :try_end_52} :catchall_7e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_52} :catch_74

    move-result v11

    :goto_53
    add-int/lit8 v12, v12, 0x1

    if-eqz v11, :cond_9b

    :try_start_57
    iget-boolean v3, v9, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v3, :cond_81

    iget-object v3, v9, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    iget-object v4, v9, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    iget-object v5, v9, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iget-object v6, v9, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v8, p3

    invoke-static/range {v1 .. v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide p1

    :goto_6a
    const-wide/16 v3, -0x1

    cmp-long v3, v3, p1

    if-nez v3, :cond_90

    :cond_70
    :goto_70
    if-lez v12, :cond_9e

    const/4 v3, 0x1

    goto :goto_12

    :catch_74
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_78
    .catchall {:try_start_57 .. :try_end_78} :catchall_7e
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_78} :catch_79

    goto :goto_53

    :catch_79
    move-exception v10

    :try_start_7a
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_7e

    goto :goto_70

    :catchall_7e
    move-exception v3

    monitor-exit v13

    throw v3

    :cond_81
    const/4 v3, 0x0

    :try_start_82
    iget-object v4, v9, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    iget-object v5, v9, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iget-object v6, v9, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v8, p3

    invoke-static/range {v1 .. v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide p1

    goto :goto_6a

    :cond_90
    const/4 v6, 0x0

    move-wide v3, p1

    move-object/from16 v5, p3

    move v7, p0

    invoke-static/range {v1 .. v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccount(Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZI)Lcom/android/server/enterprise/email/AccountMetaData;
    :try_end_98
    .catchall {:try_start_82 .. :try_end_98} :catchall_7e
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_98} :catch_79

    move-result-object v9

    if-eqz v9, :cond_70

    :cond_9b
    if-nez v11, :cond_29

    goto :goto_70

    :cond_9e
    const/4 v3, 0x0

    goto/16 :goto_12
.end method

.method static deleteAccountTableRow(IJLandroid/content/Context;)Z
    .registers 11

    const/4 v3, 0x0

    const/4 v1, -0x1

    const-wide/16 v4, 0x1

    cmp-long v4, v4, p1

    if-lez v4, :cond_10

    const-string v4, "SettingsUtils"

    const-string v5, "deleteAccountTableRow : rowId is invalid"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_f
    return v3

    :cond_10
    :try_start_10
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const-string v4, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteAccountTableRow : deleted rowCount from Account : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3a} :catch_3e

    :goto_3a
    if-lez v1, :cond_f

    const/4 v3, 0x1

    goto :goto_f

    :catch_3e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3a
.end method

.method private static deleteAccountsTableRow(JLandroid/content/Context;)Z
    .registers 12

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v0, 0x0

    const-wide/16 v6, 0x1

    cmp-long v6, v6, p0

    if-lez v6, :cond_12

    const-string v4, "SettingsUtils"

    const-string v5, "deleteAccountsTableRow : rowId is invalid"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_11
    return v3

    :cond_12
    :try_start_12
    const-string v6, "/data/system/users/0/accounts.db"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v6, "accounts"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_60

    :goto_36
    const-string v6, "SettingsUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteAccountsTableRow - deleted row Id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_12 .. :try_end_4e} :catchall_78
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_4e} :catch_62

    if-eqz v0, :cond_53

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_53
    cmp-long v6, p0, v4

    if-eqz v6, :cond_5a

    :goto_57
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->updateAccountManagerCache()V

    :cond_5a
    cmp-long v4, v4, p0

    if-eqz v4, :cond_11

    const/4 v3, 0x1

    goto :goto_11

    :cond_60
    move-wide p0, v4

    goto :goto_36

    :catch_62
    move-exception v1

    const-wide/16 p0, -0x1

    :try_start_65
    const-string v6, "SettingsUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_78

    if-eqz v0, :cond_73

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_73
    cmp-long v6, p0, v4

    if-eqz v6, :cond_5a

    goto :goto_57

    :catchall_78
    move-exception v3

    if-eqz v0, :cond_7e

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7e
    cmp-long v4, p0, v4

    if-eqz v4, :cond_85

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->updateAccountManagerCache()V

    :cond_85
    throw v3
.end method

.method private static deleteHostAuthTableRow(Landroid/net/Uri;JLandroid/content/Context;)Z
    .registers 11

    const/4 v3, 0x0

    const/4 v1, -0x1

    const-wide/16 v4, 0x1

    cmp-long v4, v4, p1

    if-lez v4, :cond_10

    const-string v4, "SettingsUtils"

    const-string v5, "deleteHostAuthTableRow : rowId is invalid"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_f
    return v3

    :cond_10
    :try_start_10
    invoke-static {p0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const-string v4, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteHostAuthTableRow : deleted rowCount from HostAuth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_36} :catch_3a

    :goto_36
    if-lez v1, :cond_f

    const/4 v3, 0x1

    goto :goto_f

    :catch_3a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36
.end method

.method private static getAccount(Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZI)Lcom/android/server/enterprise/email/AccountMetaData;
    .registers 27

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v4, 0x14

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "displayName"

    aput-object v5, v6, v4

    const/4 v4, 0x2

    const-string v5, "emailAddress"

    aput-object v5, v6, v4

    const/4 v4, 0x3

    const-string v5, "syncLookback"

    aput-object v5, v6, v4

    const/4 v4, 0x4

    const-string v5, "syncInterval"

    aput-object v5, v6, v4

    const/4 v4, 0x5

    const-string v5, "peakDays"

    aput-object v5, v6, v4

    const/4 v4, 0x6

    const-string v5, "peakStartMinute"

    aput-object v5, v6, v4

    const/4 v4, 0x7

    const-string v5, "peakEndMinute"

    aput-object v5, v6, v4

    const/16 v4, 0x8

    const-string v5, "peakSchedule"

    aput-object v5, v6, v4

    const/16 v4, 0x9

    const-string v5, "offPeakSchedule"

    aput-object v5, v6, v4

    const/16 v4, 0xa

    const-string v5, "roamingSchedule"

    aput-object v5, v6, v4

    const/16 v4, 0xb

    const-string v5, "hostAuthKeyRecv"

    aput-object v5, v6, v4

    const/16 v4, 0xc

    const-string v5, "hostAuthKeySend"

    aput-object v5, v6, v4

    const/16 v4, 0xd

    const-string v5, "flags"

    aput-object v5, v6, v4

    const/16 v4, 0xe

    const-string v5, "isDefault"

    aput-object v5, v6, v4

    const/16 v4, 0xf

    const-string v5, "compatibilityUuid"

    aput-object v5, v6, v4

    const/16 v4, 0x10

    const-string v5, "senderName"

    aput-object v5, v6, v4

    const/16 v4, 0x11

    const-string v5, "ringtoneUri"

    aput-object v5, v6, v4

    const/16 v4, 0x12

    const-string v5, "protocolVersion"

    aput-object v5, v6, v4

    const/16 v4, 0x13

    const-string v5, "signature"

    aput-object v5, v6, v4

    :try_start_76
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    const-string v4, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAccount row count : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_24c

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v10, Lcom/android/server/enterprise/email/AccountMetaData;

    invoke-direct {v10}, Lcom/android/server/enterprise/email/AccountMetaData;-><init>()V
    :try_end_c1
    .catchall {:try_start_76 .. :try_end_c1} :catchall_240
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_c1} :catch_238

    :try_start_c1
    const-string v4, "_id"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    const-string v4, "displayName"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    const-string v4, "emailAddress"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const-string v4, "syncLookback"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    const-string v4, "syncInterval"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    const-string v4, "peakDays"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    const-string v4, "peakStartMinute"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    const-string v4, "peakEndMinute"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    const-string v4, "peakSchedule"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    const-string v4, "offPeakSchedule"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    const-string v4, "roamingSchedule"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    const-string v4, "hostAuthKeyRecv"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    const-string v4, "hostAuthKeySend"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    const-string v4, "flags"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    const/4 v4, 0x2

    iget v5, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    and-int/lit8 v5, v5, 0x2

    if-ne v4, v5, :cond_1ec

    const/4 v4, 0x1

    :goto_171
    iput-boolean v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    const/16 v4, 0x40

    iget v5, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    and-int/lit8 v5, v5, 0x40

    if-ne v4, v5, :cond_1ee

    const/4 v4, 0x1

    :goto_17c
    iput-boolean v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    const-string v4, "isDefault"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1f0

    const/4 v4, 0x1

    :goto_18c
    iput-boolean v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    const-string v4, "compatibilityUuid"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    const-string v4, "senderName"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    const-string v4, "ringtoneUri"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    const-string v4, "protocolVersion"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    const-string v4, "signature"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    iget-wide v8, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    const/4 v11, 0x1

    move-object/from16 v7, p0

    move-object/from16 v12, p4

    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/email/SettingsUtils;->loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z

    move-result v18

    iget-wide v8, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    const/4 v11, 0x0

    move-object/from16 v7, p0

    move-object/from16 v12, p4

    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/email/SettingsUtils;->loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z
    :try_end_1df
    .catchall {:try_start_c1 .. :try_end_1df} :catchall_248
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_1df} :catch_24a

    move-result v19

    if-eqz v18, :cond_1e4

    if-nez v19, :cond_1f2

    :cond_1e4
    const/4 v10, 0x0

    if-eqz v14, :cond_1ea

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_1ea
    move-object v13, v10

    :goto_1eb
    return-object v13

    :cond_1ec
    const/4 v4, 0x0

    goto :goto_171

    :cond_1ee
    const/4 v4, 0x0

    goto :goto_17c

    :cond_1f0
    const/4 v4, 0x0

    goto :goto_18c

    :cond_1f2
    if-eqz p5, :cond_208

    :try_start_1f4
    move/from16 v0, p6

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getPassword(IJLandroid/content/Context;)[Ljava/lang/String;

    move-result-object v16

    const/4 v4, 0x0

    aget-object v4, v16, v4

    iput-object v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v4, v16, v4

    iput-object v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    :cond_208
    const/4 v4, 0x0

    iput-boolean v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    iget-object v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const-string v5, "eas"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_231

    iget-object v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasDomainAndUserFromLogin(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    const/4 v4, 0x1

    iput-boolean v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    const/4 v4, 0x0

    aget-object v4, v17, v4

    iput-object v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v4, v17, v4

    iput-object v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v4, v17, v4

    iput-object v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    iget v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    iput v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I
    :try_end_231
    .catchall {:try_start_1f4 .. :try_end_231} :catchall_248
    .catch Ljava/lang/Exception; {:try_start_1f4 .. :try_end_231} :catch_24a

    :cond_231
    :goto_231
    if-eqz v14, :cond_236

    :goto_233
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_236
    move-object v13, v10

    goto :goto_1eb

    :catch_238
    move-exception v15

    move-object v10, v13

    :goto_23a
    :try_start_23a
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_23d
    .catchall {:try_start_23a .. :try_end_23d} :catchall_248

    if-eqz v14, :cond_236

    goto :goto_233

    :catchall_240
    move-exception v4

    move-object v10, v13

    :goto_242
    if-eqz v14, :cond_247

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_247
    throw v4

    :catchall_248
    move-exception v4

    goto :goto_242

    :catch_24a
    move-exception v15

    goto :goto_23a

    :cond_24c
    move-object v10, v13

    goto :goto_231
.end method

.method private static getAccountCBContentUri(I)Landroid/net/Uri;
    .registers 3

    if-nez p0, :cond_5

    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNTCB_CONTENT_URI:Landroid/net/Uri;

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".provider/accountcb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_4
.end method

.method private static getAccountContentUri(I)Landroid/net/Uri;
    .registers 3

    if-gtz p0, :cond_5

    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".provider/account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_4
.end method

.method static declared-synchronized getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;
    .registers 12

    const-class v7, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v7

    :try_start_3
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v1

    const/4 v5, 0x0

    move-wide v2, p1

    move-object v4, p3

    move v6, p0

    invoke-static/range {v0 .. v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccount(Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZI)Lcom/android/server/enterprise/email/AccountMetaData;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_15

    move-result-object v2

    monitor-exit v7

    return-object v2

    :catchall_15
    move-exception v2

    monitor-exit v7

    throw v2
.end method

.method static declared-synchronized getAccountDetails(IJLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;
    .registers 13

    const-class v7, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v7

    :try_start_3
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v1

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p0

    invoke-static/range {v0 .. v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccount(Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZI)Lcom/android/server/enterprise/email/AccountMetaData;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_15

    move-result-object v2

    monitor-exit v7

    return-object v2

    :catchall_15
    move-exception v2

    monitor-exit v7

    throw v2
.end method

.method static declared-synchronized getAccountId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    .registers 16

    const-class v8, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v8

    :try_start_3
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_17

    move-result-wide v2

    monitor-exit v8

    return-wide v2

    :catchall_17
    move-exception v2

    monitor-exit v8

    throw v2
.end method

.method private static getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    .registers 23

    const-wide/16 v7, -0x1

    const/4 v11, 0x0

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    if-eqz p3, :cond_19

    if-eqz p4, :cond_19

    if-nez p5, :cond_22

    :cond_19
    const-string v1, "SettingsUtils"

    const-string v2, "getAccountId : Error :: Invalid input parameters."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v9, v7

    :goto_21
    return-wide v9

    :cond_22
    if-eqz p6, :cond_41

    if-eqz p2, :cond_41

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_41
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p5, v5, v1

    const/4 v1, 0x1

    aput-object p4, v5, v1

    const/4 v1, 0x2

    aput-object p3, v5, v1

    const-wide/16 v13, -0x1

    :try_start_57
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "protocol=? AND address=? AND login=? "

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    const-string v1, "SettingsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccountId for HOST_AUTH row count : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_90

    const-string v1, "_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_8e
    .catchall {:try_start_57 .. :try_end_8e} :catchall_fe
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_8e} :catch_f7

    move-result v1

    int-to-long v13, v1

    :cond_90
    if-eqz v11, :cond_95

    :goto_92
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_95
    const/4 v11, 0x0

    const-wide/16 v1, -0x1

    cmp-long v1, v1, v13

    if-eqz v1, :cond_f4

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    :try_start_b5
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "hostAuthKeyRecv=? OR hostAuthKeySend=? "

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    const-string v1, "SettingsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccountId for ACCOUNT row count : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_ef

    const-string v1, "_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_ed
    .catchall {:try_start_b5 .. :try_end_ed} :catchall_10c
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_ed} :catch_105

    move-result v1

    int-to-long v7, v1

    :cond_ef
    if-eqz v11, :cond_f4

    :goto_f1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_f4
    move-wide v9, v7

    goto/16 :goto_21

    :catch_f7
    move-exception v12

    :try_start_f8
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_fb
    .catchall {:try_start_f8 .. :try_end_fb} :catchall_fe

    if-eqz v11, :cond_95

    goto :goto_92

    :catchall_fe
    move-exception v1

    if-eqz v11, :cond_104

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_104
    throw v1

    :catch_105
    move-exception v12

    :try_start_106
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_109
    .catchall {:try_start_106 .. :try_end_109} :catchall_10c

    if-eqz v11, :cond_f4

    goto :goto_f1

    :catchall_10c
    move-exception v1

    if-eqz v11, :cond_112

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_112
    throw v1
.end method

.method static declared-synchronized getAccountIds(ILandroid/content/Context;)[J
    .registers 15

    const-class v12, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v12

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x1

    :try_start_6
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_67

    :try_start_d
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Accounts row count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v7, :cond_6a

    const/4 v9, 0x0

    new-array v11, v7, [J

    move v10, v9

    :goto_3e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    add-int/lit8 v9, v10, 0x1

    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    aput-wide v0, v11, v10
    :try_end_53
    .catchall {:try_start_d .. :try_end_53} :catchall_60
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_53} :catch_55

    move v10, v9

    goto :goto_3e

    :catch_55
    move-exception v8

    :try_start_56
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_60

    if-eqz v6, :cond_5e

    :try_start_5b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_67

    :cond_5e
    :goto_5e
    monitor-exit v12

    return-object v11

    :catchall_60
    move-exception v0

    if-eqz v6, :cond_66

    :try_start_63
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_66
    throw v0
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_67

    :catchall_67
    move-exception v0

    monitor-exit v12

    throw v0

    :cond_6a
    if-eqz v6, :cond_5e

    :try_start_6c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_67

    goto :goto_5e
.end method

.method private static getAccountType(ZI)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_7

    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private static getAccountsDBRowId(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J
    .registers 13

    const/4 v0, 0x0

    const/4 v3, 0x0

    const-wide/16 v5, -0x1

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_aa

    :try_start_e
    const-string v7, "/data/system/users/0/accounts.db"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-wide/16 v1, -0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT rowid FROM accounts WHERE name = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p1, :cond_8d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\' AND type = \'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_3c
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_63

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    if-eqz v3, :cond_62

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_62
    const/4 v3, 0x0

    :cond_63
    const-wide/16 v7, -0x1

    cmp-long v7, v7, v1

    if-eqz v7, :cond_82

    move-wide v5, v1

    const-string v7, "SettingsUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAccountsDBRowId - Found row Id : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_e .. :try_end_82} :catchall_9e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_82} :catch_90

    :cond_82
    if-eqz v3, :cond_87

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_87
    if-eqz v0, :cond_8c

    :goto_89
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8c
    :goto_8c
    return-wide v5

    :cond_8d
    :try_start_8d
    const-string v7, ""
    :try_end_8f
    .catchall {:try_start_8d .. :try_end_8f} :catchall_9e
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_8f} :catch_90

    goto :goto_3c

    :catch_90
    move-exception v4

    const-wide/16 v5, -0x1

    :try_start_93
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_9e

    if-eqz v3, :cond_9b

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_9b
    if-eqz v0, :cond_8c

    goto :goto_89

    :catchall_9e
    move-exception v7

    if-eqz v3, :cond_a4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_a4
    if-eqz v0, :cond_a9

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_a9
    throw v7

    :cond_aa
    const-string v7, "SettingsUtils"

    const-string v8, "getAccountsDBRowId : Error :: Invalid input parameters."

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8c
.end method

.method static declared-synchronized getCBAAlias(IJLandroid/content/Context;)Ljava/lang/String;
    .registers 14

    const-class v9, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x2

    :try_start_6
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "cbaCertificateAlias"

    aput-object v1, v2, v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_73

    :try_start_12
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccount row count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_62

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "cbaCertificateAlias"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_61
    .catchall {:try_start_12 .. :try_end_61} :catchall_76
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_61} :catch_69

    move-result-object v6

    :cond_62
    if-eqz v7, :cond_67

    :try_start_64
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_73

    :cond_67
    :goto_67
    monitor-exit v9

    return-object v6

    :catch_69
    move-exception v8

    :try_start_6a
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_76

    if-eqz v7, :cond_67

    :try_start_6f
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_73

    goto :goto_67

    :catchall_73
    move-exception v0

    monitor-exit v9

    throw v0

    :catchall_76
    move-exception v0

    if-eqz v7, :cond_7c

    :try_start_79
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7c
    throw v0
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_73
.end method

.method public static getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    if-gtz p0, :cond_3

    :goto_2
    return-object p1

    :cond_3
    invoke-static {p0, p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <<<<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_2
.end method

.method public static getContainerizedString(ILjava/lang/String;)Ljava/lang/String;
    .registers 2

    if-gez p0, :cond_3

    :goto_2
    return-object p1

    :cond_3
    invoke-static {p0, p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method private static getEasDomainAndUserFromLogin(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v4

    aput-object v2, v0, v3

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3a

    const-string v2, "\\"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_47

    const-string v2, "\\"

    invoke-static {v2}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3a

    array-length v2, v1

    if-lez v2, :cond_3a

    array-length v2, v1

    if-ne v5, v2, :cond_3b

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    :cond_3a
    :goto_3a
    return-object v0

    :cond_3b
    array-length v2, v1

    if-ne v3, v2, :cond_3a

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    goto :goto_3a

    :cond_47
    aput-object p0, v0, v3

    goto :goto_3a
.end method

.method public static getEasPackageName(I)Ljava/lang/String;
    .registers 2

    if-gtz p0, :cond_5

    const-string v0, "com.android.exchange"

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "com.android.exchange"

    invoke-static {p0, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static getEmailPackageName(I)Ljava/lang/String;
    .registers 2

    if-gtz p0, :cond_5

    const-string v0, "com.android.email"

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "com.android.email"

    invoke-static {p0, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private static getHostAuthContentUri(I)Landroid/net/Uri;
    .registers 3

    if-nez p0, :cond_5

    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".provider/hostauth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_4
.end method

.method private static getHostAuthFlags(IZZZLandroid/content/Context;)I
    .registers 9

    const/4 v3, 0x1

    move v0, p0

    if-ne v3, p1, :cond_f

    or-int/lit8 v0, v0, 0x1

    :cond_6
    :goto_6
    if-ne v3, p2, :cond_16

    or-int/lit8 v0, v0, 0x2

    :cond_a
    :goto_a
    if-ne v3, p3, :cond_1e

    or-int/lit8 v0, v0, 0x8

    :cond_e
    :goto_e
    return v0

    :cond_f
    and-int/lit8 v1, v0, 0x1

    if-ne v3, v1, :cond_6

    xor-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_16
    const/4 v1, 0x2

    and-int/lit8 v2, v0, 0x2

    if-ne v1, v2, :cond_a

    xor-int/lit8 v0, v0, 0x2

    goto :goto_a

    :cond_1e
    const/16 v1, 0x8

    and-int/lit8 v2, v0, 0x8

    if-ne v1, v2, :cond_e

    xor-int/lit8 v0, v0, 0x8

    goto :goto_e
.end method

.method public static getPackageName(ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-static {p0, p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <<<<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static getPassword(IJLandroid/content/Context;)[Ljava/lang/String;
    .registers 11

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.sec.MDM_ACCOUNT_PASSWORDS_RESULT"

    invoke-static {p0, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    new-instance v3, Lcom/android/server/enterprise/email/SettingsUtils$1;

    invoke-direct {v3, v4, v0}, Lcom/android/server/enterprise/email/SettingsUtils$1;-><init>([Ljava/lang/String;Landroid/os/ConditionVariable;)V

    invoke-virtual {p3, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.sec.GET_ACCOUNT_PASSWORDS_TO_MDM"

    invoke-static {p0, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "account_id"

    invoke-virtual {v2, v5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v5, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {p3, v2, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-wide/16 v5, 0x2710

    invoke-virtual {v0, v5, v6}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v5

    if-eqz v5, :cond_43

    const-string v5, "SettingsUtils"

    const-string v6, "password obtained"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3f
    invoke-virtual {p3, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-object v4

    :cond_43
    const-string v5, "SettingsUtils"

    const-string v6, "timeout while obtaining password"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f
.end method

.method static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v1

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_10

    move-result v2

    if-lez v2, :cond_3

    move-object v1, p0

    goto :goto_3

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private static insertAccountTableRow(ILcom/android/server/enterprise/email/AccountMetaData;JJZLandroid/content/Context;)J
    .registers 24

    const-wide/16 v8, -0x1

    const/4 v3, 0x0

    if-eqz p6, :cond_1c3

    const/4 v10, 0x0

    :goto_6
    const/4 v6, 0x0

    if-eqz p6, :cond_1c9

    const-string v6, "content://settings/system/notification_sound"

    const/4 v10, 0x1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_14
    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    if-ne v13, v14, :cond_1d7

    or-int/lit8 v10, v10, 0x2

    :cond_1d
    :goto_1d
    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    if-ne v13, v14, :cond_1e0

    or-int/lit8 v10, v10, 0x40

    :cond_26
    :goto_26
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    if-eqz v13, :cond_1ea

    const-string v13, "displayName"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3a
    const-string v13, "emailAddress"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "syncLookback"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "syncInterval"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "peakDays"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "peakStartMinute"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "peakEndMinute"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "peakSchedule"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "offPeakSchedule"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "roamingSchedule"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "hostAuthKeyRecv"

    move-wide/from16 v0, p2

    long-to-int v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "hostAuthKeySend"

    move-wide/from16 v0, p4

    long-to-int v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "flags"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v14, "isDefault"

    if-eqz p6, :cond_1f3

    const/4 v13, 0x0

    :goto_d1
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "compatibilityUuid"

    invoke-virtual {v11, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    if-eqz v13, :cond_1ff

    const-string v13, "senderName"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_ec
    const-string v13, "ringtoneUri"

    invoke-virtual {v11, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    if-eqz v13, :cond_100

    const-string v13, "protocolVersion"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_100
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    if-eqz v13, :cond_208

    const-string v13, "signature"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "isSignatureEdited"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_119
    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v2

    if-eqz p6, :cond_21d

    :try_start_11f
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-virtual {v13, v2, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_12a} :catch_216

    move-result-wide v8

    :try_start_12b
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_130} :catch_211

    :try_start_130
    const-string v13, "accountKey"

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "sevenAccountKey"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "timeLimit"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "sizeLimit"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "typeMsg"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "peakTime"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "offPeakTime"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "days"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "peakStartTime"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "peakEndTime"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "whileRoaming"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "attachmentEnabled"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountCBContentUri(I)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1a9
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_1a9} :catch_248

    move-object v11, v12

    :goto_1aa
    :try_start_1aa
    const-string v13, "SettingsUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "insertAccountTableRow row Id : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_1aa .. :try_end_1c2} :catch_216

    :goto_1c2
    return-wide v8

    :cond_1c3
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    goto/16 :goto_6

    :cond_1c9
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    goto/16 :goto_14

    :cond_1d7
    const/4 v13, 0x2

    and-int/lit8 v14, v10, 0x2

    if-ne v13, v14, :cond_1d

    xor-int/lit8 v10, v10, 0x2

    goto/16 :goto_1d

    :cond_1e0
    const/16 v13, 0x40

    and-int/lit8 v14, v10, 0x40

    if-ne v13, v14, :cond_26

    xor-int/lit8 v10, v10, 0x40

    goto/16 :goto_26

    :cond_1ea
    const-string v13, "displayName"

    const-string v14, " "

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3a

    :cond_1f3
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    if-eqz v13, :cond_1fc

    const/4 v13, 0x1

    goto/16 :goto_d1

    :cond_1fc
    const/4 v13, 0x0

    goto/16 :goto_d1

    :cond_1ff
    const-string v13, "senderName"

    const-string v14, " "

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ec

    :cond_208
    const-string v13, "signature"

    const-string v14, " "

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_119

    :catch_211
    move-exception v4

    :goto_212
    :try_start_212
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_215
    .catch Ljava/lang/Exception; {:try_start_212 .. :try_end_215} :catch_216

    goto :goto_1aa

    :catch_216
    move-exception v4

    const-wide/16 v8, -0x1

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c2

    :cond_21d
    :try_start_21d
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_id = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v2, v11, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_246

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I
    :try_end_243
    .catch Ljava/lang/Exception; {:try_start_21d .. :try_end_243} :catch_216

    :goto_243
    int-to-long v8, v13

    goto/16 :goto_1aa

    :cond_246
    const/4 v13, -0x1

    goto :goto_243

    :catch_248
    move-exception v4

    move-object v11, v12

    goto :goto_212
.end method

.method private static insertAccountsTableRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    .registers 16

    const/4 v0, 0x0

    const-wide/16 v5, -0x1

    :try_start_3
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "name"

    invoke-virtual {v7, v8, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "type"

    invoke-virtual {v7, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_19

    const-string v8, "password"

    invoke-virtual {v7, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    const-string v8, "/data/system/users/0/accounts.db"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz p3, :cond_52

    const-string v8, "accounts"

    const-string v9, "doesn\'t exist at all"

    invoke-virtual {v0, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    :cond_2b
    :goto_2b
    const-string v8, "SettingsUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insertAccountsTableRow row Id : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_95
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_43} :catch_7d

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_48
    const-wide/16 v8, -0x1

    cmp-long v8, v5, v8

    if-eqz v8, :cond_51

    :goto_4e
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->updateAccountManagerCache()V

    :cond_51
    return-wide v5

    :cond_52
    :try_start_52
    invoke-static {p0, p1, p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountsDBRowId(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v8, -0x1

    cmp-long v8, v8, v1

    if-eqz v8, :cond_2b

    const-string v8, "accounts"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v7, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_52 .. :try_end_75} :catchall_95
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_75} :catch_7d

    move-result v4

    if-lez v4, :cond_7a

    move-wide v5, v1

    :goto_79
    goto :goto_2b

    :cond_7a
    const-wide/16 v5, -0x1

    goto :goto_79

    :catch_7d
    move-exception v3

    const-wide/16 v5, -0x1

    :try_start_80
    const-string v8, "SettingsUtils"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_80 .. :try_end_89} :catchall_95

    if-eqz v0, :cond_8e

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8e
    const-wide/16 v8, -0x1

    cmp-long v8, v5, v8

    if-eqz v8, :cond_51

    goto :goto_4e

    :catchall_95
    move-exception v8

    if-eqz v0, :cond_9b

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9b
    const-wide/16 v9, -0x1

    cmp-long v9, v5, v9

    if-eqz v9, :cond_a4

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->updateAccountManagerCache()V

    :cond_a4
    throw v8
.end method

.method private static insertHostAuthTableRow(Landroid/net/Uri;Lcom/android/server/enterprise/email/AccountMetaData;ZZLandroid/content/Context;)J
    .registers 20

    const-wide/16 v8, -0x1

    const/4 v4, 0x0

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    if-eqz p3, :cond_ef

    if-eqz p2, :cond_e9

    const/4 v11, 0x4

    :goto_d
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    move-object/from16 v0, p4

    invoke-static {v11, v12, v13, v14, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthFlags(IZZZLandroid/content/Context;)I

    move-result v4

    :goto_1f
    const-string v12, "protocol"

    if-eqz p3, :cond_10b

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    :goto_27
    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "address"

    if-eqz p3, :cond_111

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    :goto_32
    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "port"

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v11, :cond_117

    const/4 v11, 0x0

    :goto_3e
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "flags"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v11, :cond_12b

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    if-eqz v11, :cond_125

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\\"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_79
    const-string v11, "login"

    invoke-virtual {v10, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_8f

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    if-eqz v11, :cond_8f

    const-string v11, "password"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8f
    if-nez p3, :cond_a0

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    if-eqz v11, :cond_a0

    const-string v11, "password"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a0
    if-eqz p3, :cond_b1

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    if-eqz v11, :cond_138

    const-string v11, "domain"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b1
    :goto_b1
    if-nez p3, :cond_c2

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    if-eqz v11, :cond_141

    const-string v11, "domain"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c2
    :goto_c2
    if-eqz p2, :cond_14a

    :try_start_c4
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, p0, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    :goto_d0
    const-string v11, "SettingsUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insertHostAuthTableRow row Id : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_e8} :catch_179

    :goto_e8
    return-wide v8

    :cond_e9
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    goto/16 :goto_d

    :cond_ef
    if-eqz p2, :cond_106

    const/4 v11, 0x4

    :goto_f2
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    move-object/from16 v0, p4

    invoke-static {v11, v12, v13, v14, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthFlags(IZZZLandroid/content/Context;)I

    move-result v4

    goto/16 :goto_1f

    :cond_106
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    goto :goto_f2

    :cond_10b
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    goto/16 :goto_27

    :cond_111
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    goto/16 :goto_32

    :cond_117
    if-eqz p3, :cond_11f

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    goto/16 :goto_3e

    :cond_11f
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    goto/16 :goto_3e

    :cond_125
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    goto/16 :goto_79

    :cond_12b
    if-eqz p3, :cond_133

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    :goto_131
    goto/16 :goto_79

    :cond_133
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    goto :goto_131

    :cond_138
    const-string v11, "domain"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b1

    :cond_141
    const-string v11, "domain"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c2

    :cond_14a
    if-eqz p3, :cond_171

    :try_start_14c
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    :goto_150
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, p0, v10, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_176

    move-wide v8, v2

    :goto_16f
    goto/16 :goto_d0

    :cond_171
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_175} :catch_179

    goto :goto_150

    :cond_176
    const-wide/16 v8, -0x1

    goto :goto_16f

    :catch_179
    move-exception v1

    const-wide/16 v8, -0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_e8
.end method

.method private static isExistingAccount(Landroid/net/Uri;JLandroid/content/Context;)Z
    .registers 14

    const/4 v8, 0x1

    const/4 v9, 0x0

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const/4 v6, 0x0

    :try_start_9
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccount row count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_46
    .catchall {:try_start_9 .. :try_end_46} :catchall_5b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_46} :catch_50

    move-result v0

    if-lez v0, :cond_62

    if-eqz v6, :cond_4e

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4e
    move v0, v8

    :goto_4f
    return v0

    :catch_50
    move-exception v7

    :try_start_51
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_5b

    if-eqz v6, :cond_59

    :goto_56
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_59
    move v0, v9

    goto :goto_4f

    :catchall_5b
    move-exception v0

    if-eqz v6, :cond_61

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_61
    throw v0

    :cond_62
    if-eqz v6, :cond_59

    goto :goto_56
.end method

.method static isValidEmailAddress(Ljava/lang/String;)Z
    .registers 10

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_34

    :try_start_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x40

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v7, 0x40

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/16 v7, 0x2e

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/16 v7, 0x2e

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_24} :catch_37

    move-result v5

    if-lez v1, :cond_35

    if-ne v1, v4, :cond_35

    add-int/lit8 v7, v4, 0x1

    if-ge v7, v2, :cond_35

    if-gt v2, v5, :cond_35

    add-int/lit8 v7, v6, -0x1

    if-ge v5, v7, :cond_35

    const/4 v3, 0x1

    :cond_34
    :goto_34
    return v3

    :cond_35
    const/4 v3, 0x0

    goto :goto_34

    :catch_37
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method

.method private static loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z
    .registers 15

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "protocol"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "address"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "port"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "flags"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "login"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "password"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "domain"

    aput-object v1, v2, v0

    :try_start_2e
    invoke-virtual {p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadHostAuth row count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_e7

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    if-eqz p4, :cond_f3

    const-string v0, "protocol"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const-string v0, "address"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    const-string v0, "port"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    const-string v0, "flags"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    const/4 v0, 0x1

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_ed

    const/4 v0, 0x1

    :goto_ab
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    const/4 v0, 0x2

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    and-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_ef

    const/4 v0, 0x1

    :goto_b5
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    const/16 v0, 0x8

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    and-int/lit8 v1, v1, 0x8

    if-ne v0, v1, :cond_f1

    const/4 v0, 0x1

    :goto_c0
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    const-string v0, "login"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    const-string v0, "password"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    const-string v0, "domain"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;
    :try_end_e6
    .catchall {:try_start_2e .. :try_end_e6} :catchall_175
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_e6} :catch_167

    :goto_e6
    const/4 v8, 0x1

    :cond_e7
    if-eqz v6, :cond_ec

    :goto_e9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_ec
    return v8

    :cond_ed
    const/4 v0, 0x0

    goto :goto_ab

    :cond_ef
    const/4 v0, 0x0

    goto :goto_b5

    :cond_f1
    const/4 v0, 0x0

    goto :goto_c0

    :cond_f3
    :try_start_f3
    const-string v0, "protocol"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    const-string v0, "address"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    const-string v0, "port"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    const-string v0, "flags"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    const/4 v0, 0x1

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_16f

    const/4 v0, 0x1

    :goto_12b
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    const/4 v0, 0x2

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    and-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_171

    const/4 v0, 0x1

    :goto_135
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    const/16 v0, 0x8

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    and-int/lit8 v1, v1, 0x8

    if-ne v0, v1, :cond_173

    const/4 v0, 0x1

    :goto_140
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    const-string v0, "login"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    const-string v0, "password"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    const-string v0, "domain"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;
    :try_end_166
    .catchall {:try_start_f3 .. :try_end_166} :catchall_175
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_166} :catch_167

    goto :goto_e6

    :catch_167
    move-exception v7

    :try_start_168
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_16b
    .catchall {:try_start_168 .. :try_end_16b} :catchall_175

    if-eqz v6, :cond_ec

    goto/16 :goto_e9

    :cond_16f
    const/4 v0, 0x0

    goto :goto_12b

    :cond_171
    const/4 v0, 0x0

    goto :goto_135

    :cond_173
    const/4 v0, 0x0

    goto :goto_140

    :catchall_175
    move-exception v0

    if-eqz v6, :cond_17b

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_17b
    throw v0
.end method

.method static declared-synchronized sendAccountsChangedBroadcast(ILandroid/content/Context;)V
    .registers 11

    const-class v5, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v5

    :try_start_3
    const-string v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    const/high16 v1, 0x1000

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_3a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2c} :catch_35

    :goto_2c
    :try_start_2c
    const-string v4, "SettingsUtils"

    const-string v6, "sendAccountsChangedBroadcast()"

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3a

    monitor-exit v5

    return-void

    :catch_35
    move-exception v3

    :try_start_36
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_2c

    :catchall_3a
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method static declared-synchronized setAsDefaultAccount(IJLandroid/content/Context;)Z
    .registers 15

    const-class v8, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v8

    const/4 v3, 0x0

    const-wide/16 v9, 0x1

    cmp-long v7, v9, p1

    if-lez v7, :cond_14

    :try_start_a
    const-string v7, "SettingsUtils"

    const-string v9, "setAsDefaultAccount : accountId is invalid"

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_aa

    move v4, v3

    :goto_12
    monitor-exit v8

    return v4

    :cond_14
    :try_start_14
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/enterprise/email/SettingsUtils;->isExistingAccount(Landroid/net/Uri;JLandroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_27

    const-string v7, "SettingsUtils"

    const-string v9, "setAsDefaultAccount : No Such Account"

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    goto :goto_12

    :cond_27
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "isDefault"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_36
    .catchall {:try_start_14 .. :try_end_36} :catchall_aa

    :try_start_36
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v0, v5, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const-string v7, "SettingsUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setAsDefaultAccount : row count for resetting the default column : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V
    :try_end_5d
    .catchall {:try_start_36 .. :try_end_5d} :catchall_aa
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_5d} :catch_a4

    :try_start_5d
    const-string v7, "isDefault"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v0, v6, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const-string v7, "SettingsUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setAsDefaultAccount : row count for setting the default column : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9b
    .catchall {:try_start_5d .. :try_end_9b} :catchall_aa
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_9b} :catch_ad

    if-lez v1, :cond_a2

    const/4 v3, 0x1

    :goto_9e
    move-object v5, v6

    :goto_9f
    move v4, v3

    goto/16 :goto_12

    :cond_a2
    const/4 v3, 0x0

    goto :goto_9e

    :catch_a4
    move-exception v2

    :goto_a5
    const/4 v3, 0x0

    :try_start_a6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_aa

    goto :goto_9f

    :catchall_aa
    move-exception v7

    monitor-exit v8

    throw v7

    :catch_ad
    move-exception v2

    move-object v5, v6

    goto :goto_a5
.end method

.method static setPassword(IJLjava/lang/String;Landroid/content/Context;Z)V
    .registers 8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.sec.UPDATE_ACCOUNT_PASSWORDS_FROM_MDM"

    invoke-static {p0, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "account_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz p5, :cond_1d

    const-string v1, "user_passwd"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_17
    const-string v1, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {p4, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_1d
    const-string v1, "outgoing_user_passwd"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_17
.end method
