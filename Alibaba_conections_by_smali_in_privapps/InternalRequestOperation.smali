.class public Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;
.super Ljava/lang/Object;
.source "InternalRequestOperation.java"


# static fields
.field private static final LIST_PART_MAX_RETURNS:I = 0x3e8

.field private static final MAX_PART_NUMBER:I = 0x2710

.field private static executorService:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

.field private credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

.field private volatile endpoint:Ljava/net/URI;

.field private innerClient:Lokhttp3/OkHttpClient;

.field private maxRetryCount:I

.field private service:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation$1;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation$1;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    :try_start_0
    new-instance v0, Ljava/net/URI;

    const-string v1, "http://oss.aliyuncs.com"

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->service:Ljava/net/URI;

    new-instance v0, Ljava/net/URI;

    const-string v1, "http://127.0.0.1"

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    new-instance p2, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation$3;

    invoke-direct {p2, p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation$3;-><init>(Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;)V

    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    if-eqz p3, :cond_1

    new-instance p2, Lokhttp3/Dispatcher;

    invoke-direct {p2}, Lokhttp3/Dispatcher;-><init>()V

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getMaxConcurrentRequest()I

    move-result v0

    invoke-virtual {p2, v0}, Lokhttp3/Dispatcher;->setMaxRequests(I)V

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getConnectionTimeout()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getSocketTimeout()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getSocketTimeout()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getProxyHost()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getProxyPort()I

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/net/Proxy;

    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getProxyHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getProxyPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {p2, v0, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    :cond_0
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getMaxErrorRetry()I

    move-result p2

    iput p2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    :cond_1
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->innerClient:Lokhttp3/OkHttpClient;

    return-void

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Endpoint must be a string like \'http://oss-cn-****.aliyuncs.com\',or your cname like \'http://image.cnamedomain.com\'!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/net/URI;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    iput-object p4, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    new-instance p3, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation$2;

    invoke-direct {p3, p0, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation$2;-><init>(Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;Ljava/net/URI;)V

    invoke-virtual {p1, p3}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    if-eqz p4, :cond_1

    new-instance p2, Lokhttp3/Dispatcher;

    invoke-direct {p2}, Lokhttp3/Dispatcher;-><init>()V

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getMaxConcurrentRequest()I

    move-result p3

    invoke-virtual {p2, p3}, Lokhttp3/Dispatcher;->setMaxRequests(I)V

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getConnectionTimeout()I

    move-result p3

    int-to-long v0, p3

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p3

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getSocketTimeout()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p3

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getSocketTimeout()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p3

    invoke-virtual {p3, p2}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getProxyHost()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getProxyPort()I

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/net/Proxy;

    sget-object p3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getProxyPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {p2, p3, v0}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    :cond_0
    invoke-virtual {p4}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getMaxErrorRetry()I

    move-result p2

    iput p2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    :cond_1
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->innerClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;)Ljava/net/URI;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->service:Ljava/net/URI;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->checkCRC64(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;Ljava/util/List;)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->calcObjectCRCFromParts(Ljava/util/List;)J

    move-result-wide p0

    return-wide p0
.end method

.method private calcObjectCRCFromParts(Ljava/util/List;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/oss/model/PartETag;",
            ">;)J"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/sdk/android/oss/model/PartETag;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PartETag;->getCRC64()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PartETag;->getPartSize()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-gtz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PartETag;->getCRC64()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PartETag;->getPartSize()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->combine(JJJ)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    :goto_1
    return-wide v0

    :cond_2
    return-wide v2
.end method

.method private canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V
    .locals 5

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Date"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->currentFixedSkewedTimeInRFC822Format()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getMethod()Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    move-result-object v1

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->POST:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getMethod()Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    move-result-object v1

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->PUT:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    if-ne v1, v2, :cond_2

    :cond_1
    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getUploadFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getObjectKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->determineContentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->isHttpDnsEnable()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->checkIfHttpDnsAvailable(Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setHttpDnsEnable(Z)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setCredentialProvider(Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->isPathStyleAccessEnable()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setPathStyleAccessEnable(Z)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->isCustomPathPrefixEnable()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setCustomPathPrefixEnable(Z)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getIpWithHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIpWithHeader(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getCustomUserMark()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/common/utils/VersionInfoUtils;->getUserAgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Range"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v0

    const-string v2, "x-oss-process"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p1, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setCheckCRC64(Z)V

    :cond_4
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getCustomCnameExcludeList()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isInCustomCnameExcludeList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsInCustomCnameExcludeList(Z)V

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;->getCRC64()Ljava/lang/Enum;

    move-result-object v0

    sget-object v2, Lcom/alibaba/sdk/android/oss/model/OSSRequest$CRC64Config;->NULL:Lcom/alibaba/sdk/android/oss/model/OSSRequest$CRC64Config;

    if-eq v0, v2, :cond_5

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;->getCRC64()Ljava/lang/Enum;

    move-result-object p0

    sget-object v0, Lcom/alibaba/sdk/android/oss/model/OSSRequest$CRC64Config;->YES:Lcom/alibaba/sdk/android/oss/model/OSSRequest$CRC64Config;

    if-ne p0, v0, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->isCheckCRC64()Z

    move-result v1

    :cond_6
    :goto_0
    invoke-virtual {p1, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setCheckCRC64(Z)V

    if-eqz v1, :cond_7

    sget-object p0, Lcom/alibaba/sdk/android/oss/model/OSSRequest$CRC64Config;->YES:Lcom/alibaba/sdk/android/oss/model/OSSRequest$CRC64Config;

    goto :goto_1

    :cond_7
    sget-object p0, Lcom/alibaba/sdk/android/oss/model/OSSRequest$CRC64Config;->NO:Lcom/alibaba/sdk/android/oss/model/OSSRequest$CRC64Config;

    :goto_1
    invoke-virtual {p2, p0}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;->setCRC64(Ljava/lang/Enum;)V

    return-void
.end method

.method private checkCRC64(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Request:",
            "Lcom/alibaba/sdk/android/oss/model/OSSRequest;",
            "Result:",
            "Lcom/alibaba/sdk/android/oss/model/OSSResult;",
            ">(TRequest;TResult;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;->getCRC64()Ljava/lang/Enum;

    move-result-object p0

    sget-object p1, Lcom/alibaba/sdk/android/oss/model/OSSRequest$CRC64Config;->YES:Lcom/alibaba/sdk/android/oss/model/OSSRequest$CRC64Config;

    if-ne p0, p1, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/OSSResult;->getClientCRC()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/OSSResult;->getServerCRC()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/OSSResult;->getRequestId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->checkChecksum(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/sdk/android/oss/exception/InconsistentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/exception/InconsistentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method private checkCRC64(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Request:",
            "Lcom/alibaba/sdk/android/oss/model/OSSRequest;",
            "Result:",
            "Lcom/alibaba/sdk/android/oss/model/OSSResult;",
            ">(TRequest;TResult;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "TRequest;TResult;>;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->checkCRC64(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;)V

    if-eqz p3, :cond_0

    invoke-interface {p3, p1, p2}, Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;->onSuccess(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;)V
    :try_end_0
    .catch Lcom/alibaba/sdk/android/oss/ClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    invoke-interface {p3, p1, p0, p2}, Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;->onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private checkIfHttpDnsAvailable(Z)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string p1, "http.proxyHost"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getProxyHost()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object p1, p0

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method


# virtual methods
.method public abortMultipartUpload(Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->DELETE:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "uploadId"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_0
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$AbortMultipartUploadResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$AbortMultipartUploadResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public appendObject(Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->POST:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getUploadData()[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getUploadData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setUploadData([B)V

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getUploadFilePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getUploadFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setUploadFilePath(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getUploadUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getUploadUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setUploadUri(Landroid/net/Uri;)V

    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "append"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getPosition()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "position"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateRequestMetadata(Ljava/util/Map;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_3

    new-instance v2, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation$5;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation$5;-><init>(Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getProgressCallback()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$AppendObjectResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$AppendObjectResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public asyncTriggerCallback(Lcom/alibaba/sdk/android/oss/model/TriggerCallbackRequest;)Lcom/alibaba/sdk/android/oss/model/TriggerCallbackResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->triggerCallback(Lcom/alibaba/sdk/android/oss/model/TriggerCallbackRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/oss/model/TriggerCallbackResult;

    return-object p0
.end method

.method public completeMultipartUpload(Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->POST:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->getPartETags()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->buildXMLFromPartEtagList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setStringBody(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "uploadId"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->getCallbackParam()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->getCallbackParam()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateMapToBase64JsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "x-oss-callback"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->getCallbackVars()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->getCallbackVars()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateMapToBase64JsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "x-oss-callback-var"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateRequestMetadata(Ljava/util/Map;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_2

    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation$7;

    invoke-direct {p1, p0, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation$7;-><init>(Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    invoke-virtual {v1, p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_2
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$CompleteMultipartUploadResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$CompleteMultipartUploadResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public copyObject(Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->PUT:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;->getDestinationKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateCopyObjectHeaders(Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;Ljava/util/Map;)V

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_0
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$CopyObjectResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$CopyObjectResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public createBucket(Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;",
            "Lcom/alibaba/sdk/android/oss/model/CreateBucketResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/CreateBucketResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->PUT:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->getBucketACL()Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->getBucketACL()Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "x-oss-acl"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->getLocationConstraint()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "LocationConstraint"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->getLocationConstraint()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "StorageClass"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;->getBucketStorageClass()Lcom/alibaba/sdk/android/oss/model/StorageClass;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->createBucketRequestBodyMarshall(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_2

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_2
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$CreateBucketResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$CreateBucketResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public deleteBucket(Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->DELETE:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_0
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$DeleteBucketResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$DeleteBucketResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public deleteBucketLifecycle(Lcom/alibaba/sdk/android/oss/model/DeleteBucketLifecycleRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketLifecycleRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketLifecycleRequest;",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketLifecycleResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketLifecycleResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "lifecycle"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/DeleteBucketLifecycleRequest;->isAuthorizationRequired()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->DELETE:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/DeleteBucketLifecycleRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setParameters(Ljava/util/Map;)V

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_0
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$DeleteBucketLifecycleResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$DeleteBucketLifecycleResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public deleteBucketLogging(Lcom/alibaba/sdk/android/oss/model/DeleteBucketLoggingRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketLoggingRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketLoggingRequest;",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketLoggingResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketLoggingResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "logging"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/DeleteBucketLoggingRequest;->isAuthorizationRequired()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->DELETE:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/DeleteBucketLoggingRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setParameters(Ljava/util/Map;)V

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_0
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$DeleteBucketLoggingResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$DeleteBucketLoggingResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public deleteMultipleObject(Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "delete"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectRequest;->isAuthorizationRequired()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->POST:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setParameters(Ljava/util/Map;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectRequest;->getObjectKeys()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectRequest;->getQuiet()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->deleteMultipleObjectRequestBodyMarshall(Ljava/util/List;Z)[B

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Content-MD5"

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateBase64Md5([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Content-Length"

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_1

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_1
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$DeleteMultipleObjectResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$DeleteMultipleObjectResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public deleteObject(Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/DeleteObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteObjectResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->DELETE:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_0
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$DeleteObjectResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$DeleteObjectResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    return-object p0
.end method

.method public getBucketACL(Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "acl"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;->isAuthorizationRequired()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->GET:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setParameters(Ljava/util/Map;)V

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_0
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetBucketACLResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetBucketACLResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public getBucketInfo(Lcom/alibaba/sdk/android/oss/model/GetBucketInfoRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketInfoRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketInfoRequest;",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "bucketInfo"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetBucketInfoRequest;->isAuthorizationRequired()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->GET:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetBucketInfoRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setParameters(Ljava/util/Map;)V

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_0
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetBucketInfoResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetBucketInfoResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public getBucketLifecycle(Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleRequest;",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "lifecycle"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleRequest;->isAuthorizationRequired()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->GET:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setParameters(Ljava/util/Map;)V

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_0
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetBucketLifecycleResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetBucketLifecycleResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public getBucketLogging(Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingRequest;",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "logging"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingRequest;->isAuthorizationRequired()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->GET:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setParameters(Ljava/util/Map;)V

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_0
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetBucketLoggingResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetBucketLoggingResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public getBucketReferer(Lcom/alibaba/sdk/android/oss/model/GetBucketRefererRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketRefererRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketRefererRequest;",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketRefererResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketRefererResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "referer"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetBucketRefererRequest;->isAuthorizationRequired()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->GET:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetBucketRefererRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setParameters(Ljava/util/Map;)V

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_0
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetBucketRefererResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetBucketRefererResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public getConf()Lcom/alibaba/sdk/android/oss/ClientConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->conf:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    return-object p0
.end method

.method public getInnerClient()Lokhttp3/OkHttpClient;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->innerClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public getObject(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->GET:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->getRange()Lcom/alibaba/sdk/android/oss/model/Range;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->getRange()Lcom/alibaba/sdk/android/oss/model/Range;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/Range;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Range"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->getxOssProcess()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "x-oss-process"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->getxOssProcess()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_3

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->getProgressListener()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetObjectResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetObjectResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public getObjectACL(Lcom/alibaba/sdk/android/oss/model/GetObjectACLRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectACLRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectACLRequest;",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectACLResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectACLResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "acl"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectACLRequest;->isAuthorizationRequired()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->GET:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setParameters(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectACLRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectACLRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_0
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetObjectACLResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetObjectACLResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public getSymlink(Lcom/alibaba/sdk/android/oss/model/GetSymlinkRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/GetSymlinkRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/GetSymlinkRequest;",
            "Lcom/alibaba/sdk/android/oss/model/GetSymlinkResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/GetSymlinkResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "symlink"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->GET:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetSymlinkRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetSymlinkRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setParameters(Ljava/util/Map;)V

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_0
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetSymlinkResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$GetSymlinkResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public headObject(Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->HEAD:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_0
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$HeadObjectResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$HeadObjectResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public imageActionPersist(Lcom/alibaba/sdk/android/oss/model/ImagePersistRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ImagePersistRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ImagePersistRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ImagePersistResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/ImagePersistResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "x-oss-process"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->POST:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    iget-object v2, p1, Lcom/alibaba/sdk/android/oss/model/ImagePersistRequest;->mFromBucket:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alibaba/sdk/android/oss/model/ImagePersistRequest;->mFromObjectkey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setParameters(Ljava/util/Map;)V

    iget-object v1, p1, Lcom/alibaba/sdk/android/oss/model/ImagePersistRequest;->mToBucketName:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/sdk/android/oss/model/ImagePersistRequest;->mToObjectKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/sdk/android/oss/model/ImagePersistRequest;->mAction:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->buildImagePersistentBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setStringBody(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_0
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$ImagePersistResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$ImagePersistResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public initMultipartUpload(Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->POST:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "uploads"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p1, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;->isSequential:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "sequential"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateRequestMetadata(Ljava/util/Map;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_1

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_1
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$InitMultipartResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$InitMultipartResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public listBuckets(Lcom/alibaba/sdk/android/oss/model/ListBucketsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ListBucketsRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ListBucketsRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListBucketsRequest;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->GET:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->service:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setService(Ljava/net/URI;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateListBucketRequestParameters(Lcom/alibaba/sdk/android/oss/model/ListBucketsRequest;Ljava/util/Map;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_0
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$ListBucketResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$ListBucketResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public listMultipartUploads(Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->GET:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "uploads"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateListMultipartUploadsRequestParameters(Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;Ljava/util/Map;)V

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_0
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$ListMultipartUploadsResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$ListMultipartUploadsResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public listObjects(Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->GET:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateListObjectsRequestParameters(Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;Ljava/util/Map;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_0
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$ListObjectsResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$ListObjectsResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public listParts(Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ListPartsResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/ListPartsResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->GET:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "uploadId"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->getUploadId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->getMaxParts()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v3, v2

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const-wide/16 v8, 0x3e8

    const/4 v10, 0x1

    invoke-static/range {v3 .. v10}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->checkParamRange(JJZJZ)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v2

    const-string v3, "max-parts"

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MaxPartsOutOfRange: 1000"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->getPartNumberMarker()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v3, v2

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x2710

    const/4 v10, 0x1

    invoke-static/range {v3 .. v10}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->checkParamRange(JJZJZ)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v2

    const-string v3, "part-number-marker"

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PartNumberMarkerOutOfRange: 10000"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_4

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_4
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$ListPartsResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$ListPartsResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public putBucketLifecycle(Lcom/alibaba/sdk/android/oss/model/PutBucketLifecycleRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/PutBucketLifecycleRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/PutBucketLifecycleRequest;",
            "Lcom/alibaba/sdk/android/oss/model/PutBucketLifecycleResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/PutBucketLifecycleResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "lifecycle"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutBucketLifecycleRequest;->isAuthorizationRequired()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->PUT:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutBucketLifecycleRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setParameters(Ljava/util/Map;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutBucketLifecycleRequest;->getLifecycleRules()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->putBucketLifecycleRequestBodyMarshall(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_0
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$PutBucketLifecycleResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$PutBucketLifecycleResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public putBucketLogging(Lcom/alibaba/sdk/android/oss/model/PutBucketLoggingRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/PutBucketLoggingRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/PutBucketLoggingRequest;",
            "Lcom/alibaba/sdk/android/oss/model/PutBucketLoggingResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/PutBucketLoggingResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "logging"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutBucketLoggingRequest;->isAuthorizationRequired()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->PUT:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutBucketLoggingRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setParameters(Ljava/util/Map;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutBucketLoggingRequest;->getTargetBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutBucketLoggingRequest;->getTargetPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->putBucketLoggingRequestBodyMarshall(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_0
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$PutBucketLoggingResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$PutBucketLoggingResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public putBucketReferer(Lcom/alibaba/sdk/android/oss/model/PutBucketRefererRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/PutBucketRefererRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/PutBucketRefererRequest;",
            "Lcom/alibaba/sdk/android/oss/model/PutBucketRefererResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/PutBucketRefererResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "referer"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutBucketRefererRequest;->isAuthorizationRequired()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->PUT:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutBucketRefererRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setParameters(Ljava/util/Map;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutBucketRefererRequest;->getReferers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutBucketRefererRequest;->isAllowEmpty()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->putBucketRefererRequestBodyMarshall(Ljava/util/ArrayList;Z)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_0
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$PutBucketRefererResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$PutBucketRefererResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public putObject(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectResult;",
            ">;"
        }
    .end annotation

    const-string v0, " Internal putObject Start "

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->PUT:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getUploadData()[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getUploadData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setUploadData([B)V

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getUploadFilePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getUploadFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setUploadFilePath(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getUploadUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getUploadUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setUploadUri(Landroid/net/Uri;)V

    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getCallbackParam()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getCallbackParam()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateMapToBase64JsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "x-oss-callback"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getCallbackVars()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getCallbackVars()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateMapToBase64JsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "x-oss-callback-var"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v1, " populateRequestMetadata "

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateRequestMetadata(Ljava/util/Map;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    const-string v1, " canonicalizeRequestMessage "

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    const-string v1, " ExecutionContext "

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_5

    new-instance v2, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation$4;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation$4;-><init>(Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getRetryCallback()Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getRetryCallback()Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setRetryCallback(Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;)V

    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getProgressCallback()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$PutObjectResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$PutObjectResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    const-string p0, " call OSSRequestTask "

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public putSymlink(Lcom/alibaba/sdk/android/oss/model/PutSymlinkRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/PutSymlinkRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/PutSymlinkRequest;",
            "Lcom/alibaba/sdk/android/oss/model/PutSymlinkResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/PutSymlinkResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "symlink"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->PUT:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutSymlinkRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutSymlinkRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setParameters(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutSymlinkRequest;->getTargetObjectName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutSymlinkRequest;->getTargetObjectName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v3, "x-oss-symlink-target"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutSymlinkRequest;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateRequestMetadata(Ljava/util/Map;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_1

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_1
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$PutSymlinkResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$PutSymlinkResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public restoreObject(Lcom/alibaba/sdk/android/oss/model/RestoreObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/RestoreObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/RestoreObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/RestoreObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/RestoreObjectResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "restore"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->POST:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/RestoreObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/RestoreObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setParameters(Ljava/util/Map;)V

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_0
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$RestoreObjectResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$RestoreObjectResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public setCredentialProvider(Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->credentialProvider:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    return-void
.end method

.method public syncAppendObject(Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;)Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->appendObject(Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getCRC64()Ljava/lang/Enum;

    move-result-object v1

    sget-object v2, Lcom/alibaba/sdk/android/oss/model/OSSRequest$CRC64Config;->YES:Lcom/alibaba/sdk/android/oss/model/OSSRequest$CRC64Config;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getInitCRC64()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getInitCRC64()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;->getClientCRC()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;->getNextPosition()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->getPosition()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static/range {v2 .. v7}, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;->combine(JJJ)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;->setClientCRC(Ljava/lang/Long;)V

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->checkCRC64(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;)V

    return-object v0
.end method

.method public syncCompleteMultipartUpload(Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;)Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->completeMultipartUpload(Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;->getServerCRC()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->getPartETags()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->calcObjectCRCFromParts(Ljava/util/List;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;->setClientCRC(Ljava/lang/Long;)V

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->checkCRC64(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;)V

    return-object v0
.end method

.method public syncGetSymlink(Lcom/alibaba/sdk/android/oss/model/GetSymlinkRequest;)Lcom/alibaba/sdk/android/oss/model/GetSymlinkResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getSymlink(Lcom/alibaba/sdk/android/oss/model/GetSymlinkRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/oss/model/GetSymlinkResult;

    return-object p0
.end method

.method public syncPutObject(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;)Lcom/alibaba/sdk/android/oss/model/PutObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->putObject(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/PutObjectResult;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->checkCRC64(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;)V

    return-object v0
.end method

.method public syncPutSymlink(Lcom/alibaba/sdk/android/oss/model/PutSymlinkRequest;)Lcom/alibaba/sdk/android/oss/model/PutSymlinkResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->putSymlink(Lcom/alibaba/sdk/android/oss/model/PutSymlinkRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/oss/model/PutSymlinkResult;

    return-object p0
.end method

.method public syncRestoreObject(Lcom/alibaba/sdk/android/oss/model/RestoreObjectRequest;)Lcom/alibaba/sdk/android/oss/model/RestoreObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->restoreObject(Lcom/alibaba/sdk/android/oss/model/RestoreObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/oss/model/RestoreObjectResult;

    return-object p0
.end method

.method public syncUploadPart(Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;)Lcom/alibaba/sdk/android/oss/model/UploadPartResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->uploadPart(Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/UploadPartResult;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->checkCRC64(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;)V

    return-object v0
.end method

.method public triggerCallback(Lcom/alibaba/sdk/android/oss/model/TriggerCallbackRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/TriggerCallbackRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/TriggerCallbackRequest;",
            "Lcom/alibaba/sdk/android/oss/model/TriggerCallbackResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/TriggerCallbackResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "x-oss-process"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->POST:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/TriggerCallbackRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/TriggerCallbackRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setParameters(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/TriggerCallbackRequest;->getCallbackParam()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/TriggerCallbackRequest;->getCallbackVars()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->buildTriggerCallbackBody(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setStringBody(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateBase64Md5([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Content-MD5"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_0
    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$TriggerCallbackResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$TriggerCallbackResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public uploadPart(Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;",
            "Lcom/alibaba/sdk/android/oss/model/UploadPartResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/UploadPartResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->isAuthorizationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setIsAuthorizationRequired(Z)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->endpoint:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->PUT:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "uploadId"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getPartNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "partNumber"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getPartContent()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->setUploadData([B)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getMd5Digest()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Content-MD5"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getMd5Digest()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->canonicalizeRequestMessage(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v3}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    if-eqz p2, :cond_1

    new-instance v2, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation$6;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation$6;-><init>(Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setCompletedCallback(Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)V

    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getProgressCallback()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$UploadPartResponseParser;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$UploadPartResponseParser;-><init>()V

    new-instance p2, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->maxRetryCount:I

    invoke-direct {p2, v0, p1, v1, p0}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/internal/ResponseParser;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;I)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method
