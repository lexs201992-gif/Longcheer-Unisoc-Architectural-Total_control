.class public Lcom/motorola/ccc/cce/CCESettings;
.super Ljava/lang/Object;
.source "CCESettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/ccc/cce/CCESettings$LegacySettings;
    }
.end annotation


# static fields
.field private static final AUTHORITY_DM:Ljava/lang/String; = "com.motorola.ccc.devicemanagement.misc"

.field private static final AUTHORITY_MAIN:Ljava/lang/String; = "com.motorola.ccc.plm.misc"

.field private static final CATEGORY:Ljava/lang/String; = "category"

.field private static final CONTENT_URI_DM:Landroid/net/Uri;

.field private static final CONTENT_URI_MAIN:Landroid/net/Uri;

.field private static final KEY:Ljava/lang/String; = "key"

.field private static final LOG_TAG:Ljava/lang/String; = "CCESettings"

.field private static final PREFS_NAME:Ljava/lang/String; = "blur_services_config"

.field private static final TABLE_NAME:Ljava/lang/String; = "settings"

.field private static final VALUE:Ljava/lang/String; = "value"

.field private static mContentUri:Landroid/net/Uri;

.field private static sContext:Landroid/content/Context;

.field private static sPrefs:Landroid/content/SharedPreferences;

.field private static sProviderClient:Landroid/content/ContentProviderClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.motorola.ccc.plm.misc/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/ccc/cce/CCESettings;->CONTENT_URI_MAIN:Landroid/net/Uri;

    const-string v0, "content://com.motorola.ccc.devicemanagement.misc/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/ccc/cce/CCESettings;->CONTENT_URI_DM:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/ccc/cce/CCESettings;->mContentUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static DEBUG()Z
    .locals 2

    const-string v0, "CCESettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static checkCCESharedPrefsFile(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "CCESettings"

    const-string v1, " Path of the folder "

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.motorola.ccc.cce"

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lcom/motorola/ccc/cce/CCESettings;->DEBUG()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "/shared_prefs/blur_services_config.xml"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/motorola/ccc/cce/CCESettings;->DEBUG()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, " File present "

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    invoke-static {}, Lcom/motorola/ccc/cce/CCESettings;->DEBUG()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, " File not present "

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return v2

    :catch_0
    const-string p0, "com.motorola.ccc.cce App is Secured. "

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    return v2
.end method

.method private static getCCEPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    :try_start_0
    const-string v0, "com.motorola.ccc.cce"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    const-string v0, "blur_services_config"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "CCESettings"

    const-string v0, "com.motorola.ccc.cce App is Secured. "

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCESettings;->getMainAppAvailableStatus(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/ccc/cce/CCESettings;->CONTENT_URI_MAIN:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/motorola/ccc/cce/CCESettings;->CONTENT_URI_DM:Landroid/net/Uri;

    :goto_0
    sget-object v0, Lcom/motorola/ccc/cce/CCESettings;->mContentUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/ccc/cce/CCESettings;->sProviderClient:Landroid/content/ContentProviderClient;

    sput-object p0, Lcom/motorola/ccc/cce/CCESettings;->mContentUri:Landroid/net/Uri;

    goto :goto_1

    :cond_1
    sput-object p0, Lcom/motorola/ccc/cce/CCESettings;->mContentUri:Landroid/net/Uri;

    :cond_2
    :goto_1
    sget-object p0, Lcom/motorola/ccc/cce/CCESettings;->mContentUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCESettings;->setAppContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCEUtils;->isMotoDevice(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_DEVICE_ID:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/motorola/ccc/cce/CCESettings;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/motorola/ccc/cce/CCEUtils;->isNonMotoDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/ccc/cce/CCESettings;->sPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    const-string v0, "blur_services_config"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/motorola/ccc/cce/CCESettings;->sPrefs:Landroid/content/SharedPreferences;

    :cond_1
    sget-object p0, Lcom/motorola/ccc/cce/CCESettings;->sPrefs:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_DEVICE_ID:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/motorola/ccc/cce/CCEUtils;->isOldMotoDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "DeviceId"

    invoke-static {p0, v0, v1}, Lcom/motorola/ccc/cce/CCESettings$LegacySettings;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method public static getGoogleValidityInterval(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCEUtils;->isOldMotoDevice(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "GoogleTokenValidityInterval"

    invoke-static {p0, v0, v1}, Lcom/motorola/ccc/cce/CCESettings$LegacySettings;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/motorola/blur/service/blur/Configuration;->MOTOID_GOOGLE_TOKEN_VALIDITY_INTERVAL:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/motorola/ccc/cce/CCESettings;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMainAppAvailableStatus(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.motorola.ccc.mainplm"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static getSessionToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_SESSION_TOKEN:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/motorola/ccc/cce/CCESettings;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSessionTokenExpiration(Landroid/content/Context;)J
    .locals 7

    sget-object v0, Lcom/motorola/blur/service/blur/Configuration;->PROVISION_TIME:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/motorola/ccc/cce/CCESettings;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_0

    invoke-static {v0, v3, v4}, Lcom/motorola/ccc/util/StringUtils;->parseLong(Ljava/lang/String;J)J

    move-result-wide v5

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    cmp-long v0, v5, v3

    if-gtz v0, :cond_1

    return-wide v3

    :cond_1
    sget-object v0, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_SESSION_EXPIRATION:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/motorola/ccc/cce/CCESettings;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, v3, v4}, Lcom/motorola/ccc/util/StringUtils;->parseLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_1

    :cond_2
    move-wide v0, v3

    :goto_1
    cmp-long p0, v0, v3

    if-gtz p0, :cond_3

    return-wide v3

    :cond_3
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    add-long/2addr v5, v0

    return-wide v5
.end method

.method public static getSettingsDBFlag(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    const-string v0, "Failed to get cursor in getSettingsDBFlag "

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/motorola/ccc/cce/CCESettings;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    sget-object v4, Lcom/motorola/ccc/cce/CCESettings;->sProviderClient:Landroid/content/ContentProviderClient;

    if-nez v4, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    sput-object p0, Lcom/motorola/ccc/cce/CCESettings;->sProviderClient:Landroid/content/ContentProviderClient;

    :cond_0
    sget-object v4, Lcom/motorola/ccc/cce/CCESettings;->sProviderClient:Landroid/content/ContentProviderClient;

    const/4 v6, 0x0

    const-string v7, "key = ?"

    new-array v8, v2, [Ljava/lang/String;

    sget-object p0, Lcom/motorola/blur/service/blur/Configuration;->SETTINGS_DB_FLAG:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v8, v1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string v4, "CCESettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p0, v3

    :goto_0
    if-eqz p0, :cond_2

    :cond_1
    :goto_1
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/motorola/blur/service/blur/Configuration;->SETTINGS_DB_FLAG:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v4}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v3, p0

    move-object p0, v0

    goto :goto_2

    :cond_2
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    if-nez v3, :cond_4

    const-string v3, "false"

    :cond_4
    return-object v3

    :goto_2
    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p0
.end method

.method public static getSettingsVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_SETTINGS_VERSION:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/motorola/ccc/cce/CCESettings;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-string v0, "Failed to get cursor in getValue"

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCESettings;->setAppContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCEUtils;->isMotoDevice(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCESettings;->getSettingsDBFlag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "false"

    :cond_0
    const-string v4, "true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCESettings;->checkCCESharedPrefsFile(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/motorola/ccc/cce/CCESettings;->readFromCCE(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0}, Lcom/motorola/ccc/cce/CCESettings;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    sget-object v4, Lcom/motorola/ccc/cce/CCESettings;->sProviderClient:Landroid/content/ContentProviderClient;

    if-nez v4, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    sput-object p0, Lcom/motorola/ccc/cce/CCESettings;->sProviderClient:Landroid/content/ContentProviderClient;

    :cond_3
    sget-object v4, Lcom/motorola/ccc/cce/CCESettings;->sProviderClient:Landroid/content/ContentProviderClient;

    const/4 v6, 0x0

    const-string v7, "key = ?"

    new-array v8, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v8, v2

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v3

    move-object v3, p0

    move-object p0, v10

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string v4, "CCESettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v3

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_2
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p0

    :cond_7
    sget-object v0, Lcom/motorola/ccc/cce/CCESettings;->sPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_8

    const-string v0, "blur_services_config"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/motorola/ccc/cce/CCESettings;->sPrefs:Landroid/content/SharedPreferences;

    :cond_8
    sget-object p0, Lcom/motorola/ccc/cce/CCESettings;->sPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_9

    invoke-static {p1}, Lcom/motorola/blur/service/blur/Configuration;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/motorola/ccc/cce/CCESettings;->sPrefs:Landroid/content/SharedPreferences;

    monitor-enter v0

    :try_start_2
    sget-object v1, Lcom/motorola/ccc/cce/CCESettings;->sPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v0

    goto :goto_3

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_9
    :goto_3
    if-nez p0, :cond_a

    invoke-static {p1}, Lcom/motorola/blur/service/blur/Configuration;->getConfig(Ljava/lang/String;)Lcom/motorola/blur/service/blur/Configuration;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/Configuration;->defaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/Configuration;->defaultValue()Ljava/lang/String;

    move-result-object p0

    :cond_a
    if-nez p0, :cond_b

    goto :goto_4

    :cond_b
    move-object p2, p0

    :goto_4
    return-object p2
.end method

.method private static insertDefaultValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "key"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "category"

    invoke-virtual {v0, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/motorola/ccc/cce/CCESettings;->sContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCESettings;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p0

    sget-object p1, Lcom/motorola/ccc/cce/CCESettings;->sProviderClient:Landroid/content/ContentProviderClient;

    if-nez p1, :cond_0

    sget-object p1, Lcom/motorola/ccc/cce/CCESettings;->sContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1

    sput-object p1, Lcom/motorola/ccc/cce/CCESettings;->sProviderClient:Landroid/content/ContentProviderClient;

    :cond_0
    sget-object p1, Lcom/motorola/ccc/cce/CCESettings;->sProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, " Insertion of Default values failed "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CCESettings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static insertIntoCCE(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCESettings;->getCCEPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static insertIntoDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCESettings;->setAppContext(Landroid/content/Context;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/motorola/ccc/cce/CCESettings;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/motorola/ccc/cce/CCESettings;->sProviderClient:Landroid/content/ContentProviderClient;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    sput-object v2, Lcom/motorola/ccc/cce/CCESettings;->sProviderClient:Landroid/content/ContentProviderClient;

    :cond_0
    sget-object v2, Lcom/motorola/ccc/cce/CCESettings;->sProviderClient:Landroid/content/ContentProviderClient;

    const-string v3, "key = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/motorola/ccc/cce/CCESettings;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, ""

    invoke-static {p1, p2, p0}, Lcom/motorola/ccc/cce/CCESettings;->insertDefaultValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, " Insertion to DB failed: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CCESettings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static insertValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCESettings;->setAppContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCEUtils;->isMotoDevice(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCESettings;->getSettingsDBFlag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "false"

    :cond_0
    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCESettings;->checkCCESharedPrefsFile(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/motorola/ccc/cce/CCESettings;->insertIntoCCE(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "key"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "value"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/motorola/ccc/cce/CCESettings;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/motorola/ccc/cce/CCESettings;->sProviderClient:Landroid/content/ContentProviderClient;

    if-nez v3, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3

    sput-object v3, Lcom/motorola/ccc/cce/CCESettings;->sProviderClient:Landroid/content/ContentProviderClient;

    :cond_3
    sget-object v3, Lcom/motorola/ccc/cce/CCESettings;->sProviderClient:Landroid/content/ContentProviderClient;

    const-string v4, "key = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v2, v0, v4, v5}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/motorola/ccc/cce/CCESettings;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, ""

    invoke-static {p1, p2, p0}, Lcom/motorola/ccc/cce/CCESettings;->insertDefaultValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "CCESettings"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " Insertion to DB failed "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/motorola/ccc/cce/CCESettings;->sPrefs:Landroid/content/SharedPreferences;

    monitor-enter v0

    :try_start_1
    sget-object v2, Lcom/motorola/ccc/cce/CCESettings;->sPrefs:Landroid/content/SharedPreferences;

    if-nez v2, :cond_5

    const-string v2, "blur_services_config"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/motorola/ccc/cce/CCESettings;->sPrefs:Landroid/content/SharedPreferences;

    :cond_5
    sget-object p0, Lcom/motorola/ccc/cce/CCESettings;->sPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v0

    :cond_6
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static readAllValues(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCESettings;->setAppContext(Landroid/content/Context;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/motorola/ccc/cce/CCESettings;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    sget-object v2, Lcom/motorola/ccc/cce/CCESettings;->sProviderClient:Landroid/content/ContentProviderClient;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    sput-object p0, Lcom/motorola/ccc/cce/CCESettings;->sProviderClient:Landroid/content/ContentProviderClient;

    :cond_0
    sget-object v2, Lcom/motorola/ccc/cce/CCESettings;->sProviderClient:Landroid/content/ContentProviderClient;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    if-eqz p0, :cond_1

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, p0

    move-object p0, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, p0

    move-object p0, v8

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v0, v1

    :goto_1
    :try_start_2
    const-string v2, "CCESettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Retrieval for DB failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v1

    :catchall_2
    move-exception p0

    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p0
.end method

.method private static readFromCCE(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCESettings;->getCCEPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static removeValue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCESettings;->setAppContext(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/motorola/blur/service/blur/Configuration;->getConfig(Ljava/lang/String;)Lcom/motorola/blur/service/blur/Configuration;

    move-result-object v0

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCEUtils;->isMotoDevice(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/Configuration;->defaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/motorola/ccc/cce/CCESettings;->insertValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/motorola/ccc/cce/CCESettings;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/motorola/ccc/cce/CCESettings;->sProviderClient:Landroid/content/ContentProviderClient;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    sput-object p0, Lcom/motorola/ccc/cce/CCESettings;->sProviderClient:Landroid/content/ContentProviderClient;

    :cond_1
    sget-object p0, Lcom/motorola/ccc/cce/CCESettings;->sProviderClient:Landroid/content/ContentProviderClient;

    const-string v1, "key = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {p0, v0, v1, v3}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Remove from db failed."

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CCESettings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/motorola/ccc/cce/CCESettings;->sPrefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_3

    const-string v1, "blur_services_config"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/motorola/ccc/cce/CCESettings;->sPrefs:Landroid/content/SharedPreferences;

    :cond_3
    sget-object p0, Lcom/motorola/ccc/cce/CCESettings;->sPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/Configuration;->defaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_4
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    return-void
.end method

.method public static setAppContext(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/motorola/ccc/cce/CCESettings;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/motorola/ccc/cce/CCESettings;->sContext:Landroid/content/Context;

    const-string v0, "blur_services_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/motorola/ccc/cce/CCESettings;->sPrefs:Landroid/content/SharedPreferences;

    :try_start_0
    invoke-static {p0}, Lcom/motorola/ccc/cce/CCESettings;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p0

    sget-object v0, Lcom/motorola/ccc/cce/CCESettings;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/ccc/cce/CCEUtils;->isMotoDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/ccc/cce/CCESettings;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    sput-object p0, Lcom/motorola/ccc/cce/CCESettings;->sProviderClient:Landroid/content/ContentProviderClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "CCESettings"

    const-string v1, "Exception caught in setAppContext"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
