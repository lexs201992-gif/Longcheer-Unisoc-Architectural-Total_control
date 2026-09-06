.class public Lcom/motorola/ccc/http/proxy/HttpProxyManager;
.super Ljava/lang/Object;
.source "HttpProxyManager.java"


# instance fields
.field final cm:Landroid/net/ConnectivityManager;

.field providers:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/motorola/ccc/http/proxy/provider/HttpProxyProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/ccc/http/proxy/HttpProxyManager;->cm:Landroid/net/ConnectivityManager;

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/motorola/ccc/http/proxy/HttpProxyManager;->providers:Ljava/util/Stack;

    new-instance p1, Lcom/motorola/ccc/http/proxy/provider/HttpProxyProviderFromSystemProperties;

    invoke-direct {p1}, Lcom/motorola/ccc/http/proxy/provider/HttpProxyProviderFromSystemProperties;-><init>()V

    invoke-virtual {p0, p1}, Lcom/motorola/ccc/http/proxy/HttpProxyManager;->addProvider(Lcom/motorola/ccc/http/proxy/provider/HttpProxyProvider;)V

    return-void
.end method

.method private static hasNetwork(Landroid/net/NetworkInfo;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isWifi(Landroid/net/ConnectivityManager;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/ccc/http/proxy/HttpProxyManager;->hasNetwork(Landroid/net/NetworkInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method


# virtual methods
.method public addProvider(Lcom/motorola/ccc/http/proxy/provider/HttpProxyProvider;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/ccc/http/proxy/HttpProxyManager;->providers:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getProxyHost()Lorg/apache/http/HttpHost;
    .locals 2

    iget-object v0, p0, Lcom/motorola/ccc/http/proxy/HttpProxyManager;->cm:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/motorola/ccc/http/proxy/HttpProxyManager;->isWifi(Landroid/net/ConnectivityManager;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/motorola/ccc/http/proxy/HttpProxyManager;->providers:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/ccc/http/proxy/provider/HttpProxyProvider;

    invoke-interface {v0}, Lcom/motorola/ccc/http/proxy/provider/HttpProxyProvider;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_2
    const-string p0, "HttpProxyManager"

    const-string v0, "Did not find proxy host and port"

    invoke-static {p0, v0}, Lcom/motorola/ccc/http/proxy/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
