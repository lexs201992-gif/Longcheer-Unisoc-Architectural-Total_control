.class public Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;
.super Ljava/lang/Object;
.source "UserDevice.java"

# interfaces
.implements Lcom/motorola/blur/service/blur/ws/MMApiWebService$WSRequestCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice$Response;,
        Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice$Request;
    }
.end annotation


# static fields
.field private static final KEY_ERROR:Ljava/lang/String; = "com.motorola.blur.service.blur.deviceprovisioning.error"

.field private static final LOG_TAG:Ljava/lang/String; = "UserDevice"

.field private static final PREFS_NAME:Ljava/lang/String; = "blur_services_config"

.field private static final RETRY_COUNT:I = 0x3

.field private static sInstance:Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIPlatform:Lcom/motorola/blur/service/blur/platform/IPlatform;

.field private mMotoAccountManager:Lcom/motorola/ccc/sso/accounts/MotoAccountManager;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/motorola/blur/service/blur/BlurServiceMother;->getInstance()Lcom/motorola/blur/service/blur/BlurServiceMother;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/BlurServiceMother;->getPlatform()Lcom/motorola/blur/service/blur/platform/IPlatform;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->mIPlatform:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->mContext:Landroid/content/Context;

    const-string v1, "blur_services_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->get(Landroid/content/Context;)Lcom/motorola/ccc/sso/accounts/MotoAccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->mMotoAccountManager:Lcom/motorola/ccc/sso/accounts/MotoAccountManager;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;)Lcom/motorola/blur/service/blur/platform/IPlatform;
    .locals 0

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->mIPlatform:Lcom/motorola/blur/service/blur/platform/IPlatform;

    return-object p0
.end method

.method private executeRequest(Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice$Request;)V
    .locals 2

    const-string v0, "UserDevice"

    const-string v1, "Request: executing..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/motorola/blur/service/blur/BlurServiceMother;->getInstance()Lcom/motorola/blur/service/blur/BlurServiceMother;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/BlurServiceMother;->getMMApiWebService()Lcom/motorola/blur/service/blur/ws/MMApiWebService;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/motorola/blur/service/blur/ws/MMApiWebService;->initiateWebRequest(Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;Lcom/motorola/blur/service/blur/ws/MMApiWebService$WSRequestCallback;)V

    return-void
.end method

.method public static getInstance()Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;
    .locals 1

    sget-object v0, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->sInstance:Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->sInstance:Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;

    :cond_0
    sget-object v0, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->sInstance:Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;

    return-object v0
.end method

.method private saveToSharedPref(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->mContext:Landroid/content/Context;

    const-string v0, "blur_services_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    monitor-enter p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_DEVICE_ID:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "deviceId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_SESSION_TOKEN:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "sessionToken"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_SESSION_EXPIRATION:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "sessionExpiration"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/motorola/blur/service/blur/Configuration;->PROVISION_TIME:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p0, "UserDevice"

    const-string p1, "Response: success"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "UserDevice"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response: failed, got "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public createDevice()V
    .locals 9

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_DEVICE_ID:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->loginDevice()V

    return-void

    :cond_0
    const-string v0, "createDevice"

    const-string v1, "UserDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->mMotoAccountManager:Lcom/motorola/ccc/sso/accounts/MotoAccountManager;

    invoke-virtual {v0}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->getAccount()Lcom/motorola/ccc/sso/accounts/MotoAccount;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {v0}, Lcom/motorola/ccc/sso/accounts/MotoAccount;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/motorola/ccc/sso/accounts/MotoAccount;->getCachedProviderAuthToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/motorola/ccc/sso/accounts/MotoAccount;->isVerified()Z

    move-result v0
    :try_end_0
    .catch Lcom/motorola/ccc/sso/accounts/AccountException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x1

    :try_start_1
    invoke-static {v4}, Lcom/motorola/blur/service/blur/DeviceInfo;->getDeviceInfoJsonObj(Z)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "deviceInfo"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "serialNumber"

    iget-object v6, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->mIPlatform:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v6}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getDeviceInfo()Lcom/motorola/blur/service/blur/platform/IPlatform$DeviceInfo;

    move-result-object v6

    invoke-interface {v6}, Lcom/motorola/blur/service/blur/platform/IPlatform$DeviceInfo;->getSerialNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "hwType"

    const-string v7, "NonMoto"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "region"

    const-string v7, "US"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "carrier"

    const-string v7, "NA"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "extra"

    iget-object v7, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->mContext:Landroid/content/Context;

    const-string v8, "channelID"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/motorola/blur/service/blur/BSUtils;->getExtraSettingsFilter(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "settingFilters"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v1, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice$Request;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice$Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->executeRequest(Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice$Request;)V

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Request: failed to construct: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "We are constructing the json wrong!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :try_start_2
    new-instance p0, Lcom/motorola/ccc/sso/accounts/AccountAuthException;

    sget-object v0, Lcom/motorola/ccc/sso/accounts/AccountAuthException$AuthError;->AccountNotVerified:Lcom/motorola/ccc/sso/accounts/AccountAuthException$AuthError;

    invoke-direct {p0, v0}, Lcom/motorola/ccc/sso/accounts/AccountAuthException;-><init>(Lcom/motorola/ccc/sso/accounts/AccountAuthException$AuthError;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/motorola/ccc/sso/accounts/AccountAuthException;

    const-string v0, "no cached provider auth token"

    invoke-direct {p0, v0}, Lcom/motorola/ccc/sso/accounts/AccountAuthException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/motorola/ccc/sso/accounts/AccountNotFoundException;

    invoke-direct {p0}, Lcom/motorola/ccc/sso/accounts/AccountNotFoundException;-><init>()V

    throw p0
    :try_end_2
    .catch Lcom/motorola/ccc/sso/accounts/AccountException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "createDevice: canceled since "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/ccc/sso/accounts/AccountException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleResponse(Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;)Z
    .locals 3

    const-string v0, "Response: processing..."

    const-string v1, "UserDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice$Response;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice$Response;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    sget-object v2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-eq v0, v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Response: got error "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/motorola/ccc/cce/CCESettings;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.blur.service.blur.Actions.CCE_PROVISION_DEVICE_RESPONSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.motorola.blur.service.blur.deviceprovisioning.error"

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_1
    invoke-static {p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice$Response;->access$100(Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice$Response;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->saveToSharedPref(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public loginDevice()V
    .locals 9

    const-string v0, ""

    const-string v1, "loginDevice"

    const-string v2, "UserDevice"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->mMotoAccountManager:Lcom/motorola/ccc/sso/accounts/MotoAccountManager;

    invoke-virtual {v1}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->getAccount()Lcom/motorola/ccc/sso/accounts/MotoAccount;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {v1}, Lcom/motorola/ccc/sso/accounts/MotoAccount;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/motorola/ccc/sso/accounts/MotoAccount;->getCachedProviderAuthToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Lcom/motorola/ccc/sso/accounts/MotoAccount;->isVerified()Z

    move-result v1
    :try_end_0
    .catch Lcom/motorola/ccc/sso/accounts/AccountNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/motorola/ccc/sso/accounts/AccountAuthException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    iget-object v5, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_DEVICE_ID:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v7, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_SESSION_TOKEN:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v7}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "deviceId"

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "sessionToken"

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "serialNumber"

    iget-object v5, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->mIPlatform:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {v5}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getDeviceInfo()Lcom/motorola/blur/service/blur/platform/IPlatform$DeviceInfo;

    move-result-object v5

    invoke-interface {v5}, Lcom/motorola/blur/service/blur/platform/IPlatform$DeviceInfo;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/motorola/blur/service/blur/DeviceInfo;->getDeviceInfoJsonObj(Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "deviceInfo"

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "hwType"

    const-string v7, "NonMoto"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "region"

    const-string v7, "US"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "carrier"

    const-string v7, "NA"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "extra"

    iget-object v7, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->mContext:Landroid/content/Context;

    const-string v8, "channelID"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/motorola/blur/service/blur/BSUtils;->getExtraSettingsFilter(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "settingFilters"

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v0, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice$Request;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v4, v1}, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice$Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;->PUT:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;

    invoke-virtual {v0, v1}, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice$Request;->setHttpRequestType(Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;)V

    invoke-direct {p0, v0}, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->executeRequest(Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice$Request;)V

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request: failed to construct: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "We are constructing the json wrong!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    :try_start_2
    new-instance v0, Lcom/motorola/ccc/sso/accounts/AccountAuthException;

    sget-object v1, Lcom/motorola/ccc/sso/accounts/AccountAuthException$AuthError;->AccountNotVerified:Lcom/motorola/ccc/sso/accounts/AccountAuthException$AuthError;

    invoke-direct {v0, v1}, Lcom/motorola/ccc/sso/accounts/AccountAuthException;-><init>(Lcom/motorola/ccc/sso/accounts/AccountAuthException$AuthError;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/motorola/ccc/sso/accounts/AccountAuthException;

    const-string v1, "no cached provider auth token"

    invoke-direct {v0, v1}, Lcom/motorola/ccc/sso/accounts/AccountAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/motorola/ccc/sso/accounts/AccountNotFoundException;

    invoke-direct {v0}, Lcom/motorola/ccc/sso/accounts/AccountNotFoundException;-><init>()V

    throw v0
    :try_end_2
    .catch Lcom/motorola/ccc/sso/accounts/AccountNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/motorola/ccc/sso/accounts/AccountAuthException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loginDevice: postponed since "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/ccc/sso/accounts/AccountAuthException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_1
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->removeDeviceInfo()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "loginDevice: canceled since "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/ccc/sso/accounts/AccountNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeDeviceInfo()V
    .locals 3

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/UserDevice;->mContext:Landroid/content/Context;

    const-string v0, "blur_services_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_DEVICE_ID:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_SESSION_TOKEN:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/motorola/blur/service/blur/Configuration;->MMAPI_SESSION_EXPIRATION:Lcom/motorola/blur/service/blur/Configuration;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/Configuration;->dbName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
