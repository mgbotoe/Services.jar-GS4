.class public final Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;
.super Ljava/lang/Object;
.source "DirEncryptServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DirEncryptServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppliedPolicies"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPoliciesApplied()Z
    .registers 7

    const/4 v4, 0x0

    new-instance v1, Ljava/io/File;

    const-string v5, "/efs/"

    const-string v6, "applied_sdcard_policies"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v5, "/data/system/"

    const-string v6, "applied_sdcard_policies"

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_14
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_20

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1d} :catch_25

    move-result v5

    if-eqz v5, :cond_23

    :cond_20
    const/4 v3, 0x1

    :goto_21
    move v4, v3

    :goto_22
    return v4

    :cond_23
    move v3, v4

    goto :goto_21

    :catch_25
    move-exception v0

    goto :goto_22
.end method

.method public static setPoliciesApplied()Z
    .registers 5

    new-instance v1, Ljava/io/File;

    const-string v3, "/efs/"

    const-string v4, "applied_sdcard_policies"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    :try_start_a
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v2, 0x1

    :goto_11
    move v3, v2

    :goto_12
    return v3

    :cond_13
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_18

    move-result v2

    goto :goto_11

    :catch_18
    move-exception v0

    const/4 v3, 0x0

    goto :goto_12
.end method

.method public static setPoliciesRemoved()Z
    .registers 6

    new-instance v1, Ljava/io/File;

    const-string v4, "/efs/"

    const-string v5, "applied_sdcard_policies"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v4, "/data/system/"

    const-string v5, "applied_sdcard_policies"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    :try_start_13
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    :cond_1d
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_26} :catch_29

    move-result v3

    :cond_27
    move v4, v3

    :goto_28
    return v4

    :catch_29
    move-exception v0

    const/4 v4, 0x0

    goto :goto_28
.end method
