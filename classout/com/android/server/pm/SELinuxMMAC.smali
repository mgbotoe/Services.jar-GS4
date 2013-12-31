.class public final Lcom/android/server/pm/SELinuxMMAC;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/SELinuxMMAC$1;,
        Lcom/android/server/pm/SELinuxMMAC$DenyPolicy;,
        Lcom/android/server/pm/SELinuxMMAC$BlackListPolicy;,
        Lcom/android/server/pm/SELinuxMMAC$WhiteListPolicy;,
        Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;,
        Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    }
.end annotation


# static fields
.field private static final CONTAINER_APP:Ljava/lang/String; = "container"

.field private static final CONTAINER_INFO:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG_POLICY:Z = false

.field private static final DEBUG_POLICY_INSTALL:Z = false

.field private static final INSTALL_POLICY_FILE:[Ljava/io/File; = null

.field private static final MMAC_DENY:Ljava/lang/String; = "MMAC_DENIAL:"

.field private static final MMAC_ENFORCE_PROPERTY:Ljava/lang/String; = "persist.mmac.enforce"

.field private static final PKG_POLICY:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final SECURE_PKG_PREFIX:Ljava/lang/String; = "sec_container_"

.field private static final SIG_POLICY:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/pm/Signature;",
            "Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SELinuxMMAC"

.field private static mContainerPolicy:Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

.field private static final mNoAuditPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mTrustedPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    sput-object v5, Lcom/android/server/pm/SELinuxMMAC;->mContainerPolicy:Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->mTrustedPackages:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "security/mac_permissions.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "security/spota/mac_permissions.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/security/mac_permissions.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v5, v0, v1

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->INSTALL_POLICY_FILE:[Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assignSeinfoValue(Landroid/content/pm/PackageParser$Package;)V
    .registers 14

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v10, -0x1

    iput v10, v9, Landroid/content/pm/ApplicationInfo;->level:I

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v3, :cond_c0

    aget-object v6, v0, v2

    if-nez v6, :cond_14

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_14
    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    iget-object v9, v9, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    iput-object v9, v10, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    if-eqz v7, :cond_58

    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_58

    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a5

    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->level:I

    iput v10, v9, Landroid/content/pm/ApplicationInfo;->level:I

    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    iput-object v10, v9, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    :cond_58
    :goto_58
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_7e

    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->mTrustedPackages:Ljava/util/HashMap;

    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7e

    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->mTrustedPackages:Ljava/util/HashMap;

    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7e

    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-byte v12, v9, Landroid/content/pm/ApplicationInfo;->isTrusted:B

    :cond_7e
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_a4

    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a4

    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a4

    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-byte v12, v9, Landroid/content/pm/ApplicationInfo;->isNoAudit:B

    :cond_a4
    :goto_a4
    return-void

    :cond_a5
    const/4 v4, -0x1

    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/server/pm/SELinuxMMAC;->isSystemApp(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b4

    iget-boolean v9, v7, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->isContainerApp:Z

    if-eqz v9, :cond_58

    :cond_b4
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/server/pm/SELinuxMMAC;->getPackageLevelbyKey(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_58

    invoke-static {p0, v4}, Lcom/android/server/pm/SELinuxMMAC;->setSecurityContext(Landroid/content/pm/PackageParser$Package;I)V

    goto :goto_58

    :cond_c0
    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_db

    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    iget-object v9, v9, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    iput-object v9, v10, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    goto :goto_a4

    :cond_db
    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f2

    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    iget-object v9, v9, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    iput-object v9, v10, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    goto :goto_a4

    :cond_f2
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v11, v9, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    goto :goto_a4
.end method

.method private static determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;)Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v22

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_17
    :goto_17
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v28

    const/4 v7, 0x1

    move/from16 v0, v28

    if-eq v0, v7, :cond_251

    const/4 v7, 0x3

    move/from16 v0, v28

    if-ne v0, v7, :cond_2d

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    move/from16 v0, v22

    if-le v7, v0, :cond_251

    :cond_2d
    const/4 v7, 0x3

    move/from16 v0, v28

    if-eq v0, v7, :cond_17

    const/4 v7, 0x4

    move/from16 v0, v28

    if-eq v0, v7, :cond_17

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v27

    const-string v7, "seinfo"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_77

    const/4 v7, 0x0

    const-string v9, "value"

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/server/pm/SELinuxMMAC;->validateValue(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5a

    move-object/from16 v5, v26

    :cond_56
    :goto_56
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_17

    :cond_5a
    const-string v7, "SELinuxMMAC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<seinfo> without value at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :cond_77
    const-string v7, "container"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_98

    const/4 v7, 0x0

    const-string v9, "value"

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_56

    const-string v7, "true"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    const/4 v6, 0x1

    goto :goto_56

    :cond_98
    const-string v7, "allow-permission"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d0

    const/4 v7, 0x0

    const-string v9, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_b3

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_56

    :cond_b3
    const-string v7, "SELinuxMMAC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<allow-permission> without name at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :cond_d0
    const-string v7, "deny-permission"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10a

    const/4 v7, 0x0

    const-string v9, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_ec

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_56

    :cond_ec
    const-string v7, "SELinuxMMAC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<deny-permission> without name at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_56

    :cond_10a
    const-string v7, "allow-all"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_118

    const/16 v16, 0x1

    goto/16 :goto_56

    :cond_118
    const-string v7, "service"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_191

    new-instance v17, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;-><init>(Lcom/android/server/pm/SELinuxMMAC$1;)V

    const/4 v7, 0x0

    const-string v9, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/4 v7, 0x0

    const-string v9, "level"

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/4 v7, 0x0

    const-string v9, "seinfo"

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v24, :cond_56

    if-eqz v21, :cond_56

    :try_start_149
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v17

    iput v7, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->level:I
    :try_end_151
    .catch Ljava/lang/NumberFormatException; {:try_start_149 .. :try_end_151} :catch_164

    :goto_151
    if-eqz v20, :cond_180

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_56

    :catch_164
    move-exception v19

    const-string v7, "SELinuxMMAC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not define correct level."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_151

    :cond_180
    if-eqz v5, :cond_56

    move-object/from16 v0, v17

    iput-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_56

    :cond_191
    const-string v7, "trustedpackage"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1cd

    const/4 v7, 0x0

    const-string v9, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_56

    if-eqz p2, :cond_56

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->mTrustedPackages:Ljava/util/HashMap;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "SELinuxMMAC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " trusted"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_56

    :cond_1cd
    const-string v7, "dontaudit"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_209

    const/4 v7, 0x0

    const-string v9, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_56

    if-eqz p2, :cond_56

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "SELinuxMMAC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " noAudit"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_56

    :cond_209
    const-string v7, "package"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    if-eqz p1, :cond_56

    const/4 v7, 0x0

    const-string v9, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_233

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v7, v9}, Lcom/android/server/pm/SELinuxMMAC;->determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;)Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    move-result-object v25

    if-eqz v25, :cond_17

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_17

    :cond_233
    const-string v7, "SELinuxMMAC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<package> inner tag without name at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_56

    :cond_251
    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_27a

    new-instance v2, Lcom/android/server/pm/SELinuxMMAC$BlackListPolicy;

    new-instance v7, Ljava/util/ArrayList;

    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->mTrustedPackages:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v8, Ljava/util/ArrayList;

    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/SELinuxMMAC$BlackListPolicy;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_273
    :goto_273
    if-eqz v6, :cond_279

    if-eqz v2, :cond_279

    sput-object v2, Lcom/android/server/pm/SELinuxMMAC;->mContainerPolicy:Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    :cond_279
    return-object v2

    :cond_27a
    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_2a0

    new-instance v2, Lcom/android/server/pm/SELinuxMMAC$WhiteListPolicy;

    new-instance v12, Ljava/util/ArrayList;

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->mTrustedPackages:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v12, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v13, Ljava/util/ArrayList;

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v13, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v7, v2

    move-object v9, v4

    move-object v10, v5

    move v11, v6

    invoke-direct/range {v7 .. v13}, Lcom/android/server/pm/SELinuxMMAC$WhiteListPolicy;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_273

    :cond_2a0
    if-eqz v16, :cond_2c3

    new-instance v2, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    const/4 v10, 0x0

    new-instance v14, Ljava/util/ArrayList;

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->mTrustedPackages:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v14, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v15, Ljava/util/ArrayList;

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v15, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v2

    move-object v11, v4

    move-object v12, v5

    move v13, v6

    invoke-direct/range {v9 .. v15}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_273

    :cond_2c3
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_273

    new-instance v2, Lcom/android/server/pm/SELinuxMMAC$DenyPolicy;

    const/4 v10, 0x0

    new-instance v14, Ljava/util/ArrayList;

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->mTrustedPackages:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v14, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v15, Ljava/util/ArrayList;

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v15, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v2

    move-object v11, v4

    move-object v12, v5

    move v13, v6

    invoke-direct/range {v9 .. v15}, Lcom/android/server/pm/SELinuxMMAC$DenyPolicy;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_273
.end method

.method private static flushInstallPolicy()V
    .registers 1

    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->mContainerPolicy:Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    return-void
.end method

.method public static getEnforcingMode()Z
    .registers 2

    const-string v0, "persist.mmac.enforce"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getPackageLevelbyKey(Ljava/lang/String;)I
    .registers 9

    const/4 v2, -0x1

    if-eqz p0, :cond_1f

    const-string v5, "sec_container_"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    const/16 v5, 0x2e

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v5, "sec_container_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :try_start_1b
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1e} :catch_20

    move-result v2

    :cond_1f
    :goto_1f
    return v2

    :catch_20
    move-exception v1

    const-string v5, "SELinuxMMAC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not define level."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method public static isKnoxKey([Landroid/content/pm/Signature;)Z
    .registers 7

    array-length v2, p0

    new-array v3, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v2, :cond_24

    :try_start_6
    new-instance v4, Ljava/lang/String;

    aget-object v5, p0, v1

    invoke-virtual {v5}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    aput-object v4, v3, v1
    :try_end_17
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_17} :catch_1a

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catch_1a
    move-exception v0

    const-string v4, "SELinuxMMAC"

    const-string v5, "isKnoxKey check causes CertificateException"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_23
    return v4

    :cond_24
    invoke-static {v3}, Lcom/android/server/pm/SELinuxMMAC;->isKnoxKey([Ljava/lang/String;)Z

    move-result v4

    goto :goto_23
.end method

.method public static isKnoxKey([Ljava/lang/String;)Z
    .registers 15

    const/4 v8, 0x0

    sget-object v12, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    move-object v1, p0

    array-length v6, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_b
    if-ge v5, v6, :cond_54

    aget-object v7, v1, v5

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/Signature;

    :try_start_24
    invoke-virtual {v10}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    invoke-interface {v12}, Ljava/security/PublicKey;->getEncoded()[B
    :try_end_2b
    .catch Ljava/security/cert/CertificateException; {:try_start_24 .. :try_end_2b} :catch_4b

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-eqz v12, :cond_18

    sget-object v12, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    iget-object v12, v9, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/server/pm/SELinuxMMAC;->isSystemApp(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_46

    iget-boolean v12, v9, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->isContainerApp:Z

    if-eqz v12, :cond_47

    :cond_46
    const/4 v8, 0x1

    :cond_47
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_b

    :catch_4b
    move-exception v2

    const-string v12, "SELinuxMMAC"

    const-string v13, "isKnoxKey check causes CertificateException"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    :cond_54
    return v8
.end method

.method private static isSystemApp(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "media"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "platform"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "shared"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "release"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public static passInstallPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z
    .registers 11

    const/4 v9, 0x0

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v2, :cond_2a

    aget-object v5, v0, v1

    if-nez v5, :cond_e

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_e
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    invoke-virtual {v4, p0}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->passedPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v7, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    const/4 v3, 0x1

    :cond_29
    :goto_29
    return v3

    :cond_2a
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    const/4 v3, 0x0

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    invoke-virtual {v4, p0}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->passedPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_29

    iget-object v7, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->getSEinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    const/4 v3, 0x1

    goto :goto_29

    :cond_51
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_74

    const/4 v3, 0x0

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    invoke-virtual {v4, p0}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->passedPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_29

    iget-object v7, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->getSEinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    const/4 v3, 0x1

    goto :goto_29

    :cond_74
    const/4 v3, 0x0

    goto :goto_29
.end method

.method public static readInstallPolicy()Z
    .registers 1

    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->INSTALL_POLICY_FILE:[Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/pm/SELinuxMMAC;->readInstallPolicy([Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static readInstallPolicy(Ljava/io/File;)Z
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/server/pm/SELinuxMMAC;->readInstallPolicy([Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static readInstallPolicy([Ljava/io/File;)Z
    .registers 17

    const/4 v8, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v4

    packed-switch v4, :pswitch_data_24a

    :goto_9
    if-nez v8, :cond_f5

    const-string v13, "SELinuxMMAC"

    const-string v14, "MMAC install disabled."

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    :goto_13
    return v13

    :catch_14
    move-exception v1

    move-object v8, v9

    :goto_16
    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Couldn\'t find install policy "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, p0, v3

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    move-object v9, v8

    :goto_37
    if-nez v9, :cond_244

    if-eqz p0, :cond_244

    aget-object v13, p0, v3

    if-eqz v13, :cond_244

    :try_start_3f
    new-instance v8, Ljava/io/FileReader;

    aget-object v13, p0, v3

    invoke-direct {v8, v13}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_46
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_46} :catch_14

    :try_start_46
    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Load mac_permissions.xml policy "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, p0, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/io/FileNotFoundException; {:try_start_46 .. :try_end_60} :catch_61

    goto :goto_9

    :catch_61
    move-exception v1

    goto :goto_16

    :pswitch_63
    :try_start_63
    new-instance v9, Ljava/io/FileReader;

    add-int/lit8 v13, v4, -0x1

    aget-object v13, p0, v13

    invoke-direct {v9, v13}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_6c
    .catch Ljava/io/FileNotFoundException; {:try_start_63 .. :try_end_6c} :catch_8a

    :try_start_6c
    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Load mac_permissions.xml policy "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v4, -0x1

    aget-object v15, p0, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catch Ljava/io/FileNotFoundException; {:try_start_6c .. :try_end_88} :catch_241

    move-object v8, v9

    goto :goto_9

    :catch_8a
    move-exception v1

    move-object v9, v8

    :goto_8c
    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Couldn\'t find install policy "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v4, -0x1

    aget-object v15, p0, v15

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v9, :cond_244

    :try_start_ae
    new-instance v8, Ljava/io/FileReader;

    const/4 v13, 0x2

    aget-object v13, p0, v13

    invoke-direct {v8, v13}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_b6
    .catch Ljava/io/FileNotFoundException; {:try_start_ae .. :try_end_b6} :catch_23d

    :try_start_b6
    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Load mac_permissions.xml policy "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v15, p0, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_b6 .. :try_end_d1} :catch_d3

    goto/16 :goto_9

    :catch_d3
    move-exception v1

    :goto_d4
    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Couldn\'t find install policy "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v15, p0, v15

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_f5
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v2

    if-eqz v2, :cond_13b

    const-string v5, "enforcing"

    :goto_fd
    const/4 v0, 0x0

    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MMAC install starting in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mode."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->flushInstallPolicy()V

    :try_start_11f
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    invoke-interface {v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const-string v13, "policy"

    invoke-static {v6, v13}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :cond_12b
    :goto_12b
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_131
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11f .. :try_end_131} :catch_173
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_131} :catch_1a3

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_13e

    :goto_135
    :try_start_135
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_138
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_138} :catch_23a

    :goto_138
    const/4 v13, 0x1

    goto/16 :goto_13

    :cond_13b
    const-string v5, "permissive"

    goto :goto_fd

    :cond_13e
    :try_start_13e
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v13, "signer"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1dc

    const/4 v13, 0x0

    const-string v14, "signature"

    invoke-interface {v6, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17c

    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<signer> without signature at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_172
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13e .. :try_end_172} :catch_173
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_172} :catch_1a3

    goto :goto_12b

    :catch_173
    move-exception v1

    const-string v13, "SELinuxMMAC"

    const-string v14, "Got execption parsing "

    invoke-static {v13, v14, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_135

    :cond_17c
    :try_start_17c
    new-instance v10, Landroid/content/pm/Signature;

    invoke-direct {v10, v0}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V
    :try_end_181
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17c .. :try_end_181} :catch_1ac
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17c .. :try_end_181} :catch_173
    .catch Ljava/io/IOException; {:try_start_17c .. :try_end_181} :catch_1a3

    if-nez v10, :cond_1ce

    :try_start_183
    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<signer> with null signature at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1a2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_183 .. :try_end_1a2} :catch_173
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_1a2} :catch_1a3

    goto :goto_12b

    :catch_1a3
    move-exception v1

    const-string v13, "SELinuxMMAC"

    const-string v14, "Got execption parsing "

    invoke-static {v13, v14, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_135

    :catch_1ac
    move-exception v1

    :try_start_1ad
    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<signer> with bad signature at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_12b

    :cond_1ce
    const/4 v13, 0x1

    invoke-static {v6, v13, v0}, Lcom/android/server/pm/SELinuxMMAC;->determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;)Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    move-result-object v12

    if-eqz v12, :cond_12b

    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v13, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_12b

    :cond_1dc
    const-string v13, "default"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1f4

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v6, v13, v14}, Lcom/android/server/pm/SELinuxMMAC;->determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;)Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    move-result-object v12

    if-eqz v12, :cond_12b

    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_12b

    :cond_1f4
    const-string v13, "package"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_235

    const/4 v13, 0x0

    const-string v14, "name"

    invoke-interface {v6, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_226

    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<package> without name at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_12b

    :cond_226
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v6, v13, v14}, Lcom/android/server/pm/SELinuxMMAC;->determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;)Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    move-result-object v12

    if-eqz v12, :cond_12b

    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v13, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_12b

    :cond_235
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_238
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1ad .. :try_end_238} :catch_173
    .catch Ljava/io/IOException; {:try_start_1ad .. :try_end_238} :catch_1a3

    goto/16 :goto_12b

    :catch_23a
    move-exception v13

    goto/16 :goto_138

    :catch_23d
    move-exception v1

    move-object v8, v9

    goto/16 :goto_d4

    :catch_241
    move-exception v1

    goto/16 :goto_8c

    :cond_244
    move-object v8, v9

    goto/16 :goto_9

    :pswitch_247
    move-object v9, v8

    goto/16 :goto_37

    :pswitch_data_24a
    .packed-switch 0x0
        :pswitch_247
        :pswitch_63
        :pswitch_63
        :pswitch_63
    .end packed-switch
.end method

.method public static setEnforcingMode(Z)V
    .registers 3

    const-string v1, "persist.mmac.enforce"

    if-eqz p0, :cond_a

    const-string v0, "1"

    :goto_6
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    const-string v0, "0"

    goto :goto_6
.end method

.method private static setSecurityContext(Landroid/content/pm/PackageParser$Package;I)V
    .registers 4

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v1, "container"

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->mContainerPolicy:Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->mContainerPolicy:Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    iget-object v1, v1, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    :cond_12
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput p1, v0, Landroid/content/pm/ApplicationInfo;->level:I

    return-void
.end method

.method private static validateValue(Ljava/lang/String;)Z
    .registers 6

    const/4 v3, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v3

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_28

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x61

    if-lt v1, v4, :cond_19

    const/16 v4, 0x7a

    if-le v1, v4, :cond_25

    :cond_19
    const/16 v4, 0x41

    if-lt v1, v4, :cond_21

    const/16 v4, 0x5a

    if-le v1, v4, :cond_25

    :cond_21
    const/16 v4, 0x5f

    if-ne v1, v4, :cond_3

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_28
    const/4 v3, 0x1

    goto :goto_3
.end method
