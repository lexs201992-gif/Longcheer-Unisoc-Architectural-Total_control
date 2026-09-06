.class public Lcom/motorola/ccc/cce/CCEUtils;
.super Ljava/lang/Object;
.source "CCEUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/ccc/cce/CCEUtils$Holder;,
        Lcom/motorola/ccc/cce/CCEUtils$DeviceType;
    }
.end annotation


# static fields
.field private static final CCE_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.motorola.blur.service.blur.BlurServiceMother"

.field public static final CHANNEL_ID_KEY:Ljava/lang/String; = "persist.app.settings.channel_id"

.field public static final ENTERPRISE_EDITION_KEY:Ljava/lang/String; = "persist.app.settings.enterprise_edition"

.field private static final EXTERNAL_WS_REQUEST:Ljava/lang/String; = "com.motorola.blur.APPWSPROXY_CCE_EXTERNAL_WS_REQUEST_ACTION"

.field private static final KEY_LENOVO_SETUP_PRIVACY:Ljava/lang/String; = "persist.sys.lenovo_setup_privacy"

.field private static final LEGACY_LENOVO_PACKAGE_NAME:Ljava/lang/String; = "com.lenovo.lsf.user"

.field private static final LOG_TAG:Ljava/lang/String; = "CCEUtils"

.field private static final MAIN_PLM_LAUNCHER_CLASS_NAME:Ljava/lang/String; = "com.motorola.ccc.plm.launchmanager.LaunchManagerService"

.field private static final MOD_SERVICE_PKG_NAME:Ljava/lang/String; = "com.motorola.modservice"

.field private static final PRIMARY_USER:I = 0x0

.field private static final RESPONSE_ACTION_PREFIX:Ljava/lang/String; = "com.motorola.blur.wsresponse"

.field public static final SUB_CHANNEL_ID_KEY:Ljava/lang/String; = "persist.app.settings.sub_channel_id"

.field private static final TIMEOUT:J = 0xea60L

.field private static lastLoginStatus:Ljava/lang/String; = "OFFLINE"

.field private static sDeviceType:Lcom/motorola/ccc/cce/CCEUtils$DeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static DEBUG()Z
    .locals 2

    const-string v0, "CCEUtils"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static VERBOSE()Z
    .locals 2

    const-string v0, "CCEUtils"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    invoke-static {}, Lcom/motorola/ccc/cce/CCEUtils;->VERBOSE()Z

    move-result v0

    return v0
.end method

.method public static amIProxyApp(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.motorola.ccc.devicemanagement"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static generateRespJsonString(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "statusCode"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "error"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p0, :cond_0

    const-string p1, "wsReqId"

    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz p3, :cond_1

    const-string p0, "errorText"

    invoke-virtual {v1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz p4, :cond_2

    const-string p0, "payload"

    invoke-virtual {v1, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string p0, "response"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCESettings;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceType(Landroid/content/Context;)Lcom/motorola/ccc/cce/CCEUtils$DeviceType;
    .locals 6

    const-string v0, "com.motorola.ccc.cce"

    const-string v1, "com.motorola.ccc.mainplm"

    const-string v2, "com.motorola.ccc.devicemanagement"

    const-string v3, "CCEUtils"

    sget-object v4, Lcom/motorola/ccc/cce/CCEUtils;->sDeviceType:Lcom/motorola/ccc/cce/CCEUtils$DeviceType;

    if-nez v4, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/ccc/cce/CCEUtils$DeviceType;->MOTO:Lcom/motorola/ccc/cce/CCEUtils$DeviceType;

    sput-object v2, Lcom/motorola/ccc/cce/CCEUtils;->sDeviceType:Lcom/motorola/ccc/cce/CCEUtils$DeviceType;

    goto :goto_0

    :cond_0
    const-string v2, "DeviceManagement apk is not a System application"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/motorola/ccc/cce/CCEUtils$DeviceType;->NONMOTO:Lcom/motorola/ccc/cce/CCEUtils$DeviceType;

    sput-object v2, Lcom/motorola/ccc/cce/CCEUtils;->sDeviceType:Lcom/motorola/ccc/cce/CCEUtils$DeviceType;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/motorola/ccc/cce/CCEUtils$DeviceType;->MOTO:Lcom/motorola/ccc/cce/CCEUtils$DeviceType;

    sput-object v1, Lcom/motorola/ccc/cce/CCEUtils;->sDeviceType:Lcom/motorola/ccc/cce/CCEUtils$DeviceType;

    goto :goto_0

    :cond_1
    const-string v1, "Main is not a System application"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/motorola/ccc/cce/CCEUtils$DeviceType;->NONMOTO:Lcom/motorola/ccc/cce/CCEUtils$DeviceType;

    sput-object v1, Lcom/motorola/ccc/cce/CCEUtils;->sDeviceType:Lcom/motorola/ccc/cce/CCEUtils$DeviceType;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    :try_start_2
    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCEUtils;->isCCEIndigo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/ccc/cce/CCEUtils$DeviceType;->OLDMOTO:Lcom/motorola/ccc/cce/CCEUtils$DeviceType;

    sput-object v0, Lcom/motorola/ccc/cce/CCEUtils;->sDeviceType:Lcom/motorola/ccc/cce/CCEUtils$DeviceType;

    goto :goto_0

    :cond_2
    const-string v0, "CCE.apk is not a System application"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/motorola/ccc/cce/CCEUtils$DeviceType;->NONMOTO:Lcom/motorola/ccc/cce/CCEUtils$DeviceType;

    sput-object v0, Lcom/motorola/ccc/cce/CCEUtils;->sDeviceType:Lcom/motorola/ccc/cce/CCEUtils$DeviceType;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    sget-object v0, Lcom/motorola/ccc/cce/CCEUtils$DeviceType;->NONMOTO:Lcom/motorola/ccc/cce/CCEUtils$DeviceType;

    sput-object v0, Lcom/motorola/ccc/cce/CCEUtils;->sDeviceType:Lcom/motorola/ccc/cce/CCEUtils$DeviceType;

    :goto_0
    invoke-static {p0}, Lcom/motorola/ccc/cce/CCEUtils;->isAdminUser(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lcom/motorola/ccc/cce/CCEUtils$DeviceType;->INVALID:Lcom/motorola/ccc/cce/CCEUtils$DeviceType;

    sput-object p0, Lcom/motorola/ccc/cce/CCEUtils;->sDeviceType:Lcom/motorola/ccc/cce/CCEUtils$DeviceType;

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "device type: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/ccc/cce/CCEUtils;->sDeviceType:Lcom/motorola/ccc/cce/CCEUtils$DeviceType;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-object p0, Lcom/motorola/ccc/cce/CCEUtils;->sDeviceType:Lcom/motorola/ccc/cce/CCEUtils$DeviceType;

    return-object p0
.end method

.method public static getLastLoginStatus()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/motorola/ccc/cce/CCEUtils;->lastLoginStatus:Ljava/lang/String;

    return-object v0
.end method

.method public static getSessionToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCESettings;->getSessionToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWSProxyServiceIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.service.blur.Actions.BIND_WSPROXY_SVC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCEUtils;->isOldMotoDevice(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "com.motorola.blur.service.blur.BlurServiceMother"

    if-eqz v1, :cond_0

    const-string p0, "com.motorola.ccc.cce"

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object v0
.end method

.method public static isAdminUser(Landroid/content/Context;)Z
    .locals 6

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isCCEApp(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/motorola/blur/service/blur/CCEActions;->cccAppList:Ljava/util/List;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isCCEIndigo(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.motorola.ccc.cce"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz p0, :cond_1

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v4, "com.motorola.blur.service.blur.BlurServiceMother"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return v0
.end method

.method public static isCtaVersion()Z
    .locals 3

    invoke-static {}, Lcom/motorola/blur/service/blur/Configuration;->isCNDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "persist.sys.lenovo_setup_privacy"

    invoke-static {v0}, Lcom/motorola/blur/service/blur/BSUtils;->getSystemStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isCtaVersion: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CCEUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isDeviceTypeWatch(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.watch"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "CCEUtils"

    const-string v0, "Device TYPE Watch"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isInvalidDevice(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCEUtils;->getDeviceType(Landroid/content/Context;)Lcom/motorola/ccc/cce/CCEUtils$DeviceType;

    move-result-object p0

    sget-object v0, Lcom/motorola/ccc/cce/CCEUtils$DeviceType;->INVALID:Lcom/motorola/ccc/cce/CCEUtils$DeviceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMotoDevice(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCEUtils;->getDeviceType(Landroid/content/Context;)Lcom/motorola/ccc/cce/CCEUtils$DeviceType;

    move-result-object p0

    sget-object v0, Lcom/motorola/ccc/cce/CCEUtils$DeviceType;->MOTO:Lcom/motorola/ccc/cce/CCEUtils$DeviceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNonMotoDevice(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCEUtils;->getDeviceType(Landroid/content/Context;)Lcom/motorola/ccc/cce/CCEUtils$DeviceType;

    move-result-object p0

    sget-object v0, Lcom/motorola/ccc/cce/CCEUtils$DeviceType;->NONMOTO:Lcom/motorola/ccc/cce/CCEUtils$DeviceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isOldMotoDevice(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCEUtils;->getDeviceType(Landroid/content/Context;)Lcom/motorola/ccc/cce/CCEUtils$DeviceType;

    move-result-object p0

    sget-object v0, Lcom/motorola/ccc/cce/CCEUtils$DeviceType;->OLDMOTO:Lcom/motorola/ccc/cce/CCEUtils$DeviceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isOneLenovoIDAvailable(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/motorola/ccc/cce/CCEUtils;->isMotoDevice(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCEUtils;->amIProxyApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.lenovo.lsf.user"

    invoke-static {p0, v1}, Lcom/motorola/ccc/cce/CCEUtils;->isSystemPackagePresent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-static {p0}, Lcom/motorola/ccc/cce/CCEUtils;->isNonMotoDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCEUtils;->amIProxyApp(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public static isSystemPackagePresent(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    move v1, p1

    :catch_0
    :cond_0
    return v1
.end method

.method public static isTOSAcceptedMoto(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;->getInstance(Landroid/content/Context;)Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;

    move-result-object p0

    const-string v0, "CCEUtils"

    if-eqz p0, :cond_0

    const-string v1, "com.motorola.android.provider.MotorolaSettings$Secure"

    const-string v2, "privacy_motorola_terms_of_service"

    invoke-virtual {p0, v1, v2}, Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;->getMotoSettingValueAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "Motorola Settings instance is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "-1"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TOS value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static sendEmail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.ccc.cce.email.action.SEND_EMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "requestId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "payload"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "responseAction"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/motorola/ccc/cce/CCEUtils;->sendIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static sendIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCEUtils;->isOldMotoDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.motorola.ccc.cce"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/motorola/blur/service/blur/BSUtils;->sendPrivateBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public static sendWSRequest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "wsReqId"

    new-instance v1, Lcom/motorola/ccc/cce/CCEUtils$Holder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/ccc/cce/CCEUtils$Holder;-><init>(Lcom/motorola/ccc/cce/CCEUtils$1;)V

    const-string v3, "CCEUtils"

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    :cond_0
    if-nez p1, :cond_2

    invoke-static {}, Lcom/motorola/ccc/cce/CCEUtils;->DEBUG()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "sendWSRequest input is null"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v2

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v10, Landroid/content/Intent;

    const-string v4, "com.motorola.blur.APPWSPROXY_CCE_EXTERNAL_WS_REQUEST_ACTION"

    invoke-direct {v10, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    if-eq v4, v5, :cond_5

    const-string v4, "wsRequest"

    invoke-virtual {v10, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "com.motorola.blur.wsresponse"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "respondTo"

    invoke-virtual {v10, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v11, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v11, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v12, Lcom/motorola/ccc/cce/CCEUtils$1;

    invoke-direct {v12, v1, v11}, Lcom/motorola/ccc/cce/CCEUtils$1;-><init>(Lcom/motorola/ccc/cce/CCEUtils$Holder;Ljava/util/concurrent/CountDownLatch;)V

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v7, "com.motorola.blur.service.blur.Permissions.INTERACT_BLUR_SERVICE"

    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object v4, p0

    move-object v5, v12

    invoke-static/range {v4 .. v9}, Lcom/motorola/blur/service/blur/BSUtils;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)V

    invoke-static {p0, v10}, Lcom/motorola/ccc/cce/CCEUtils;->sendIntent(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {}, Lcom/motorola/ccc/cce/CCEUtils;->DEBUG()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "ws Broadcast sent, waiting for the response"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v3, 0x0

    :try_start_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v5, 0xea60

    invoke-virtual {v11, v5, v6, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move v4, v3

    :goto_0
    if-nez v4, :cond_4

    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    const-string p1, "dummy"

    :goto_1
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ConnectTimeoutError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Timeout Error"

    invoke-static {p1, v3, v0, v4, v2}, Lcom/motorola/ccc/cce/CCEUtils;->generateRespJsonString(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/motorola/ccc/cce/CCEUtils$Holder;->setValue(Ljava/lang/Object;)V

    :cond_4
    invoke-static {p0, v12}, Lcom/motorola/blur/service/blur/BSUtils;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    invoke-virtual {v1}, Lcom/motorola/ccc/cce/CCEUtils$Holder;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This method cannot be called on Main/UI thread !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    invoke-static {}, Lcom/motorola/ccc/cce/CCEUtils;->DEBUG()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "got invalid context in sendWSRequest"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-object v2
.end method

.method public static setLastLoginStatus(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/motorola/ccc/cce/CCEUtils;->lastLoginStatus:Ljava/lang/String;

    return-void
.end method

.method public static setMotoSettingsGlobalProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;->getInstance(Landroid/content/Context;)Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "com.motorola.android.provider.MotorolaSettings$Global"

    invoke-virtual {p0, v0, p1, p2}, Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;->putMotoSettingValueAsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "CCEUtils"

    const-string p1, "MotorolaSettings instance is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static startCCEServices(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.service.blur.Actions.START_BLUR_SERVICES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCEUtils;->isNonMotoDevice(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "CCEUtils"

    const-string v4, "com.motorola.blur.service.blur.BlurServiceMother"

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/motorola/ccc/cce/CCEUtils;->isOldMotoDevice(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "com.motorola.ccc.cce"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/motorola/ccc/cce/CCEUtils;->isMotoDevice(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCEUtils;->amIProxyApp(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.motorola.ccc.devicemanagement"

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "failed to start Proxy app CCE services"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, "failed to start CCE services"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "unsupported device"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static updateEnterpriseEdition(Landroid/content/Context;)V
    .locals 2

    const-string v0, "persist.app.settings.enterprise_edition"

    invoke-static {v0}, Lcom/motorola/blur/service/blur/BSUtils;->getSystemStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "enterprise_edition"

    invoke-static {p0, v1, v0}, Lcom/motorola/ccc/cce/CCEUtils;->setMotoSettingsGlobalProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
