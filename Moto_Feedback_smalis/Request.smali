.class public abstract Lcom/motorola/feedback/transport/cce/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/feedback/transport/cce/Request$MMApiWebServiceConnection;,
        Lcom/motorola/feedback/transport/cce/Request$MMResponseCallback;
    }
.end annotation


# static fields
.field public static final HTTP_DELETE:Ljava/lang/String; = "DELETE"

.field public static final HTTP_GET:Ljava/lang/String; = "GET"

.field public static final HTTP_POST:Ljava/lang/String; = "POST"

.field public static final HTTP_PUT:Ljava/lang/String; = "PUT"

.field public static final MAX_RETRIES:I = 0x3

.field public static final PARAM_APP_ID:Ljava/lang/String; = "appId"

.field public static final PARAM_MKEYID:Ljava/lang/String; = "mKeyId"

.field public static final PARAM_USER_ID:Ljava/lang/String; = "userid"


# instance fields
.field private appendDeviceId:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appendDeviceId"
    .end annotation
.end field

.field private baseUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "baseUrl"
    .end annotation
.end field

.field private customOAuth:Lcom/motorola/feedback/transport/cce/CustomOAuth;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "customOAuth"
    .end annotation
.end field

.field private httpMethod:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "httpMethod"
    .end annotation
.end field

.field private isSecure:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isSecure"
    .end annotation
.end field

.field private payload:Lcom/motorola/feedback/transport/cce/Payload;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payload"
    .end annotation
.end field

.field private queryParams:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "queryParams"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestFormat:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requestFormat"
    .end annotation
.end field

.field private retries:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "retries"
    .end annotation
.end field

.field private useOAuth:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "useOAuth"
    .end annotation
.end field

.field private wsReqId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wsReqId"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseUrl",
            "httpMethod"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "json"

    iput-object v0, p0, Lcom/motorola/feedback/transport/cce/Request;->requestFormat:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/feedback/transport/cce/Request;->isSecure:Z

    iput-boolean v0, p0, Lcom/motorola/feedback/transport/cce/Request;->useOAuth:Z

    iput-boolean v0, p0, Lcom/motorola/feedback/transport/cce/Request;->appendDeviceId:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/feedback/transport/cce/Request;->retries:I

    iput-object p1, p0, Lcom/motorola/feedback/transport/cce/Request;->baseUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/motorola/feedback/transport/cce/Request;->httpMethod:Ljava/lang/String;

    const-string p1, "appId"

    const-string p2, "D26ASAXJH5P877Z2ENDWMEOVKE7J2FNZ"

    invoke-virtual {p0, p1, p2}, Lcom/motorola/feedback/transport/cce/Request;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendWsRequest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "jsonRequest"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/motorola/feedback/transport/cce/Request;->isLargeRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/motorola/feedback/transport/cce/Request;->sendWsServiceRequest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/motorola/ccc/cce/CCEUtils;->sendWSRequest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private sendWsServiceRequest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "context",
            "jsonRequest"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendWsServiceRequest"

    invoke-static {v0, v1}, Lcom/motorola/feedback/utils/Logger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Lcom/motorola/feedback/transport/cce/Request$1;

    invoke-direct {v2, p0, v0}, Lcom/motorola/feedback/transport/cce/Request$1;-><init>(Lcom/motorola/feedback/transport/cce/Request;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {p1}, Lcom/motorola/ccc/cce/CCEUtils;->getWSProxyServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p1, v3, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :catch_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v2}, Lcom/motorola/feedback/transport/cce/Request$MMApiWebServiceConnection;->getService()Lcom/motorola/blur/service/blur/IMMApiWebService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/motorola/feedback/transport/cce/Request$MMApiWebServiceConnection;->getService()Lcom/motorola/blur/service/blur/IMMApiWebService;

    move-result-object v0

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Lcom/motorola/feedback/transport/cce/Request$2;

    invoke-direct {v1, p0, v4}, Lcom/motorola/feedback/transport/cce/Request$2;-><init>(Lcom/motorola/feedback/transport/cce/Request;Ljava/util/concurrent/CountDownLatch;)V

    sget-object v5, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/motorola/feedback/transport/cce/Request;->getWsReqId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v1}, Lcom/motorola/blur/service/blur/IMMApiWebService;->registerCallback(Ljava/lang/String;Lcom/motorola/blur/service/blur/IMMApiWebServiceCallback;)Z

    invoke-virtual {p0}, Lcom/motorola/feedback/transport/cce/Request;->getWsReqId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, p2, v3}, Lcom/motorola/blur/service/blur/IMMApiWebService;->wsRequest(Ljava/lang/String;Ljava/lang/String;[B)Z

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x5

    invoke-virtual {v4, v6, v7, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    invoke-virtual {v1}, Lcom/motorola/feedback/transport/cce/Request$MMResponseCallback;->getResponse()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    sget-object v5, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ConnectTimeoutError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-object p2, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/motorola/feedback/transport/cce/Request$MMResponseCallback;->getResponse()Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lcom/motorola/feedback/transport/cce/Request;->getWsReqId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/motorola/blur/service/blur/IMMApiWebService;->unregisterCallback(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_1
    move-exception p2

    goto :goto_5

    :catch_1
    :try_start_4
    sget-object v5, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->CancelledError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0}, Lcom/motorola/feedback/transport/cce/Request;->getWsReqId()Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-interface {v0, p2}, Lcom/motorola/blur/service/blur/IMMApiWebService;->unregisterCallback(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_2
    :try_start_6
    sget-object v5, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {p0}, Lcom/motorola/feedback/transport/cce/Request;->getWsReqId()Ljava/lang/String;

    move-result-object p2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catch_3
    :goto_3
    move-object p2, v3

    :catch_4
    :goto_4
    :try_start_8
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-eq v5, v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/feedback/transport/cce/Request;->getWsReqId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->toValue()I

    move-result p2

    invoke-virtual {v5}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {p0, p2, v0, v1, v3}, Lcom/motorola/ccc/cce/CCEUtils;->generateRespJsonString(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    :goto_5
    :try_start_9
    invoke-virtual {p0}, Lcom/motorola/feedback/transport/cce/Request;->getWsReqId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/motorola/blur/service/blur/IMMApiWebService;->unregisterCallback(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catch_5
    :try_start_a
    throw p2

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/feedback/transport/cce/Request;->getWsReqId()Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ConnectTimeoutError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {p2}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->toValue()I

    move-result p2

    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ConnectTimeoutError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Timeout Error"

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {p0, p2, v0, v1, v3}, Lcom/motorola/ccc/cce/CCEUtils;->generateRespJsonString(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_2
    :goto_6
    :try_start_b
    invoke-virtual {p1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    :catch_6
    return-object p2

    :goto_7
    :try_start_c
    invoke-virtual {p1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    :catch_7
    throw p0
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/motorola/feedback/transport/cce/Request;->queryParams:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/feedback/transport/cce/Request;->queryParams:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/motorola/feedback/transport/cce/Request;->queryParams:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public execute(Landroid/content/Context;)Lcom/motorola/feedback/transport/cce/Response;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/feedback/transport/cce/WsRequestErrorException;
        }
    .end annotation

    invoke-static {p1}, Lcom/motorola/feedback/transport/cce/CustomOAuth;->getNewInstance(Landroid/content/Context;)Lcom/motorola/feedback/transport/cce/CustomOAuth;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/transport/cce/Request;->setCustomOAuth(Lcom/motorola/feedback/transport/cce/CustomOAuth;)V

    invoke-static {}, Lcom/motorola/feedback/transport/cce/WsRequestIdGenerator;->getInstance()Lcom/motorola/feedback/transport/cce/WsRequestIdGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/feedback/transport/cce/WsRequestIdGenerator;->getNewWsRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/transport/cce/Request;->setWsReqId(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->enableComplexMapKeySerialization()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v1, Lcom/motorola/feedback/transport/cce/CCERequest;

    invoke-direct {v1, p0}, Lcom/motorola/feedback/transport/cce/CCERequest;-><init>(Lcom/motorola/feedback/transport/cce/Request;)V

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CCEReq"

    invoke-static {v2, v1}, Lcom/motorola/feedback/utils/Logger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/feedback/transport/cce/Request;->getBaseUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/feedback/utils/Logger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/motorola/feedback/transport/cce/Request;->sendWsRequest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CCEReq "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/motorola/feedback/transport/cce/Request;->getBaseUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CCEResp"

    invoke-static {v1, p0}, Lcom/motorola/feedback/utils/Logger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-class p0, Lcom/motorola/feedback/transport/cce/CCEResponse;

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/feedback/transport/cce/CCEResponse;

    invoke-virtual {p0}, Lcom/motorola/feedback/transport/cce/CCEResponse;->getResponse()Lcom/motorola/feedback/transport/cce/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/feedback/transport/cce/Response;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lcom/motorola/feedback/transport/cce/WsRequestErrorException;

    invoke-direct {p1, p0}, Lcom/motorola/feedback/transport/cce/WsRequestErrorException;-><init>(Lcom/motorola/feedback/transport/cce/Response;)V

    throw p1

    :cond_1
    new-instance p0, Lcom/motorola/feedback/transport/cce/Response;

    invoke-direct {p0}, Lcom/motorola/feedback/transport/cce/Response;-><init>()V

    sget-object p1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->OAuthError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/feedback/transport/cce/Response;->setError(Ljava/lang/String;)V

    new-instance p1, Lcom/motorola/feedback/transport/cce/WsRequestErrorException;

    invoke-direct {p1, p0}, Lcom/motorola/feedback/transport/cce/WsRequestErrorException;-><init>(Lcom/motorola/feedback/transport/cce/Response;)V

    throw p1
.end method

.method public executeDevAuth(Landroid/content/Context;)Lcom/motorola/feedback/transport/cce/Response;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/feedback/transport/cce/WsRequestErrorException;
        }
    .end annotation

    new-instance v0, Lcom/motorola/feedback/transport/cce/CustomOAuth;

    invoke-direct {v0}, Lcom/motorola/feedback/transport/cce/CustomOAuth;-><init>()V

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/transport/cce/Request;->setCustomOAuth(Lcom/motorola/feedback/transport/cce/CustomOAuth;)V

    invoke-static {}, Lcom/motorola/feedback/transport/cce/WsRequestIdGenerator;->getInstance()Lcom/motorola/feedback/transport/cce/WsRequestIdGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/feedback/transport/cce/WsRequestIdGenerator;->getNewWsRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/transport/cce/Request;->setWsReqId(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->enableComplexMapKeySerialization()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v1, Lcom/motorola/feedback/transport/cce/CCERequest;

    invoke-direct {v1, p0}, Lcom/motorola/feedback/transport/cce/CCERequest;-><init>(Lcom/motorola/feedback/transport/cce/Request;)V

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CCEReq"

    invoke-static {v2, v1}, Lcom/motorola/feedback/utils/Logger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/feedback/transport/cce/Request;->getBaseUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/feedback/utils/Logger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/motorola/feedback/transport/cce/Request;->sendWsRequest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "CCEResp"

    invoke-static {p1, p0}, Lcom/motorola/feedback/utils/Logger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-class p1, Lcom/motorola/feedback/transport/cce/CCEResponse;

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/feedback/transport/cce/CCEResponse;

    invoke-virtual {p0}, Lcom/motorola/feedback/transport/cce/CCEResponse;->getResponse()Lcom/motorola/feedback/transport/cce/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/feedback/transport/cce/Response;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lcom/motorola/feedback/transport/cce/WsRequestErrorException;

    invoke-direct {p1, p0}, Lcom/motorola/feedback/transport/cce/WsRequestErrorException;-><init>(Lcom/motorola/feedback/transport/cce/Response;)V

    throw p1
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/transport/cce/Request;->baseUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getCustomOAuth()Lcom/motorola/feedback/transport/cce/CustomOAuth;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/transport/cce/Request;->customOAuth:Lcom/motorola/feedback/transport/cce/CustomOAuth;

    return-object p0
.end method

.method public getHttpMethod()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/transport/cce/Request;->httpMethod:Ljava/lang/String;

    return-object p0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/transport/cce/Request;->payload:Lcom/motorola/feedback/transport/cce/Payload;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/feedback/transport/cce/Payload;->getData()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getRequestFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/transport/cce/Request;->requestFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getRetries()I
    .locals 0

    iget p0, p0, Lcom/motorola/feedback/transport/cce/Request;->retries:I

    return p0
.end method

.method public getWsReqId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/transport/cce/Request;->wsReqId:Ljava/lang/String;

    return-object p0
.end method

.method public isAppendDeviceId()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/feedback/transport/cce/Request;->appendDeviceId:Z

    return p0
.end method

.method protected isLargeRequest()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSecure()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/feedback/transport/cce/Request;->isSecure:Z

    return p0
.end method

.method public isUseOAuth()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/feedback/transport/cce/Request;->useOAuth:Z

    return p0
.end method

.method public setAppendDeviceId(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appendDeviceId"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/motorola/feedback/transport/cce/Request;->appendDeviceId:Z

    return-void
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseUrl"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/feedback/transport/cce/Request;->baseUrl:Ljava/lang/String;

    return-void
.end method

.method public setCustomOAuth(Lcom/motorola/feedback/transport/cce/CustomOAuth;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customOAuth"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/feedback/transport/cce/Request;->customOAuth:Lcom/motorola/feedback/transport/cce/CustomOAuth;

    return-void
.end method

.method public setHttpMethod(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "httpMethod"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/feedback/transport/cce/Request;->httpMethod:Ljava/lang/String;

    return-void
.end method

.method public setIsSecure(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSecure"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/motorola/feedback/transport/cce/Request;->isSecure:Z

    return-void
.end method

.method public setPayload(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "payloadData"
        }
    .end annotation

    iget-object v0, p0, Lcom/motorola/feedback/transport/cce/Request;->payload:Lcom/motorola/feedback/transport/cce/Payload;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/feedback/transport/cce/Payload;

    invoke-direct {v0}, Lcom/motorola/feedback/transport/cce/Payload;-><init>()V

    iput-object v0, p0, Lcom/motorola/feedback/transport/cce/Request;->payload:Lcom/motorola/feedback/transport/cce/Payload;

    :cond_0
    iget-object p0, p0, Lcom/motorola/feedback/transport/cce/Request;->payload:Lcom/motorola/feedback/transport/cce/Payload;

    invoke-virtual {p0, p1}, Lcom/motorola/feedback/transport/cce/Payload;->setData(Ljava/lang/String;)V

    return-void
.end method

.method public setRequestFormat(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestFormat"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/feedback/transport/cce/Request;->requestFormat:Ljava/lang/String;

    return-void
.end method

.method public setRetries(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "retries"
        }
    .end annotation

    iput p1, p0, Lcom/motorola/feedback/transport/cce/Request;->retries:I

    return-void
.end method

.method public setUseOAuth(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useOAuth"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/motorola/feedback/transport/cce/Request;->useOAuth:Z

    return-void
.end method

.method public setWsReqId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wsReqId"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/feedback/transport/cce/Request;->wsReqId:Ljava/lang/String;

    return-void
.end method
