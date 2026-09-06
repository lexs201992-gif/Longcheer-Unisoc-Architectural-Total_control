.class public final Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;
.super Landroid/content/BroadcastReceiver;
.source "MMApiProvisionService.java"

# interfaces
.implements Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning;
.implements Lcom/motorola/blur/service/blur/ws/MMApiWebService$WSRequestCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService$Error;
    }
.end annotation


# static fields
.field private static final BACKOFF_REQUEST_APP_NAME:Ljava/lang/String; = "MMApiProvisionServiceRequest"

.field private static final BACKOFF_RESPONSE_APP_NAME:Ljava/lang/String; = "MMApiProvisionServiceResponse"

.field public static final BOOKING_TRACKINGID_PERSIST_PROP:Ljava/lang/String; = "persist.app.booking.trackingid"

.field public static final CCE_CONFIG_UPDATED_ACTION:Ljava/lang/String; = "com.motorola.blur.service.mother.mmapi.config.updated"

.field private static final DEFAULT_SESSION_EXPIRATION_INTERVAL:I = 0x15180

.field private static final FACEBOOK_PARTNERID_KEY:Ljava/lang/String; = "persist.app.facebook.partnerid"

.field private static final KEY:Ljava/lang/String; = "key"

.field private static final KEY_ERROR:Ljava/lang/String; = "com.motorola.blur.service.blur.deviceprovisioning.error"

.field private static final LIMIT_LOGIN_REQUEST_BACKOFF_APP_NAME:Ljava/lang/String; = "MMApiProvisionServiceLimitLoginReqs"

.field public static final LOG_TAG:Ljava/lang/String; = "MMApiProvisionService"

.field private static final MAX_RETRY_AFTER_SECS:I = 0x708

.field private static final MAX_SESSION_EXPIRATION_INTERVAL:I = 0x4f1a00

.field private static final MIN_SESSION_EXPIRATION_INTERVAL:I = 0x708

.field public static final MMAPI_FORCED_LOGIN_ACTION:Ljava/lang/String; = "com.motorola.blur.service.mmapi.force.login"

.field public static final MMAPI_FORCED_LOGIN_REASON:Ljava/lang/String; = "KEY_REQUEST_REASON"

.field public static final MMAPI_FORCED_LOGIN_REASON_C2DM:Ljava/lang/String; = "c2dm"

.field public static final MMAPI_FORCED_LOGIN_REASON_SESSION_INVALID:Ljava/lang/String; = "invalid_session"

.field public static final MMAPI_SESSION_EXPIRED_ACTION:Ljava/lang/String; = "com.motorola.blur.service.mmapi.session.expired"

.field public static final MMAPI_SUCCESSFUL_LOGIN_ACTION:Ljava/lang/String; = "com.motorola.blur.service.mmapi.succesful.login"

.field private static final PREF_MOD_SET_AT_LAST_LOGIN:Ljava/lang/String; = "mod_set_at_last_login"

.field private static final PREF_ONLINE_MOD_SET_AT_LAST_LOGIN:Ljava/lang/String; = "online_mod_set_at_last_login"

.field private static final PROVISION_FLAG:Ljava/lang/String; = "provision.flag"

.field private static final PROVISION_TIME:Ljava/lang/String; = "blur.service.mother.provisionTime"

.field private static final SDK_INTRODUCED_JOBSCHEDULER:I = 0x15

.field public static final SPOTIFY_PARTNERID_PERSIST_PROP:Ljava/lang/String; = "persist.app.spotify.music.partnerid"

.field public static final SPOTIFY_REFERRERID_PERSIST_PROP:Ljava/lang/String; = "persist.app.spotify.music.referrerid"

.field public static final UPDATE_DEVICE_INFO:Ljava/lang/String; = "com.motorola.blur.service.update.device.info"

.field private static final VALUE:Ljava/lang/String; = "value"

.field private static instance_:Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;


# instance fields
.field private channelIDUpdated:Z

.field private mAppId:Ljava/lang/String;

.field private mAppSecret:Ljava/lang/String;

.field private mBackOffReqType:Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;

.field private mBackOffService:Lcom/motorola/blur/service/blur/MMApiBackOffService;

.field private mConfig:Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;

.field private mDevInfo:Lcom/motorola/blur/service/blur/platform/IPlatform$DeviceInfo;

.field private mDeviceId:Ljava/lang/String;

.field private mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

.field private mForceLogin:Z

.field private mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

.field private mMMApiWS:Lcom/motorola/blur/service/blur/ws/MMApiWebService;

.field private mMaxForcedLoginCnt:I

.field private mNetwork:Lcom/motorola/blur/service/blur/platform/IPlatform$Network;

.field private mNonce:Ljava/lang/String;

.field private mNumOfForcedLogins:I

.field private mOutstandingReq:Z

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mReqType:Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;

.field private mSessionExpiration:Ljava/lang/String;

.field private mSessionToken:Ljava/lang/String;

.field private mSettingsVersion:Ljava/lang/String;

.field private mSignature:Ljava/lang/String;

.field private provisioningReqOnLoginError:Z


# direct methods
.method private constructor <init>(Lcom/motorola/blur/service/blur/platform/IPlatform;Lcom/motorola/blur/service/blur/ws/MMApiWebService;)V
    .locals 9

    const-string v0, "MMApiProvisionService"

    const-string v1, "Configuring max forced login attempts to "

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mOutstandingReq:Z

    iput-boolean v2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->provisioningReqOnLoginError:Z

    const-string v3, ""

    iput-object v3, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mNonce:Ljava/lang/String;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mSignature:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->channelIDUpdated:Z

    iput-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    iput-object p2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mMMApiWS:Lcom/motorola/blur/service/blur/ws/MMApiWebService;

    invoke-interface {p1}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getConfiguration()Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mConfig:Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;

    iget-object p2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {p2}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getLogger()Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    iget-object p2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {p2}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getNetwork()Lcom/motorola/blur/service/blur/platform/IPlatform$Network;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mNetwork:Lcom/motorola/blur/service/blur/platform/IPlatform$Network;

    iget-object p2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mConfig:Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;

    invoke-interface {p2}, Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;->getCCEAppId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mAppId:Ljava/lang/String;

    iget-object p2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mConfig:Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;

    invoke-interface {p2}, Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;->getCCEAppSecret()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mAppSecret:Ljava/lang/String;

    const-string v6, "com.motorola.blur.service.blur.Permissions.INTERACT_BLUR_SERVICE"

    invoke-static {p1}, Lcom/motorola/blur/service/blur/MMApiBackOffService;->getInstance(Lcom/motorola/blur/service/blur/platform/IPlatform;)Lcom/motorola/blur/service/blur/MMApiBackOffService;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mBackOffService:Lcom/motorola/blur/service/blur/MMApiBackOffService;

    :try_start_0
    iget-object p2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mConfig:Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;

    sget-object v3, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_MAX_LOGIN_ATTEMPTS:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v3}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;->getConfigValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mMaxForcedLoginCnt:I

    iget-object p2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mMaxForcedLoginCnt:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v1, "Error parsing MMAPI_MAX_LOGIN_ATTEMPTS .. "

    invoke-interface {p2, v0, v1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mMaxForcedLoginCnt:I

    :goto_0
    new-instance v5, Landroid/content/IntentFilter;

    const-string p2, "com.motorola.blur.service.mmapi.session.expired"

    invoke-direct {v5, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p2, "com.motorola.blur.service.mmapi.force.login"

    invoke-virtual {v5, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "com.motorola.blur.service.blur.Actions.CCE_PROVISION_DEVICE"

    invoke-virtual {v5, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "com.motorola.blur.service.blur.Actions.CCE_CONTINUE_PROVISION_DEVICE"

    invoke-virtual {v5, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "com.motorola.blur.service.mmapi.trynow"

    invoke-virtual {v5, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "com.motorola.cce.Actions.RETRY_WAITING_REQUEST"

    invoke-virtual {v5, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "com.motorola.blur.service.update.device.info"

    invoke-virtual {v5, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x2

    move-object v4, p0

    invoke-static/range {v3 .. v8}, Lcom/motorola/blur/service/blur/BSUtils;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)V

    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    invoke-interface {p1, v0}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->registerTag(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string p1, "MMApiProvisionService created..."

    invoke-interface {p0, v0, p1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private _hasPendingReq()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mOutstandingReq:Z

    return p0
.end method

.method private _setMMApiCredInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v1, "MMApiProvisionService"

    const-string v2, "_setMMApiCredInfo: storing credential info"

    invoke-interface {v0, v1, v2}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v1, "MMApiProvisionService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_setMMApiCredInfo: deviceId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v1}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getDeviceInfo()Lcom/motorola/blur/service/blur/platform/IPlatform$DeviceInfo;

    move-result-object v1

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_DEVICE_ID:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v3}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_SESSION_TOKEN:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_SESSION_EXPIRATION:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/motorola/blur/service/blur/Configuration;->PROVISION_TIME:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_PHONE_NUM:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1}, Lcom/motorola/blur/service/blur/platform/IPlatform$DeviceInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_SERIAL_NUM:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1}, Lcom/motorola/blur/service/blur/platform/IPlatform$DeviceInfo;->getSerialNumber()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_IMSI:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1}, Lcom/motorola/blur/service/blur/platform/IPlatform$DeviceInfo;->getIMSI()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_IMEI:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1}, Lcom/motorola/blur/service/blur/platform/IPlatform$DeviceInfo;->getIMEI()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/motorola/blur/service/blur/BSUtils;->isMultiSimDevice()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    sget-object p0, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_PHONE_NUM2:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p2}, Lcom/motorola/blur/service/blur/platform/IPlatform$DeviceInfo;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p0, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_IMSI2:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p2}, Lcom/motorola/blur/service/blur/platform/IPlatform$DeviceInfo;->getIMSI(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p0, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_IMEI2:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p2}, Lcom/motorola/blur/service/blur/platform/IPlatform$DeviceInfo;->getIMEI(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {p0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/blur/service/blur/BSUtils;->isCDMAOnlyDevice(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_MEID:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1}, Lcom/motorola/blur/service/blur/platform/IPlatform$DeviceInfo;->getMEID()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v0

    return p2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private _setMMApiSettings(Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v2, "MMApiProvisionService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_setMMApiSettings: storing updated settings for settings version: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v1}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/ccc/cce/CCEUtils;->isMotoDevice(Landroid/content/Context;)Z

    move-result v1

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_8

    new-instance v3, Ljava/util/EnumMap;

    const-class v4, Lcom/motorola/blur/service/blur/Configuration$Category;

    invoke-direct {v3, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/blur/service/blur/Configuration$Category;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v5}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_SETTINGS_VERSION:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, p1}, Lcom/motorola/ccc/cce/CCESettings;->insertValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object v5, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_SETTINGS_VERSION:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v5}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    iget-object v5, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v6, "MMApiProvisionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "storing setting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v5}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/motorola/ccc/cce/CCESettings;->insertValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_3
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/motorola/blur/service/blur/Configuration;->getConfig(Ljava/lang/String;)Lcom/motorola/blur/service/blur/Configuration;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/motorola/blur/service/blur/Configuration;->category()Lcom/motorola/blur/service/blur/Configuration$Category;

    move-result-object p2

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    sget-object p2, Lcom/motorola/blur/service/blur/Configuration$Category;->DEFAULT:Lcom/motorola/blur/service/blur/Configuration$Category;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_4
    if-nez v1, :cond_5

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {p1}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.service.mother.mmapi.config.updated"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    sget-object p1, Lcom/motorola/blur/service/blur/Configuration$Category;->DEFAULT:Lcom/motorola/blur/service/blur/Configuration$Category;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string p2, "MMApiProvisionService"

    const-string v1, "_setMMApiSettings Settings for default category have changed .. notifying all apps "

    invoke-interface {p1, p2, v1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.motorola.cce.Actions.CCE_SETTINGS_UPDATED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {p0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p2, "com.motorola.blur.service.blur.Permissions.INTERACT_BLUR_SERVICE"

    invoke-static {p0, p1, p2}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/blur/service/blur/Configuration$Category;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v2, "MMApiProvisionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_setMMApiSettings Settings for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/motorola/blur/service/blur/Configuration$Category;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " changed .. notifying app"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.cce.Actions.CCE_SETTINGS_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/motorola/blur/service/blur/Configuration$Category;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {p2}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v2, "com.motorola.blur.service.blur.Permissions.INTERACT_BLUR_SERVICE"

    invoke-static {p2, v1, v2}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string p1, "MMApiProvisionService"

    const-string p2, "_setMMApiSettings: no settings found"

    invoke-interface {p0, p1, p2}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_5
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private executeRequest(Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Request;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mOutstandingReq:Z

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mMMApiWS:Lcom/motorola/blur/service/blur/ws/MMApiWebService;

    invoke-virtual {v0, p1, p0}, Lcom/motorola/blur/service/blur/ws/MMApiWebService;->initiateWebRequest(Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;Lcom/motorola/blur/service/blur/ws/MMApiWebService$WSRequestCallback;)V

    return-void
.end method

.method private declared-synchronized getDeviceIDJSON()Ljava/lang/String;
    .locals 8

    const-string v0, "Failed to create JSON object for getDeviceIDJSON"

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->getDeviceSecret()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v1, "MMApiProvisionService"

    const-string v3, "Failed to generate device secret for getDeviceIDJSON"

    invoke-interface {v0, v1, v3}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_0
    const/4 v3, 0x1

    :try_start_1
    invoke-static {v3}, Lcom/motorola/blur/service/blur/DeviceInfo;->getDeviceInfoJsonObj(Z)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    if-eqz v3, :cond_1

    const-string v5, "deviceSecret"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceInfo"

    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "hwType"

    const-string v6, "hwType"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "region"

    const-string v6, "region"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "carrier"

    const-string v6, "carrier"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "extra"

    iget-object v6, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v6}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "channelID"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/motorola/blur/service/blur/BSUtils;->getExtraSettingsFilter(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "settingFilters"

    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "signature"

    iget-object v3, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mSignature:Ljava/lang/String;

    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "nonce"

    iget-object v3, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mNonce:Ljava/lang/String;

    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v1, "certificate"

    new-instance v3, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate;

    iget-object v5, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v5}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate;->getCertificate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate$GDCException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_3
    const-string v1, "certificate"

    const-string v3, ""

    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v3, "MMApiProvisionService"

    const-string v5, "certificate not found. So sending empty string instead."

    invoke-interface {v1, v3, v5}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v3, "MMApiProvisionService"

    const-string v4, "Failed to create JSON object for getDeviceIDJSON"

    invoke-interface {v1, v3, v4}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v2

    :catch_1
    move-exception v1

    :try_start_5
    iget-object v3, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v4, "MMApiProvisionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getDeviceSecret()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mConfig:Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;

    sget-object v1, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_DEVICE_SECRET:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;->getConfigValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    const/16 v1, 0x14

    new-array v2, v1, [B

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v2}, Lcom/motorola/blur/service/blur/SRPUtil;->tohex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mConfig:Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;

    sget-object v2, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_DEVICE_SECRET:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v2}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;->setConfigValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v0, "MMApiProvisionService"

    const-string v1, "Failed to generate device secret..."

    invoke-interface {p0, v0, v1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getInstance(Lcom/motorola/blur/service/blur/platform/IPlatform;Lcom/motorola/blur/service/blur/ws/MMApiWebService;)Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;
    .locals 2

    sget-object v0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->instance_:Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;

    if-nez v0, :cond_1

    const-class v0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->instance_:Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;

    if-nez v1, :cond_0

    new-instance v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;

    invoke-direct {v1, p0, p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;-><init>(Lcom/motorola/blur/service/blur/platform/IPlatform;Lcom/motorola/blur/service/blur/ws/MMApiWebService;)V

    sput-object v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->instance_:Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->instance_:Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;

    return-object p0
.end method

.method private getLoginJSON(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-string v0, "certificate"

    const-string v1, "carrier"

    const-string v2, "region"

    const-string v3, "hwType"

    const-string v4, "Failed to create JSON object for getLoginRequest"

    invoke-direct {p0}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->getDeviceSecret()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    return-object v6

    :cond_0
    const-string v7, "MMApiProvisionService"

    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    iget-object v8, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v9, "getLoginJSON(): deviceID  or settingsVersion are not valid"

    invoke-interface {v8, v7, v9}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v8, 0x0

    :try_start_0
    invoke-static {v8}, Lcom/motorola/blur/service/blur/DeviceInfo;->getDeviceInfoJsonObj(Z)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    if-eqz v8, :cond_3

    const-string v10, "deviceId"

    invoke-virtual {v9, v10, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "deviceSecret"

    invoke-virtual {v9, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "sessionToken"

    invoke-virtual {v9, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "version"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "config"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "deviceInfo"

    invoke-virtual {v9, p1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "extra"

    iget-object p3, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {p3}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v1, "channelID"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/motorola/blur/service/blur/BSUtils;->getExtraSettingsFilter(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "settingFilters"

    invoke-virtual {v9, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "signature"

    iget-object p2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mSignature:Ljava/lang/String;

    invoke-virtual {v9, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "nonce"

    iget-object p2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mNonce:Ljava/lang/String;

    invoke-virtual {v9, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance p1, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate;

    iget-object p2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {p2}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate;->getCertificate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate$GDCException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p1, ""

    invoke-virtual {v9, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string p2, "certificate not found. So sending empty string instead."

    invoke-interface {p1, v7, p2}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    invoke-interface {p1, v7, v4}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v6

    :catch_1
    move-exception p1

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v7, p1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method private getUpdateDeviceInfoJSON(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "certificate"

    const-string v1, "carrier"

    const-string v2, "region"

    const-string v3, "hwType"

    const-string v4, "Failed to create JSON object for getUpdateDeviceInfoJSON"

    invoke-direct {p0}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->getDeviceSecret()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "MMApiProvisionService"

    if-nez v5, :cond_0

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string p1, "Failed to generate device secret for getUpdateDeviceInfoJSON"

    invoke-interface {p0, v7, p1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :cond_0
    const/4 v8, 0x1

    :try_start_0
    invoke-static {v8}, Lcom/motorola/blur/service/blur/DeviceInfo;->getDeviceInfoJsonObj(Z)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    iget-object v10, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mConfig:Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;

    invoke-interface {v10}, Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;->getMMApiDeviceID()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mConfig:Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;

    invoke-interface {v11}, Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;->getMMApiSessionToken()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mConfig:Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;

    invoke-interface {v12}, Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;->getMMApiSettingsVersion()Ljava/lang/String;

    move-result-object v12

    if-eqz v8, :cond_2

    const-string v13, "deviceId"

    invoke-virtual {v9, v13, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "deviceSecret"

    invoke-virtual {v9, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "sessionToken"

    invoke-virtual {v9, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "version"

    invoke-virtual {v5, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "config"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "deviceInfo"

    invoke-virtual {v9, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "settingFilters"

    invoke-virtual {v9, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "signature"

    iget-object v2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mSignature:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "nonce"

    iget-object v2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mNonce:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v1, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate;

    iget-object v2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v2}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate;->getCertificate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate$GDCException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, ""

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v1, "certificate not found. So sending empty string instead."

    invoke-interface {v0, v7, v1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    invoke-interface {p1, v7, v4}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v6

    :catch_1
    move-exception p1

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v7, p1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method private handleDMError(Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;)Z
    .locals 9

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;->getDPError()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/motorola/dp/exception/DPException$Error;->DM_INVALID_CREDENTIALS:Lcom/motorola/dp/exception/DPException$Error;

    invoke-virtual {v1}, Lcom/motorola/dp/exception/DPException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "MMApiProvisionServiceResponse"

    const-string v3, "handleDMError(): got "

    const/4 v4, 0x1

    const-string v5, "MMApiProvisionService"

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;->getType()Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;

    move-result-object v1

    sget-object v7, Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;->update_device:Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;

    if-ne v1, v7, :cond_0

    iget-object v1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " re-provisioning ..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->provisioningReqOnLoginError:Z

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.motorola.blur.service.blur.Actions.CCE_PROVISION_DEVICE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/motorola/ccc/cce/CCEUtils;->sendIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " for create device .. ignoring"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    sget-object v1, Lcom/motorola/dp/exception/DPException$Error;->DM_SERVER_ERROR:Lcom/motorola/dp/exception/DPException$Error;

    invoke-virtual {v1}, Lcom/motorola/dp/exception/DPException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;->getDPErrorText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", so back off and retry later ..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;->getRawMsgData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v7, "retry_after"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v3, v1

    :catch_1
    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "handleDMError(): Exception while parsing retry_after param from: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v5, v3}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    iget-object v3, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v7, "handleDMError(): Exception while parsing DP response: "

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v5, v0}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x708

    if-lez v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_2
    new-array v0, v4, [I

    mul-int/lit16 v3, v3, 0x3e8

    aput v3, v0, v6

    iget-object v3, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "handleDMError(): backing off for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " seconds as server requested ..."

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v5, v1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mBackOffService:Lcom/motorola/blur/service/blur/MMApiBackOffService;

    invoke-virtual {v1, v2, v0}, Lcom/motorola/blur/service/blur/MMApiBackOffService;->setBackOffValue(Ljava/lang/String;[I)V

    :cond_3
    move v0, v4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "handleResponse(): got "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", nothing can be done with it, so we\'re bailing..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService$Error;->ERROR_FAIL:Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService$Error;

    invoke-direct {p0, v0}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->notifyProvisioningDone(Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService$Error;)V

    :goto_1
    move v0, v6

    :goto_2
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mBackOffService:Lcom/motorola/blur/service/blur/MMApiBackOffService;

    invoke-virtual {v0, v2, v6}, Lcom/motorola/blur/service/blur/MMApiBackOffService;->connectStatus(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;->getType()Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mBackOffReqType:Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mBackOffService:Lcom/motorola/blur/service/blur/MMApiBackOffService;

    invoke-virtual {p0, v2, v4}, Lcom/motorola/blur/service/blur/MMApiBackOffService;->connectStatus(Ljava/lang/String;Z)V

    :goto_3
    return v4
.end method

.method private isLoginRequired(Ljava/lang/String;)Z
    .locals 10

    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mForceLogin:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mConfig:Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;

    sget-object v2, Lcom/motorola/blur/service/blur/Configuration;->PROVISION_TIME:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v2}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;->getConfigValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-wide v4, v2

    :goto_0
    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mConfig:Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;

    sget-object v6, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_SESSION_EXPIRATION:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;->getConfigValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-wide v6, v2

    :goto_1
    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long/2addr v4, v6

    sub-long/2addr v4, v8

    cmp-long p1, v4, v2

    if-lez p1, :cond_2

    cmp-long p1, v4, v6

    if-gez p1, :cond_2

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {p0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "com.motorola.blur.service.mmapi.session.expired"

    invoke-static {p1, p0, v4, v5, v1}, Lcom/motorola/blur/service/blur/JobSchedulerService;->schedule(Ljava/lang/String;Landroid/content/Context;JZ)V

    move v1, v0

    :cond_2
    return v1
.end method

.method private isRequestAllowed(Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;)Z
    .locals 3

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.motorola.ccc.devicemanagement"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;->create_device:Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;

    const-string v2, "MMApiProvisionService"

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->provisioningReqOnLoginError:Z

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v0, "isRequestAllowed(): Device ID already provisioned ... ignoring request"

    invoke-interface {p1, v2, v0}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService$Error;->ERROR_ALREADY:Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService$Error;

    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->notifyProvisioningDone(Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService$Error;)V

    return v1

    :cond_1
    sget-object v0, Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;->update_device:Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->isDeviceProvisioned()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string p1, "isRequestAllowed(): Ignoring login request as device ID is not provisioned"

    invoke-interface {p0, v2, p1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->isDeviceProvisioned()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mConfig:Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;

    invoke-interface {p1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;->getMMApiDeviceID()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->isLoginRequired(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->_hasPendingReq()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mBackOffService:Lcom/motorola/blur/service/blur/MMApiBackOffService;

    const-string v0, "MMApiProvisionServiceResponse"

    invoke-virtual {p1, v0}, Lcom/motorola/blur/service/blur/MMApiBackOffService;->isAppBackingOff(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mAppId:Ljava/lang/String;

    if-eqz p1, :cond_6

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mAppSecret:Ljava/lang/String;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string p1, "isRequestAllowed(): Invalid App ID or App Secret .. ignoring request"

    invoke-interface {p0, v2, p1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string p1, "isRequestAllowed(): already have outstanding request ... ignoring request"

    invoke-interface {p0, v2, p1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private declared-synchronized isRequestRequired()Z
    .locals 6

    const-string v0, " value of provisionFlag "

    const-string v1, " value of provisionFlag "

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mConfig:Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;

    const-string v3, "provision.flag"

    invoke-interface {v2, v3}, Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;->getConfigValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v4, "MMApiProvisionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    monitor-exit p0

    return v2

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v3, "MMApiProvisionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mConfig:Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;

    const-string v5, "provision.flag"

    invoke-interface {v0, v5}, Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;->getConfigValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    :cond_2
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mConfig:Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;

    const-string v1, "provision.flag"

    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;->setConfigValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isTOSAccepted(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lcom/motorola/ccc/cce/CCEUtils;->isDeviceTypeWatch(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/motorola/ccc/cce/CCEUtils;->isMotoDevice(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/motorola/ccc/cce/CCEUtils;->isTOSAcceptedMoto(Landroid/content/Context;)Z

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/motorola/ccc/cce/CCEUtils;->isNonMotoDevice(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/motorola/blur/service/blur/Configuration;->TOS_ACCEPTED:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-static {p1, p0, v0}, Lcom/motorola/ccc/cce/CCESettings;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyLoginDone()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.blur.service.mmapi.succesful.login"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/ccc/cce/CCEUtils;->isMotoDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {p0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.notification.RETREIVE_NOTIFICATIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private notifyProvisioningDone(Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService$Error;)V
    .locals 3

    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->provisioningReqOnLoginError:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v1, "MMApiProvisionService"

    const-string v2, "notifyProvisioningDone(): Sending Device Provision response intent"

    invoke-interface {v0, v1, v2}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.service.blur.Actions.CCE_PROVISION_DEVICE_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.motorola.blur.service.blur.deviceprovisioning.error"

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService$Error;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {p0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->provisioningReqOnLoginError:Z

    :goto_0
    return-void
.end method

.method private parseThirdPartyJsonString(Ljava/lang/String;)V
    .locals 4

    const-string v0, "MMApiProvisionService"

    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/motorola/blur/service/blur/deviceprovisioning/ThirdPartyPojo;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/blur/service/blur/deviceprovisioning/ThirdPartyPojo;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/ThirdPartyPojo;->getSpotifyProps()Lcom/motorola/blur/service/blur/deviceprovisioning/ThirdPartyPojo$SpotifyPropsPojo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/deviceprovisioning/ThirdPartyPojo$SpotifyPropsPojo;->getSpotifyPartnerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/deviceprovisioning/ThirdPartyPojo$SpotifyPropsPojo;->getSpotifyReferrerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "persist.app.spotify.music.partnerid"

    invoke-direct {p0, v3, v2}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->setPersistentProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "persist.app.spotify.music.referrerid"

    invoke-direct {p0, v2, v1}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->setPersistentProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/ThirdPartyPojo;->getBookingProps()Lcom/motorola/blur/service/blur/deviceprovisioning/ThirdPartyPojo$BookingPropsPojo;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/ThirdPartyPojo$BookingPropsPojo;->getTrackingIdbooking()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "persist.app.booking.trackingid"

    invoke-direct {p0, v1, p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->setPersistentProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v1, "Parsed value is null"

    invoke-interface {p1, v0, v1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception while setting persistant prop "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setChannelID(Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MMApiProvisionService"

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string p1, "Channel-ID settings from server is empty"

    invoke-interface {p0, v1, p1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "persist.app.settings.channel_id"

    invoke-direct {p0, v0, p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->setPersistentProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->channelIDUpdated:Z

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "channel_id"

    invoke-static {v0, v2, p1}, Lcom/motorola/ccc/cce/CCEUtils;->setMotoSettingsGlobalProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string p1, "Channel-ID not set due to database error!!!"

    invoke-interface {p0, v1, p1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.motorola.cce.Actions.CCE_CHANNEL_ID_UPDATED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v2}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/motorola/blur/service/blur/BSUtils;->getAllUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Channel-ID "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " successfully set!!!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setMMApiCredInfoToMainApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v1, "setMMApiCredInfoToMainApp: storing credential info"

    const-string v2, "MMApiProvisionService"

    invoke-interface {v0, v2, v1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getDeviceInfo()Lcom/motorola/blur/service/blur/platform/IPlatform$DeviceInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setMMApiCredInfoToMainApp: deviceId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v1}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_DEVICE_ID:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v2}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/motorola/ccc/cce/CCESettings;->insertValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {p1}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_SESSION_TOKEN:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lcom/motorola/ccc/cce/CCESettings;->insertValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {p1}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_SESSION_EXPIRATION:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {p2}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/motorola/ccc/cce/CCESettings;->insertValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {p1}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_PHONE_NUM:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {p2}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/platform/IPlatform$DeviceInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/motorola/ccc/cce/CCESettings;->insertValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {p1}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_SERIAL_NUM:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {p2}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/platform/IPlatform$DeviceInfo;->getSerialNumber()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/motorola/ccc/cce/CCESettings;->insertValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {p1}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/motorola/blur/service/blur/Configuration;->PROVISION_TIME:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {p2}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/motorola/ccc/cce/CCESettings;->insertValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {p1}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_IMSI:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {p2}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/platform/IPlatform$DeviceInfo;->getIMSI()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/motorola/ccc/cce/CCESettings;->insertValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {p1}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_IMEI:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {p2}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/platform/IPlatform$DeviceInfo;->getIMEI()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/motorola/ccc/cce/CCESettings;->insertValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/blur/service/blur/BSUtils;->isMultiSimDevice()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {p1}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_PHONE_NUM2:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {p2}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-interface {v0, p3}, Lcom/motorola/blur/service/blur/platform/IPlatform$DeviceInfo;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/motorola/ccc/cce/CCESettings;->insertValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {p1}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_IMSI2:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {p2}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p3}, Lcom/motorola/blur/service/blur/platform/IPlatform$DeviceInfo;->getIMSI(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/motorola/ccc/cce/CCESettings;->insertValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {p0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_IMEI2:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p3}, Lcom/motorola/blur/service/blur/platform/IPlatform$DeviceInfo;->getIMEI(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/motorola/ccc/cce/CCESettings;->insertValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {p1}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/blur/service/blur/BSUtils;->isCDMAOnlyDevice(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {p0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_MEID:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/platform/IPlatform$DeviceInfo;->getMEID()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/motorola/ccc/cce/CCESettings;->insertValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setPersistentProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/motorola/blur/service/blur/deviceprovisioning/CloudSettingsUtility;->getUtility(Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/blur/service/blur/deviceprovisioning/CloudSettingsUtility;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/deviceprovisioning/CloudSettingsUtility;->execute()V

    :cond_0
    return-void
.end method

.method private setSubChannelID(Ljava/lang/String;)V
    .locals 4

    const-string v0, "persist.app.settings.sub_channel_id"

    invoke-direct {p0, v0, p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->setPersistentProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sub_channel_id"

    invoke-static {v0, v1, p1}, Lcom/motorola/ccc/cce/CCEUtils;->setMotoSettingsGlobalProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "MMApiProvisionService"

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v0, "Sub Channel-ID not set due to database error!!!"

    invoke-interface {p1, v1, v0}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sub Channel-ID "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " successfully set!!!"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.motorola.cce.Actions.CCE_SUB_CHANNEL_ID_READY"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {p0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "com.motorola.blur.service.blur.Permissions.INTERACT_BLUR_SERVICE"

    invoke-static {p0, p1, v0}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public continueCreateDeviceIdOrLogin(Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;)V
    .locals 8

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mNonce:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "MMApiProvisionService"

    if-eqz v0, :cond_0

    const-string p0, "Nonce is empty so dropping the request."

    invoke-static {v1, p0}, Lcom/motorola/blur/service/blur/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mConfig:Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;->getMMApiDeviceID()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mConfig:Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;->getMMApiSessionToken()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mConfig:Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;->getMMApiSettingsVersion()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService$1;->$SwitchMap$com$motorola$blur$service$blur$deviceprovisioning$IDeviceProvisioning$request_type:[I

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string p1, "createDeviceIdOrLogin(): Got invalid request type .. ignoring"

    invoke-interface {p0, v1, p1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->isLoginRequired(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mForceLogin:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mForceLogin:Z

    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v0, "mForceLogin set to false."

    invoke-interface {p1, v1, v0}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v0, "createDeviceIdOrLogin(): Got request to login .. processing now"

    invoke-interface {p1, v1, v0}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mAppId:Ljava/lang/String;

    iget-object v7, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mAppSecret:Ljava/lang/String;

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string p1, " No login Required "

    invoke-interface {p0, v1, p1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v0, "createDeviceIdOrLogin(): Got request to provision the device .. processing now"

    invoke-interface {p1, v1, v0}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mAppId:Ljava/lang/String;

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mAppSecret:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->provisionDevice(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public createDeviceIdOrLogin(Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createDeviceIdOrLogin "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MMApiProvisionService"

    invoke-static {v1, v0}, Lcom/motorola/blur/service/blur/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/blur/BSUtils;->isDataConnected(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string p1, "No network connection. Scheduling job to retry on network."

    invoke-static {v1, p1}, Lcom/motorola/blur/service/blur/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {p0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object p0

    const-wide/16 v0, 0x0

    const-string p1, "com.motorola.cce.Actions.RETRY_WAITING_REQUEST"

    invoke-static {p1, p0, v0, v1, v2}, Lcom/motorola/blur/service/blur/JobSchedulerService;->schedule(Ljava/lang/String;Landroid/content/Context;JZ)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/ccc/cce/CCEUtils;->isNonMotoDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->hasUserAccount()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->isDeviceProvisioned()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->getInstance()Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->createDevice()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mConfig:Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;

    invoke-interface {p1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;->getMMApiDeviceID()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->isLoginRequired(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->getInstance()Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->loginDevice()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/ccc/cce/CCEUtils;->amIProxyApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string p0, "Not proxy app, so login/provision not allowed"

    invoke-static {v1, p0}, Lcom/motorola/blur/service/blur/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->isRequestAllowed(Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mReqType:Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;

    iput-boolean v2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mOutstandingReq:Z

    const-string p1, "set mOutstandingReq to true."

    invoke-static {v1, p1}, Lcom/motorola/blur/service/blur/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/blur/service/blur/deviceprovisioning/Nonce;->getInstance()Lcom/motorola/blur/service/blur/deviceprovisioning/Nonce;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mMMApiWS:Lcom/motorola/blur/service/blur/ws/MMApiWebService;

    invoke-virtual {p1, v0, v1, p0}, Lcom/motorola/blur/service/blur/deviceprovisioning/Nonce;->getNonce(Landroid/content/Context;Lcom/motorola/blur/service/blur/platform/IPlatform;Lcom/motorola/blur/service/blur/ws/MMApiWebService;)V

    return-void
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getSessionExpiration()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mSessionExpiration:Ljava/lang/String;

    return-object p0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mSessionToken:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized handleResponse(Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;)Z
    .locals 20

    move-object/from16 v1, p0

    const-string v0, " response.hasSettings() "

    const-string v2, "handleResponse(): Session Expiration alarm set to expire at: "

    const-string v3, " using default value :86400"

    const-string v4, "handleResponse(): could not parse session expiration value sent by server : "

    const-string v5, "handleResponse(): Error when provisioning device, error code: "

    monitor-enter p0

    :try_start_0
    iget-object v6, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mConfig:Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;

    const-string v7, "provision.flag"

    const-string v8, "false"

    invoke-interface {v6, v7, v8}, Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;->setConfigValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v6, p1

    check-cast v6, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;

    sget-object v7, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService$Error;->ERROR_FAIL:Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService$Error;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "MMApiProvisionService.handleResponse ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;->getType()Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;->isOk()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v10, "MMApiProvisionService"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v10, v8}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mOutstandingReq:Z

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;->isOk()Z

    move-result v9

    const/4 v10, 0x1

    if-nez v9, :cond_1

    iget-object v0, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v2, "MMApiProvisionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;->getType()Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;

    move-result-object v0

    sget-object v2, Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;->create_device:Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;

    if-ne v0, v2, :cond_0

    invoke-direct {v1, v7}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->notifyProvisioningDone(Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService$Error;)V

    :cond_0
    iget-object v0, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mBackOffService:Lcom/motorola/blur/service/blur/MMApiBackOffService;

    const-string v2, "MMApiProvisionServiceResponse"

    invoke-virtual {v0, v2, v10}, Lcom/motorola/blur/service/blur/MMApiBackOffService;->connectStatus(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v8

    :cond_1
    :try_start_1
    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;->getDPError()Ljava/lang/String;

    move-result-object v5

    sget-object v9, Lcom/motorola/dp/exception/DPException$Error;->OK:Lcom/motorola/dp/exception/DPException$Error;

    invoke-virtual {v9}, Lcom/motorola/dp/exception/DPException$Error;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {v1, v6}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->handleDMError(Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :cond_2
    :try_start_2
    iget-object v5, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mBackOffService:Lcom/motorola/blur/service/blur/MMApiBackOffService;

    const-string v9, "MMApiProvisionServiceResponse"

    invoke-virtual {v5, v9, v10}, Lcom/motorola/blur/service/blur/MMApiBackOffService;->connectStatus(Ljava/lang/String;Z)V

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;->getChannelId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;->getSubChannelId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;->getThirdPartyJson()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;->getSessionToken()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mSessionToken:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;->getSettingsVersion()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mSettingsVersion:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;->getSessionExpiration()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mSessionExpiration:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;->getShipCountry()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;->getDefaultOptin()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;->getPartnerId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;->getEnterpriseEdition()Ljava/lang/String;

    move-result-object v15

    iget-object v8, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mDeviceId:Ljava/lang/String;

    if-eqz v8, :cond_17

    iget-object v8, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mSessionToken:Ljava/lang/String;

    if-eqz v8, :cond_17

    iget-object v8, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mSessionExpiration:Ljava/lang/String;

    if-eqz v8, :cond_17

    iget-object v7, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v7}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v7, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mSessionExpiration:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_4
    iget-object v7, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v8, "MMApiProvisionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mSessionExpiration:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v8, v3}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v3, 0x15180

    :goto_0
    const-wide/32 v7, 0x4f1a00

    cmp-long v10, v3, v7

    if-lez v10, :cond_3

    :goto_1
    move-wide v3, v7

    goto :goto_2

    :cond_3
    const-wide/16 v7, 0x708

    cmp-long v10, v3, v7

    if-gez v10, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    const-wide/16 v7, 0x3e8

    mul-long/2addr v7, v3

    const-string v10, "com.motorola.blur.service.mmapi.session.expired"

    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v17, v15

    const/4 v15, 0x1

    invoke-static {v10, v0, v7, v8, v15}, Lcom/motorola/blur/service/blur/JobSchedulerService;->schedule(Ljava/lang/String;Landroid/content/Context;JZ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    iget-object v0, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mConfig:Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;

    const-string v10, "blur.service.mother.provisionTime"

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v10, v15}, Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;->setConfigValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v10, "MMApiProvisionService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    add-long v7, v18, v7

    invoke-direct {v2, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v10, v2}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ro.carrier"

    invoke-static {v0}, Lcom/motorola/blur/service/blur/BSUtils;->getSystemStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v2}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v7, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_DEVICE_ID:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v7}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v2, v7, v8}, Lcom/motorola/ccc/cce/CCESettings;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v2}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/ccc/cce/CCEUtils;->isMotoDevice(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v2}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v7, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_CHANNEL_ID:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v7}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v5}, Lcom/motorola/ccc/cce/CCESettings;->insertValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v2}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v7, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_SUB_CHANNEL_ID:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v7}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v9}, Lcom/motorola/ccc/cce/CCESettings;->insertValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, ""

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;->getSettings()Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;->getSettings()Lorg/json/JSONObject;

    move-result-object v2

    sget-object v7, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_CHANNEL_ID_ENABLED:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v7}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;->getSettings()Lorg/json/JSONObject;

    move-result-object v7

    sget-object v10, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_CHANNEL_ID_ENABLED_CARRIERS:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v10}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;->getSettings()Lorg/json/JSONObject;

    move-result-object v7

    sget-object v8, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_CHANNEL_ID_ENABLED_CARRIERS:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v8}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "unknown"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "true"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v8, :cond_9

    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "true"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v8, :cond_7

    invoke-interface {v8, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    const-string v2, "user"

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    iget-object v2, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v5, "MMApiProvisionService"

    const-string v7, "Channel ID is disabled in settings or ro carrier has a valid value"

    invoke-interface {v2, v5, v7}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    :goto_3
    invoke-direct {v1, v5}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->setChannelID(Ljava/lang/String;)V

    :cond_a
    :goto_4
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v2}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v5, Lcom/motorola/blur/service/blur/Configuration;->EMAIL_MARKETING_OPTIN_DEFAULT:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v5}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v13}, Lcom/motorola/ccc/cce/CCESettings;->insertValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-boolean v2, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->channelIDUpdated:Z

    if-nez v2, :cond_c

    const-string v2, "persist.app.settings.channel_id"

    invoke-direct {v1, v2, v0}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->setPersistentProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.motorola.cce.Actions.CCE_CHANNEL_ID_READY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v2}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "com.motorola.blur.service.blur.Permissions.INTERACT_BLUR_SERVICE"

    invoke-static {v2, v0, v5}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {v1, v9}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->setSubChannelID(Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    const-string v0, "unknown"

    invoke-direct {v1, v0}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->setSubChannelID(Ljava/lang/String;)V

    :goto_5
    const/4 v15, 0x1

    goto :goto_6

    :cond_e
    const/4 v15, 0x0

    :goto_6
    iget-object v0, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_SHIPMENT_COUNTRY:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v2}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v12}, Lcom/motorola/ccc/cce/CCESettings;->insertValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/ccc/cce/CCEUtils;->isNonMotoDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v2, "MMApiProvisionService"

    const-string v5, " came in non moto "

    invoke-interface {v0, v2, v5}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mDeviceId:Ljava/lang/String;

    iget-object v2, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mSessionToken:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->_setMMApiCredInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_7

    :cond_f
    iget-object v0, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/ccc/cce/CCEUtils;->isMotoDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v2, "MMApiProvisionService"

    const-string v5, " came in moto "

    invoke-interface {v0, v2, v5}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/ccc/cce/CCESettings;->setAppContext(Landroid/content/Context;)V

    iget-object v0, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mDeviceId:Ljava/lang/String;

    iget-object v2, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mSessionToken:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->setMMApiCredInfoToMainApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_7
    if-eqz v14, :cond_11

    const-string v0, "persist.app.facebook.partnerid"

    invoke-static {v0}, Lcom/motorola/blur/service/blur/BSUtils;->getSystemStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "persist.app.facebook.partnerid"

    invoke-direct {v1, v0, v14}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->setPersistentProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {v1, v11}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->parseThirdPartyJsonString(Ljava/lang/String;)V

    :cond_12
    const-string v0, "persist.app.settings.enterprise_edition"

    invoke-static {v0}, Lcom/motorola/blur/service/blur/BSUtils;->getSystemStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "persist.app.settings.enterprise_edition"

    invoke-direct {v1, v0, v2}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->setPersistentProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/ccc/cce/CCEUtils;->updateEnterpriseEdition(Landroid/content/Context;)V

    :cond_13
    iget-object v0, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v2, "MMApiProvisionService"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v16

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;->hasSettings()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;->hasSettings()Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;->getSettings()Lorg/json/JSONObject;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v2}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v4

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v4, :cond_14

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v1, v5, v7}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->setPersistentProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_14
    iget-object v3, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mSettingsVersion:Ljava/lang/String;

    invoke-direct {v1, v3, v0}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->_setMMApiSettings(Ljava/lang/String;Ljava/util/HashMap;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_9

    :catch_1
    :try_start_6
    iget-object v0, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v3, "MMApiProvisionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleResponse(): Exception while parsing settings from the response, settings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_15
    iget-object v0, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v2, "MMApiProvisionService"

    const-string v3, "handleResponse(): no settings sent by the server:"

    invoke-interface {v0, v2, v3}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    const-string v0, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "channelID"

    invoke-static {v0}, Lcom/motorola/blur/service/blur/BSUtils;->getSystemStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v2}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/ccc/cce/CCEUtils;->isMotoDevice(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v15, :cond_16

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-direct {v1, v0}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->setChannelID(Ljava/lang/String;)V

    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->notifyLoginDone()V

    sget-object v7, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService$Error;->ERROR_OK:Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService$Error;

    goto :goto_a

    :cond_17
    iget-object v0, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v2, "MMApiProvisionService"

    const-string v3, "handleResponse(): Obtained invalid provisioning information"

    invoke-interface {v0, v2, v3}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Response;->getType()Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;

    move-result-object v0

    sget-object v2, Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;->create_device:Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;

    if-ne v0, v2, :cond_18

    iget-object v0, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/motorola/blur/service/blur/Configuration;->CREATION_TIME:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v2}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/motorola/ccc/cce/CCESettings;->insertValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v2, "MMApiProvisionService"

    const-string v3, " notifyProvisioningDone "

    invoke-interface {v0, v2, v3}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v7}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->notifyProvisioningDone(Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService$Error;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_18
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasUserAccount()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {p0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->get(Landroid/content/Context;)Lcom/motorola/ccc/sso/accounts/MotoAccountManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->getAccount()Lcom/motorola/ccc/sso/accounts/MotoAccount;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDeviceProvisioned()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isDeviceProvisioned: deviceId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mConfig:Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;

    invoke-interface {v1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;->getMMApiDeviceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MMApiProvisionService"

    invoke-static {v1, v0}, Lcom/motorola/blur/service/blur/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mConfig:Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;

    invoke-interface {p0}, Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;->getMMApiDeviceID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    invoke-direct {p0, p1, p3, p2}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->getLoginJSON(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string p1, "MMApiProvisionService"

    const-string p2, "login() error: request payload is null"

    invoke-interface {p0, p1, p2}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p2, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Request;

    sget-object p3, Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;->update_device:Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;

    invoke-direct {p2, p1, p3, p4, p5}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Request;-><init>(Ljava/lang/String;Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->executeRequest(Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Request;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.motorola.blur.service.mmapi.session.expired"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MMApiProvisionServiceLimitLoginReqs"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "MMApiProvisionService"

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string p2, "Got session expired event.. obtaining new session"

    invoke-interface {p1, v4, p2}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mNumOfForcedLogins:I

    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mBackOffService:Lcom/motorola/blur/service/blur/MMApiBackOffService;

    invoke-virtual {p1, v1, v3}, Lcom/motorola/blur/service/blur/MMApiBackOffService;->connectStatus(Ljava/lang/String;Z)V

    sget-object p1, Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;->update_device:Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;

    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->createDeviceIdOrLogin(Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "com.motorola.blur.service.mmapi.force.login"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "KEY_REQUEST_REASON"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "invalid_session"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mNumOfForcedLogins:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mNumOfForcedLogins:I

    iget p2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mMaxForcedLoginCnt:I

    if-eqz p2, :cond_1

    if-le p1, p2, :cond_1

    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string p2, "Reached max login attempts..Backing Off request to obtain new session"

    invoke-interface {p1, v4, p2}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mBackOffService:Lcom/motorola/blur/service/blur/MMApiBackOffService;

    invoke-virtual {p1, v1, v2}, Lcom/motorola/blur/service/blur/MMApiBackOffService;->connectStatus(Ljava/lang/String;Z)V

    sget-object p1, Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;->update_device:Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;

    iput-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mBackOffReqType:Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;

    return-void

    :cond_1
    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string p2, "Got request to obtain new Session .. doing so now"

    invoke-interface {p1, v4, p2}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mForceLogin:Z

    sget-object p1, Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;->update_device:Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;

    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->createDeviceIdOrLogin(Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "com.motorola.blur.service.blur.Actions.CCE_PROVISION_DEVICE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string p2, "Got request to obtain new Device ID .. doing so now"

    invoke-interface {p1, v4, p2}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mConfig:Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;

    sget-object p2, Lcom/motorola/blur/service/blur/Configuration;->MOTHER_SINGLE_PARENT_MODE:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {p2}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;->getConfigValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mConfig:Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;

    sget-object p2, Lcom/motorola/blur/service/blur/Configuration;->MOTHER_SINGLE_PARENT_MODE:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {p2}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "1"

    invoke-interface {p1, p2, v0}, Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;->setConfigValue(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    sget-object p1, Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;->create_device:Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;

    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->createDeviceIdOrLogin(Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "com.motorola.blur.service.blur.Actions.CCE_PROVISION_ACCESSORIES"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string p1, "Received CCE_PROVISION_ACCESSORIES"

    invoke-interface {p0, v4, p1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "com.motorola.blur.service.blur.Actions.CCE_CONTINUE_PROVISION_DEVICE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string p1, "We are not handling CCE_CONTINUE_PROVISION_DEVICE intentAction"

    invoke-interface {p0, v4, p1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "com.motorola.blur.service.mmapi.trynow"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "com.motorola.blur.service.blur.iconnectstatus.appname"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MMApiProvisionServiceResponse"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    :cond_8
    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string p2, "MMApiBackOffService told us it\'s okay to retry the pending device provisioning request"

    invoke-interface {p1, v4, p2}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mBackOffReqType:Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;

    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->createDeviceIdOrLogin(Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.motorola.blur.service.update.device.info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p1, "map"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iget-object p2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v0, "UPDATE_DEVICE_INFO"

    invoke-interface {p2, v4, v0}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_a

    const-string p2, "gcmRegistrationId"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, " hashMap size "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/blur/service/blur/Configuration;->C2DM_REG_ID:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1, v2}, Lcom/motorola/blur/service/blur/BlurServiceMother;->setConfigValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_a
    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string p2, "Setting mForceLogin to true"

    invoke-interface {p1, v4, p2}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mForceLogin:Z

    sget-object p1, Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;->update_device:Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;

    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->createDeviceIdOrLogin(Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;)V

    goto :goto_0

    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.motorola.cce.Actions.RETRY_WAITING_REQUEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "inside onReceive action "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/motorola/blur/service/blur/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->isTOSAccepted(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_c

    const-string p0, "TOS not accepted hence return"

    invoke-static {v4, p0}, Lcom/motorola/blur/service/blur/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->isDeviceProvisioned()Z

    move-result p1

    if-nez p1, :cond_d

    sget-object p1, Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;->create_device:Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;

    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->createDeviceIdOrLogin(Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;)V

    const-string p0, "trying to provision device since I haven\'t yet and the radio is up now"

    invoke-static {v4, p0}, Lcom/motorola/blur/service/blur/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_d
    const-string p1, "trying to auto login since I haven\'t yet and the radio is up now"

    invoke-static {v4, p1}, Lcom/motorola/blur/service/blur/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;->update_device:Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;

    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->createDeviceIdOrLogin(Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;)V

    :cond_e
    :goto_0
    return-void
.end method

.method public provisionDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->getDeviceIDJSON()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string p1, "MMApiProvisionService"

    const-string p2, "provisionDevice() error: request payload is null"

    invoke-interface {p0, p1, p2}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Request;

    sget-object v2, Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;->create_device:Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;

    invoke-direct {v1, v0, v2, p1, p2}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Request;-><init>(Ljava/lang/String;Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->executeRequest(Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Request;)V

    return-void
.end method

.method public setOutstandingReq(Z)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v1, "MMApiProvisionService"

    const-string v2, "mOutstandingReq set to false"

    invoke-interface {v0, v1, v2}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mOutstandingReq:Z

    return-void
.end method

.method public shutdown()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v1, "MMApiProvisionService"

    const-string v2, "Shutting down ..."

    invoke-interface {v0, v1, v2}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/motorola/blur/service/blur/BSUtils;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public testprov(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mNonce:Ljava/lang/String;

    iput-object p2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mSignature:Ljava/lang/String;

    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mReqType:Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;

    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->continueCreateDeviceIdOrLogin(Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;)V

    return-void
.end method

.method public updateDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->getUpdateDeviceInfoJSON(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string p1, "MMApiProvisionService"

    const-string p2, "updateDeviceInfo() error: request payload is null"

    invoke-interface {p0, p1, p2}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Request;

    sget-object v1, Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;->update_device:Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;

    invoke-direct {v0, p3, v1, p1, p2}, Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Request;-><init>(Ljava/lang/String;Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/motorola/blur/service/blur/deviceprovisioning/MMApiProvisionService;->executeRequest(Lcom/motorola/blur/service/blur/deviceprovisioning/ProvisionWS$Request;)V

    return-void
.end method
