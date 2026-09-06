.class public Lcom/motorola/blur/service/blur/ws/AppWSProxy;
.super Ljava/lang/Object;
.source "AppWSProxy.java"

# interfaces
.implements Lcom/motorola/blur/service/blur/ws/MMApiWebService$WSRequestCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/ws/AppWSProxy$requestSource;,
        Lcom/motorola/blur/service/blur/ws/AppWSProxy$MyBroadcastReceiver;,
        Lcom/motorola/blur/service/blur/ws/AppWSProxy$Response;,
        Lcom/motorola/blur/service/blur/ws/AppWSProxy$Request;
    }
.end annotation


# static fields
.field public static final APPWSPROXY_WS_REQ:Ljava/lang/String; = "com.motorola.blur.APPWSPROXY_CCE_EXTERNAL_WS_REQUEST_ACTION"

.field private static final LOG_TAG:Ljava/lang/String; = "CCE"

.field public static final REQ_FIELDNAME:Ljava/lang/String; = "wsRequest"

.field public static final RESPONDTO_FIELDNAME:Ljava/lang/String; = "respondTo"

.field public static final RESP_FIELDNAME:Ljava/lang/String; = "wsResponse"

.field private static final TIME_TAG:Ljava/lang/String; = "CCE:TimeMarkers"


# instance fields
.field private final mBinder:Lcom/motorola/blur/service/blur/IMMApiWebService$Stub;

.field mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

.field private mCtxt:Landroid/content/Context;

.field private mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

.field private mLock:Ljava/lang/Object;

.field private mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

.field private mRecv:Landroid/content/BroadcastReceiver;

.field private mWebService:Lcom/motorola/blur/service/blur/ws/MMApiWebService;

.field private pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/motorola/blur/service/blur/ws/MMApiWebService;Lcom/motorola/blur/service/blur/platform/IPlatform;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->pkgName:Ljava/lang/String;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/motorola/blur/service/blur/ws/AppWSProxy$1;

    invoke-direct {v1, p0}, Lcom/motorola/blur/service/blur/ws/AppWSProxy$1;-><init>(Lcom/motorola/blur/service/blur/ws/AppWSProxy;)V

    iput-object v1, p0, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->mBinder:Lcom/motorola/blur/service/blur/IMMApiWebService$Stub;

    new-instance v1, Lcom/motorola/blur/service/blur/ws/AppWSProxy$MyBroadcastReceiver;

    invoke-direct {v1, p0, v0}, Lcom/motorola/blur/service/blur/ws/AppWSProxy$MyBroadcastReceiver;-><init>(Lcom/motorola/blur/service/blur/ws/AppWSProxy;Lcom/motorola/blur/service/blur/ws/AppWSProxy$1;)V

    iput-object v1, p0, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->mRecv:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->mWebService:Lcom/motorola/blur/service/blur/ws/MMApiWebService;

    iput-object p2, p0, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {p2}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getLogger()Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    iget-object p1, p0, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->mEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

    invoke-interface {p1}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->mCtxt:Landroid/content/Context;

    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "com.motorola.blur.APPWSPROXY_CCE_EXTERNAL_WS_REQUEST_ACTION"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->mCtxt:Landroid/content/Context;

    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->mRecv:Landroid/content/BroadcastReceiver;

    invoke-static {p2, v0, p1}, Lcom/motorola/blur/service/blur/BSUtils;->registerLocalReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object p1, p0, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string p2, "CCE"

    const-string v0, "AppWSProxy created ..."

    invoke-interface {p1, p2, v0}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/blur/service/blur/ws/AppWSProxy;)Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;
    .locals 0

    iget-object p0, p0, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    return-object p0
.end method

.method static synthetic access$200(Lcom/motorola/blur/service/blur/ws/AppWSProxy;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/motorola/blur/service/blur/ws/AppWSProxy;Lcom/motorola/blur/service/blur/ws/AppWSProxy$requestSource;Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->handleWSRequest(Lcom/motorola/blur/service/blur/ws/AppWSProxy$requestSource;Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result p0

    return p0
.end method

.method static synthetic access$402(Lcom/motorola/blur/service/blur/ws/AppWSProxy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->pkgName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/motorola/blur/service/blur/ws/AppWSProxy;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->sendIntentWSResponse(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/motorola/blur/service/blur/ws/AppWSProxy;)Lcom/motorola/blur/service/blur/ws/MMApiWebService;
    .locals 0

    iget-object p0, p0, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->mWebService:Lcom/motorola/blur/service/blur/ws/MMApiWebService;

    return-object p0
.end method

.method private getPayloadFromFile(Ljava/lang/String;)[B
    .locals 5

    const-string v0, "CCE"

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p1, v2

    new-array v2, p1, [B

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AppWSProxy - bytes read from file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_0
    move-exception p1

    iget-object v1, p0, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AppWSProxy - failed to read message payload from file:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getRespJsonString(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/motorola/ccc/cce/CCEUtils;->generateRespJsonString(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleWSRequest(Lcom/motorola/blur/service/blur/ws/AppWSProxy$requestSource;Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 31

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    const-string v13, "CCE"

    const/4 v12, 0x0

    const/4 v11, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "request"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "httpMethod"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v1, "serverUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v1, "baseUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v1, "requestFormat"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "appendReqFormat"

    const/4 v10, 0x1

    invoke-virtual {v0, v1, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v1, "wsReqId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    :try_start_1
    const-string v1, "isSecure"

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v19

    const-string v1, "useOAuth"

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v20

    const-string v1, "retries"

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v6, v1

    const-string v1, "urlSegments"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v5, v11

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v5, v7, :cond_0

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v21, v2

    goto :goto_1

    :cond_1
    move-object/from16 v21, v12

    :goto_1
    const-string v1, "customOAuth"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "appId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "appSecret"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "token"

    const-string v8, ""

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "signPayloadWithAppSecret"

    invoke-virtual {v1, v8, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    move/from16 v24, v1

    move-object v8, v2

    move-object v9, v5

    move-object/from16 v23, v7

    goto :goto_2

    :cond_2
    iget-object v0, v15, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v1, "AppWSProxy - error processing incoming request!"

    invoke-interface {v0, v13, v1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/blur/service/blur/ws/AppWSProxy$requestSource;->INTENT:Lcom/motorola/blur/service/blur/ws/AppWSProxy$requestSource;

    if-ne v14, v0, :cond_3

    const/4 v4, 0x0

    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->BadRequestError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Error parsing JSON request."

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, v22

    invoke-direct/range {v1 .. v7}, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->sendIntentWSResponse(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v11

    :cond_4
    move/from16 v24, v11

    move-object v8, v12

    move-object v9, v8

    move-object/from16 v23, v9

    :goto_2
    const-string v1, "payload"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "data"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "file"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {v15, v1}, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->getPayloadFromFile(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_3

    :cond_5
    const-string v5, "pb"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    :goto_3
    move-object v7, v1

    goto :goto_4

    :cond_7
    if-eqz p4, :cond_8

    move-object/from16 v7, p4

    goto :goto_4

    :cond_8
    move-object v7, v12

    :goto_4
    const-string v1, "appendDeviceId"

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v25

    const-string v1, "queryParams"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v10, v26

    check-cast v10, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    :try_start_2
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v4, v13

    move-object v8, v15

    move-object/from16 v3, v22

    const/16 v23, 0x0

    goto/16 :goto_a

    :cond_9
    move-object/from16 v27, v2

    goto :goto_6

    :cond_a
    move-object/from16 v27, v12

    :goto_6
    :try_start_3
    new-instance v11, Lcom/motorola/blur/service/blur/ws/AppWSProxy$Request;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-object v1, v11

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    const/16 v28, 0x1

    move-object/from16 v10, v23

    move-object/from16 v29, v11

    const/16 v23, 0x0

    move/from16 v11, v20

    move/from16 v12, v24

    move-object/from16 v30, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    move-object/from16 v15, v18

    move/from16 v16, v25

    move/from16 v17, v19

    move-object/from16 v18, v27

    move-object/from16 v19, p3

    move-object/from16 v20, v22

    :try_start_4
    invoke-direct/range {v1 .. v21}, Lcom/motorola/blur/service/blur/ws/AppWSProxy$Request;-><init>(Lcom/motorola/blur/service/blur/ws/AppWSProxy;Ljava/lang/String;ZLcom/motorola/blur/service/blur/ws/AppWSProxy$requestSource;B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "httpHeader"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-eqz v1, :cond_b

    :try_start_5
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/apache/http/message/BasicHeader;

    invoke-direct {v5, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v29

    invoke-virtual {v3, v5}, Lcom/motorola/blur/service/blur/ws/AppWSProxy$Request;->addHeader(Lorg/apache/http/Header;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v29, v3

    goto :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v8, p0

    move-object/from16 v3, v22

    move-object/from16 v4, v30

    goto/16 :goto_a

    :cond_b
    move-object/from16 v3, v29

    :try_start_6
    const-string v1, "chunkSeparator"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    if-eqz v0, :cond_c

    :try_start_7
    invoke-virtual {v3, v0}, Lcom/motorola/blur/service/blur/ws/AppWSProxy$Request;->setChunkSeparator(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :cond_c
    move-object/from16 v8, p0

    :try_start_8
    iget-object v0, v8, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v1, "CCE:TimeMarkers"

    const-string v2, "Valid request"

    invoke-interface {v0, v1, v2}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v8, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppWSProxy - executing web service request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/motorola/blur/service/blur/ws/AppWSProxy$Request;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    move-object/from16 v4, v30

    :try_start_9
    invoke-interface {v0, v4, v1}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v8, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->mWebService:Lcom/motorola/blur/service/blur/ws/MMApiWebService;

    invoke-virtual {v0, v3, v8}, Lcom/motorola/blur/service/blur/ws/MMApiWebService;->initiateWebRequest(Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;Lcom/motorola/blur/service/blur/ws/MMApiWebService$WSRequestCallback;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    return v28

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    move-object/from16 v8, p0

    :goto_8
    move-object/from16 v4, v30

    goto :goto_9

    :catch_5
    move-exception v0

    move-object v4, v13

    move-object v8, v15

    const/16 v23, 0x0

    goto :goto_9

    :catch_6
    move-exception v0

    move/from16 v23, v11

    move-object v4, v13

    move-object v8, v15

    :goto_9
    move-object/from16 v3, v22

    goto :goto_a

    :catch_7
    move-exception v0

    move/from16 v23, v11

    move-object v2, v12

    move-object v4, v13

    move-object v8, v15

    move-object v3, v2

    :goto_a
    iget-object v1, v8, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "AppWSProxy - error processing incoming request: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/blur/service/blur/ws/AppWSProxy$requestSource;->INTENT:Lcom/motorola/blur/service/blur/ws/AppWSProxy$requestSource;

    move-object/from16 v1, p1

    if-ne v1, v0, :cond_d

    const/4 v4, 0x0

    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->BadRequestError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Error parsing JSON request."

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct/range {v1 .. v7}, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->sendIntentWSResponse(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return v23
.end method

.method private sendAIDLWSResponse(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->getRespJsonString(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "AppWSProxy - sendAIDLWSResponse() sending reponse"

    const-string p4, "CCE"

    invoke-static {p4, p3}, Lcom/motorola/blur/service/blur/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/blur/service/blur/IMMApiWebServiceCallback;

    :try_start_0
    invoke-interface {p1, p2}, Lcom/motorola/blur/service/blur/IMMApiWebServiceCallback;->wsResponse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "AppWSProxy - sendAIDLWSResponse() failed!: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/motorola/blur/service/blur/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private sendIntentWSResponse(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->getRespJsonString(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p5, "CCE"

    if-eqz p3, :cond_0

    new-instance p6, Landroid/content/Intent;

    invoke-direct {p6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "wsResponse"

    invoke-virtual {p6, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p3, "AppWSProxy - failed to create JSON response. Dropping..."

    invoke-static {p5, p3}, Lcom/motorola/blur/service/blur/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p6, 0x0

    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "AppWSProxy - sendWSResponse(): sending response to "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " for reqID: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Lcom/motorola/blur/service/blur/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->mCtxt:Landroid/content/Context;

    invoke-static {p1, p6}, Lcom/motorola/blur/service/blur/BSUtils;->sendLocalBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->mBinder:Lcom/motorola/blur/service/blur/IMMApiWebService$Stub;

    return-object v0
.end method

.method public handleResponse(Lcom/motorola/blur/service/blur/ws/MMApiWSResponse;)Z
    .locals 8

    check-cast p1, Lcom/motorola/blur/service/blur/ws/AppWSProxy$Response;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/ws/AppWSProxy$Response;->getRespondToAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/ws/AppWSProxy$Response;->getStatusCode()I

    move-result v3

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/ws/AppWSProxy$Response;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/ws/AppWSProxy$Response;->getErrorText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/ws/AppWSProxy$Response;->getRequestId()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "AppWSProxy - handleResponse(): error="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " errorText="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " statusCode="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " reqId="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "CCE"

    invoke-static {v6, v0}, Lcom/motorola/blur/service/blur/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/ws/AppWSProxy$Response;->isOk()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/ws/AppWSProxy$Response;->hasData()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/ws/AppWSProxy$Response;->getRawMsgData()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/ws/AppWSProxy$Response;->getMessageFormat()Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$MessageFormat;

    move-result-object v6

    sget-object v7, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$MessageFormat;->GPB:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$MessageFormat;

    if-ne v6, v7, :cond_0

    const/4 v6, 0x0

    invoke-static {v0, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    :goto_1
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/ws/AppWSProxy$Response;->getRequestSource()Lcom/motorola/blur/service/blur/ws/AppWSProxy$requestSource;

    move-result-object p1

    sget-object v0, Lcom/motorola/blur/service/blur/ws/AppWSProxy$requestSource;->INTENT:Lcom/motorola/blur/service/blur/ws/AppWSProxy$requestSource;

    if-ne p1, v0, :cond_2

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->sendIntentWSResponse(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->sendAIDLWSResponse(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public shutdown()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->mLog:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    const-string v1, "CCE"

    const-string v2, "Shutting down ..."

    invoke-interface {v0, v1, v2}, Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->mCtxt:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/blur/service/blur/ws/AppWSProxy;->mRecv:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/motorola/blur/service/blur/BSUtils;->unregisterLocalReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method
